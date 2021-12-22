package com.exam.nguyenhoangson_exam_ead.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name ="products")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ProdId;

    private String ProdName;
    private String Description;
    private Date DateOfManf;
    private int Price;

    @OneToMany(mappedBy = "product")
    private List<Sale> sales;

    @PrePersist
    public void OnCreate(){
        DateOfManf = new Date();
    }
}
