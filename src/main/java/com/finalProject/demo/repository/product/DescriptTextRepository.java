package com.finalProject.demo.repository.product;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.finalProject.demo.model.entity.product.DescriptText;

public interface DescriptTextRepository extends JpaRepository<DescriptText, Long> {

    @Modifying
    @Query(value = "UPDATE Product_Descript SET text=:desc1 where descriptId=:descriptId1",nativeQuery = true)
    public void updateById(@Param("desc1")String text,@Param("descriptId1")Long id);
}
