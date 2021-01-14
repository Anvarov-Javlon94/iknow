package com.example.validator.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@Entity
@Data
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Guest name cannot be empty")
    private String message_name;


    private String message_phone;


    private String message_subject;

    @NotBlank(message = "Guest message area cannot be empty")
    private String message_text;

    private Date message_reg_date;
}
