package com.example.validator.repository;

import com.example.validator.domain.Result;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ResultRepository extends JpaRepository<Result, Long> {


        @Query(value = "SELECT  result_id, first_module, second_module, third_module FROM result WHERE student_id = :id " , nativeQuery = true)
        Result getResultByStudentId(@Param("id") Long id);

}
