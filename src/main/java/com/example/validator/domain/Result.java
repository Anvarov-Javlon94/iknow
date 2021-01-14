package com.example.validator.domain;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Result {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long result_id;
    private int first_module = 0;
    private int second_module = 0;
    private int third_module = 0;

    public Result(int first_module, int second_module, int third_module) {
        this.first_module = first_module;
        this.second_module = second_module;
        this.third_module = third_module;
    }

    public Result(int first_module) {
        this.first_module = first_module;
    }


    public int compareTo(Student key) {

        return 0;
    }
}
