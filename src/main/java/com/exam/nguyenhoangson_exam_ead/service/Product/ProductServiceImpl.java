package com.exam.nguyenhoangson_exam_ead.service.Product;

import com.exam.nguyenhoangson_exam_ead.entity.Product;
import com.exam.nguyenhoangson_exam_ead.repository.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    ProductRepo productRepo;

    @Override
    public List<Product> getAllProducts() {
        return productRepo.findAll();
    }
}
