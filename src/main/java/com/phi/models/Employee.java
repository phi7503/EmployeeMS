package com.phi.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Employee")
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int EmployeeId;

    @Column(name = "Name")
    private String Name;

    @Column(name = "Age")
    private int Age;

    @Column(name = "Gender")
    private int Gender;

    @Column(name = "Type")
    private int Type;

    @Column(name = "CreatedAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date CreatedAt;

    @Column(name = "UpdatedAt")
    @Temporal(TemporalType.TIMESTAMP)
    private Date UpdatedAt;

    @Column(name = "Status")
    private int Status;


}
