package com.example.validator.service;

import com.example.validator.domain.Message;
import com.example.validator.repository.MessageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class MessageService {
    private final MessageRepository messageRepository;


    public void addMessageForAdmin(String message_name, String message_phone, String message_text, String message_subject) {
        Date date = new Date();
        Message message = new Message();
        message.setMessage_name(message_name);
        message.setMessage_phone(message_phone);
        message.setMessage_text(message_text);
        message.setMessage_subject(message_subject);
        message.setMessage_reg_date(date);
        messageRepository.save(message);
    }

    public List<Message> getAllMessage(){
        return messageRepository.findAll();
    }

    public void processedMessage(Long id) {
        messageRepository.deleteById(id);
    }
}
