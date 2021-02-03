package com.example.validator.webrest;

import com.example.validator.domain.Student;
import com.example.validator.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
//@RequestMapping("reg")
@RequiredArgsConstructor
public class RegistrationController {

    private final StudentService studentService;

    @GetMapping("/add-student-page")
    public String addStudentPage(){
        return "add-student";
    }


    @PostMapping("/add-student")
    public String addStudent(@RequestParam("password_verify") String password_verify,@ModelAttribute @Valid Student student,BindingResult errors, Model model){
        if (!errors.hasErrors() && !password_verify.isEmpty()) {
            if (!studentService.verifyUsernameFromDB(student.getUsername())) {
                if (studentService.passwordVerify(student.getPassword(), password_verify)) {
                    if (studentService.passwordVerifyLength(student.getPassword())) {
                        studentService.addStudent(student);
                        model.addAttribute("title", String.format("%s is added", student.getUsername()));
                        model.addAttribute("students", student);
                    } else {
                        model.addAttribute("error", "Password is so short");
                    }
                } else {
                    model.addAttribute("error", "Passwords are different");
                }
            } else {
                model.addAttribute("error", "This user is already exist");
            }
        } else {
            model.addAttribute("error", "Fields are not full");
        }
        return "add-student";
    }
}
