package com.finalProject.demo.service.product;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.demo.model.entity.product.Photo;
import com.finalProject.demo.repository.product.PhotoRepository;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class PhotoService {
	
	@Autowired
	PhotoRepository photoRespository;
	
	//add photo
	public void addPhoto(Photo photo) {
		photoRespository.save(photo);
	}

	public List<Photo> findAll(){return photoRespository.findAll();}

	public  Photo findById(Long id){
		Optional<Photo> byId = photoRespository.findById(id);
		return byId.orElse(null);
	}
	
	
	
}
