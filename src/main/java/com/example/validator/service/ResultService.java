package com.example.validator.service;

import com.example.validator.domain.Result;
import com.example.validator.repository.ResultRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ResultService {

    private final ResultRepository resultRepository;

    public Result getResultById(Long id) {
        return resultRepository.getOne(id);
    }


}
