package com.finalProject.demo.service.product;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.finalProject.demo.model.entity.product.DescriptText;
import com.finalProject.demo.repository.product.DescriptTextRepository;

@Service
@Transactional
public class DescriptTextService {
	@Autowired
	DescriptTextRepository descriptTextRepository;
	
	public DescriptText save(DescriptText descriptText) {
		return descriptTextRepository.save(descriptText);
	}

	public void updateById(Long id,String text){
		descriptTextRepository.updateById(text, id);
	}

}
