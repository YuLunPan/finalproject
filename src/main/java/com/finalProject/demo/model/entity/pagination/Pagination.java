package com.finalProject.demo.model.entity.pagination;

import com.finalProject.demo.model.entity.product.Photo;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

//幫SQL VIEW表建一個Entity，在資料庫會中叫"系統檢視表"
@Entity
@Table(name = "Pagination")//這裡的name要等於SQL系統檢視表的name，view表有的欄位以下都要建立
public class Pagination {
    //名稱
    @Id
    @Column(name = "productName", nullable = false, columnDefinition = "nvarchar(50")
    private String name;

    //更新時間
    @UpdateTimestamp
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "updateTime")
    private Date updateTime;

    //價格
    @Column(nullable = false)
    private Integer price;

    //商品圖片
    @Lob
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "photoId")
    private Photo photo;

    //系列
    @Column(name = "series", nullable = false)
    private String series;


    //分類
    @Column(name = "category",nullable = false)
    private String category;

    //getter and setter

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


}
