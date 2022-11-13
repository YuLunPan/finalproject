package com.finalProject.demo.repository.pagination;

import com.finalProject.demo.model.entity.pagination.Pagination;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaginationRepository extends JpaRepository<Pagination, String> {

//把SQL VIEW表變成Page物件顯示於"Cat選單中"
    public Page<Pagination> findByCategory(String category, Pageable pageable);
}
