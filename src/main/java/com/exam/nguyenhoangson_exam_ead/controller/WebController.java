package com.exam.nguyenhoangson_exam_ead.controller;

import com.exam.nguyenhoangson_exam_ead.service.Product.ProductService;
import com.exam.nguyenhoangson_exam_ead.service.Sale.SaleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebController {
    @Autowired
    SaleService saleService;

    @Autowired
    ProductService productService;

    @GetMapping("/product")
    public String getProduct(Model model){
        model.addAttribute("products", productService.getAllProducts());
        return "product";
    }

    @GetMapping("/sale")
    public String getSale(Model model){
        model.addAttribute("sales", saleService.getAllSales());
        return "sale";
    }
}
