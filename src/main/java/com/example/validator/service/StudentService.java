package com.example.validator.service;

import com.example.validator.domain.Result;
import com.example.validator.domain.Role;
import com.example.validator.domain.Student;
import com.example.validator.repository.StudentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@RequiredArgsConstructor
public class StudentService implements UserDetailsService {


    private final StudentRepository studentRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public UserDetails loadUserByUsername(String student) throws UsernameNotFoundException {
        return studentRepository.findByUsername(student);
    }

    public void   addStudent(Student student){
        Date date = new Date();
        student.setPassword(passwordEncoder.encode(student.getPassword()));
        student.setActive(true);
        String user_image_path = "../static/user_image/mini.jpg";
        student.setPhoto(user_image_path);
        student.setName("default");
        student.setPhone_number("+9989");
        student.setSurname("default");
        student.setRoles(Collections.singleton(Role.USER));
        student.setStudentRegDate(date);
        student.getResults().add(new Result(0,0,0));
        studentRepository.save(student);
    }

    public boolean passwordVerify(String password, String password_verify){
        return password_verify.equals(password);
    }

    public boolean passwordVerifyLength(String password){
        return password.length() >= 8;
    }

    public List<Student> getAllStudent(){
        return studentRepository.findAll();
    }

    public Map<Student, Result> resultMap(List<Student> students){
        Map<Student, Result> resultMap = new TreeMap<>();
        for (Student student : students){
            resultMap.put(student, student.getResults().get(0));
        }
        return resultMap;
    }



    public Student getStudentById(Long id){
        return studentRepository.getOne(id);
    }

    public boolean studentAttributeToVerify(Student student){
       return  (student.getName().equals("default") || student.getSurname().equals("default") || student.getPhone_number().equals("+9989"));
    }

    public boolean verifyStudentPropertiesToEmpty(String name, String surname, String phone){
        return name.isEmpty() || surname.isEmpty() || phone.isEmpty();
    }


    public Student studentProfileEditor(Long id, String surname, String username, String name, String phone) {
        Student  student = studentRepository.getOne(id);
        student.setSurname(surname);
        student.setUsername(username);
        student.setName(name);
        student.setPhone_number(phone);
        studentRepository.save(student);
        return student;
    }

    public void deleteStudentById(Long id){
        studentRepository.deleteById(id);
    }

    public void studentResultEdit(Long id, Integer first, Integer second, Integer third){
        Student student = studentRepository.getOne(id);
        if (first != null){
            student.getResults().get(0).setFirst_module(first);
        }
        if (second != null){
            student.getResults().get(0).setSecond_module(second);
        }
        if (third != null && third<10){
            student.getResults().get(0).setThird_module(third);
        }
        studentRepository.save(student);
    }

    public Map<Student, Result> studentAfterSearch(String searchName){
        List<Student> students = studentRepository.findAll();
        Map<Student, Result> resultMap = new TreeMap<>();
        for (Student student : students){
            if (student.getName().toLowerCase(Locale.ROOT).contains(searchName) || student.getUsername().toLowerCase(Locale.ROOT).contains(searchName) || student.getSurname().toLowerCase(Locale.ROOT).contains(searchName)){
                resultMap.put(student, student.getResults().get(0));
            }
        }
        return resultMap;
    }
}
