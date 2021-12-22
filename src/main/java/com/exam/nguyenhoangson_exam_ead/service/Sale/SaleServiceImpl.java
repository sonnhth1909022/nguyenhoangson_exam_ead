package com.exam.nguyenhoangson_exam_ead.service.Sale;

import com.exam.nguyenhoangson_exam_ead.entity.Sale;
import com.exam.nguyenhoangson_exam_ead.repository.SaleRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SaleServiceImpl implements SaleService{

    @Autowired
    SaleRepo saleRepo;

    @Override
    public List<Sale> getAllSales() {
        return saleRepo.findAll();
    }
}
