package com.exam.nguyenhoangson_exam_ead.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name ="sales")
public class Sale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int SlNo;

    private String SalesManId;
    private int ProdId;
    private String SalesManName;
    private Date DOS;

    @ManyToOne
    @JoinColumn(name = "prodId", insertable = false, updatable = false)
    private Product product;

    @PrePersist
    public void OnCreate(){
        DOS = new Date();
    }
}
