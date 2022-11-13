package com.finalProject.demo.service.product;

import com.finalProject.demo.model.entity.pagination.Pagination;
import com.finalProject.demo.model.entity.product.Products;
import com.finalProject.demo.repository.pagination.PaginationRepository;
import com.finalProject.demo.repository.product.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Optional;

@Transactional
@Service
public class ShopService {

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private PaginationRepository paginationRepository;

    /*
     * find By productId
     */
    public Products findById(String productId) {
        Optional<Products> optional = productRepository.findById(productId);
        if (optional.isPresent()) {
            return optional.get();
        }
        return null;
    }

    /*
     * findAll products
     */
//    public List<Pagination> findAllProducts() {
//        return paginationRepository.findAll();
//    }

    /*
    for Index頁面Best Selling的Ajax
     */
    public List<Map<String, Object>> BestSelling() {
        List<Map<String, Object>> objList = productRepository.BestSelling();
        return objList;
    }

    /*
     * for Index頁面Recommended的Ajax(後臺status=on的商品視為推薦商品)
     */
    public List<Map<String, Object>> RecommendedItems() {
        List<Map<String, Object>> objList = productRepository.RecommendedItems();
        return objList;
    }

    /*
     * Products按頁數撈資料-for Shop頁面
     */
    public Page<Pagination> findByPage(Integer pageNumber) {
        Pageable pgb = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "updateTime");
        Page<Pagination> page = paginationRepository.findAll(pgb);
        return page;
    }

    /*
     for Shop頁面的Ajax
    */
//    public List<Map<String, Object>> distinctProduct() {
//        List<Map<String, Object>> objList = productRepository.distinctProduct();
//        return objList;
//    }


    /*
     * 設定按下商品分類可跳出相對應的商品且有分頁功能
     */
    public Page<Pagination> findByCategory(String category, Integer pageNumber) {
        Pageable pgb = PageRequest.of(pageNumber - 1, 12, Sort.Direction.DESC, "updateTime");
        Page<Pagination> objListCat = paginationRepository.findByCategory(category, pgb);
        return objListCat;
    }


    /*
     * 按分類找商品但沒pagination功能
     */
//    public List<Products> findProductByCategory(String category) {
//        Optional<List<Products>> catProductList = productRepository.findProductByCategory(category);
//        if (catProductList.isPresent()) {
//            return catProductList.get();
//        }
//        return null;
//    }

    /*
     * for ShopDetail頁面Size的Ajax
     */
    public List<Map<String, Object>> distinctSize(String series) {
        List<Map<String, Object>> objListSize = productRepository.distinctSize(series);
        return objListSize;
    }

    /*
     * for ShopDetail頁面Color的Ajax
     */
    public List<Map<String, Object>> distinctColor(String series) {
        List<Map<String, Object>> objListColor = productRepository.distinctColor(series);
        return objListColor;
    }

    /*
     * 找出product series才能連到product Detail頁面
     */
    public List<Products> findBySeries(String series) {
        Optional<List<Products>> productList = productRepository.findBySeries(series);
        if (productList.isPresent()) {
            return productList.get();
        }
        return null;
    }


}
