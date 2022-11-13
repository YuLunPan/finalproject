package com.finalProject.demo.service.Manager;


import com.finalProject.demo.model.entity.manager.Manager;
import com.finalProject.demo.model.entity.member.Member;
import com.finalProject.demo.repository.manager.ManagerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
@Transactional
public class ManagerService {

    @Autowired
    private ManagerRepository managerRepository;

    //找Email是否註冊過
    public Manager findEmail(String email) {
        return  managerRepository.findEmail(email);
    }

    //註冊新增至資料庫 修改資料至資料庫
    public Manager insert(Manager manager) {
        return  managerRepository.save(manager);
    }

    //輸入資料庫手機左邊補0
    public String leftPadding(String phone) {
        return String.format("%010d",phone);
    }

    public Manager findById(Long managerId) {
        Optional<Manager> optional =managerRepository.findById(managerId);
        return optional.orElse(null);

    }

    public Page<Manager> findByPage(Integer pageNumber){
        Pageable pgb = PageRequest.of(pageNumber-1, 10, Sort.Direction.ASC, "managerId");
        return managerRepository.findAll(pgb);
    }

    public void delete(Long id){
        managerRepository.deleteById(id);
    }
}
