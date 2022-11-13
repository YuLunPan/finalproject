package com.finalProject.demo.controller.back.productManagement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.finalProject.demo.model.entity.product.Photo;
import com.finalProject.demo.service.product.PhotoService;
import com.finalProject.demo.service.product.ProductService;

@Controller
public class postPhotoController {
    PhotoService photoService;
    ProductService productService;

    @Autowired
    public postPhotoController(PhotoService photoService, ProductService productService) {
        super();
        this.photoService = photoService;
        this.productService = productService;
    }

    //主要商品圖片 id為product.photo.photoId
    @GetMapping("getMainPic/{id}")
    public ResponseEntity<byte[]> getMainPic(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getMainProduct_pic();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        //要回傳的物件,headers , httpstatus回應(HttpStatus.OK=200)
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }

    //平拍圖片 id為product.photo.photoId
    @GetMapping("getFitPic/{id}")
    public ResponseEntity<byte[]> getFitPic(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getFit_pic();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }

    //PIC1  id為product.photo.photoId
    @GetMapping("getPic1/{id}")
    public ResponseEntity<byte[]> getPic1(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getPicOne();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }

    //PIC2  id為product.photo.photoId
    @GetMapping("getPic2/{id}")
    public ResponseEntity<byte[]> getPic2(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getPicTwo();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }

    //PIC3  id為product.photo.photoId
    @GetMapping("getPic3/{id}")
    public ResponseEntity<byte[]> getPic3(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getPicThree();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }

    //PIC4  id為product.photo.photoId
    @GetMapping("getPic4/{id}")
    public ResponseEntity<byte[]> getPic4(@PathVariable("id")Long id) {
        Photo pic = photoService.findById(id);
        byte[] photoFile = pic.getPicFour();
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.IMAGE_JPEG);//改變檔案contextType
        return new ResponseEntity<byte[]>(photoFile,headers, HttpStatus.OK);
    }




}
