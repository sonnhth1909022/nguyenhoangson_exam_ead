package com.exam.nguyenhoangson_exam_ead.repository;

import com.exam.nguyenhoangson_exam_ead.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepo extends JpaRepository<Product, Integer> {
}
