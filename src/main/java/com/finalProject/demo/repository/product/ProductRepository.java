package com.finalProject.demo.repository.product;

import com.finalProject.demo.model.entity.product.Products;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;
import java.util.Optional;
public interface ProductRepository extends JpaRepository<Products, String> {

	//模糊查詢
	List<Products> findByProductIdContaining(String productId);

	List<Products> findByName(String name);
	List<Products> findByCategory(String category);
	List<Products> findByProductState(String productState);
	public List<Products> findByCategoryOrderByProductIdDesc(String category);
	// public List<Products> findFirstByOrderByCreatTimesDesc();
	@Query(value = "TOP 1 * FROM Products WHERE productId=:productId3", nativeQuery = true)
	public Products findTopByProductId(@Param("productId3") String productId);

	//update product(不能改name & price)
	@Modifying
	@Query(value = "UPDATE Products SET productId=:productId1, size=:size1,color=:color1 ,productState=:state1 WHERE productId=:id1",nativeQuery = true)
	public void updateById(
			@Param("productId1")String newId,
			@Param("size1")String size,
			@Param("color1")String color,
			@Param("state1")String state,
			@Param("id1")String oldId
	);

	//UPDATE STATE by id
	@Modifying
	@Query(value = "UPDATE Products SET productState=:state2 WHERE productId=:id2",nativeQuery = true)
	public void updateStateById(
			@Param("state2")String state,
			@Param("id2")String id
	);


	/*
	for productdetail取尺寸、顏色用
	 */
	Optional<List<Products>> findBySeries(String series);

	Optional<List<Products>> findProductByCategory(String category);

	
	//update price  by series
	@Modifying
	@Query(value="UPDATE Products SET price=:price2 WHERE series=:series2",nativeQuery = true)
	public void updateSeriesPrice(@Param("price2")Integer price,@Param("series2")String series);
	
	
	//update name by series
	@Modifying
	@Query(value="UPDATE Products SET productName=:name3 WHERE series=:series3",nativeQuery = true)
	public void updateSeriesName(@Param("name3")String name,@Param("series3")String series);

	///shop-All 頁面 單一商品不會重複
	@Query(value="  select distinct productName, Max(UpdateTime) ,price,photoId, series from products Group by productName, price,photoId, series ORDER BY MAX(UpdateTime) DESC, productName  ", nativeQuery=true)
	public List<Map<String,Object>> distinctProduct();

	//Category 頁面  單一商品不會重複
	@Query(value="select distinct productName, Max(UpdateTime) ,price,photoId, series from products where category=:category1 Group by productName, price,photoId, series ORDER BY MAX(UpdateTime) DESC, productName", nativeQuery=true)
	public List<Map<String,Object>> distinctCatProduct(@Param("category1")String category);

	//shop-Detail 頁面 單一size不會重複
	@Query(value="select distinct size,series from products where series=:seriesForSize Group by size, series ORDER BY size DESC", nativeQuery=true)
	public List<Map<String,Object>> distinctSize(@Param("seriesForSize")String series);

	//shop-Detail 頁面 單一color不會重複
	@Query(value="select distinct color,productName,price,photoId, series from products where series=:seriesForColor Group by color,productName, price,photoId, series ORDER BY color DESC", nativeQuery=true)
	public List<Map<String,Object>> distinctColor(@Param("seriesForColor")String series);

	//Index Weekly best
	@Query(value=" select Top 8 productName , Sum(quantity),price, photoId,productId from OrderDetail  Group by productName,price,photoId,productId ORDER BY  Sum(Quantity) DESC ,productName ", nativeQuery=true)
	public List<Map<String,Object>> BestSelling();

	//Index Recommended Items
	@Query(value="select distinct Top 8 productName, Max(UpdateTime) ,price,photoId, productState,series from products WHERE productState='ON'  Group by productName, price,photoId, productState,series   ORDER BY MAX(UpdateTime) DESC, productName", nativeQuery=true)
	public List<Map<String,Object>> RecommendedItems();
	

}
