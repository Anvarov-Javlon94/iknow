package com.example.validator.webrest;

import com.example.validator.domain.Result;
import com.example.validator.domain.Student;
import com.example.validator.service.MessageService;
import com.example.validator.service.ResultService;
import com.example.validator.service.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class MainController {

    private final MessageService messageService;
    private final StudentService studentService;
    private final ResultService resultService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getIndexPage(Model model){
        model.addAttribute("number", studentService.getAllStudent());
        return "index";
    }

    @PostMapping("/")
    public String getHomePage(Model model){
        model.addAttribute("number", studentService.getAllStudent());
        return "index";
    }

    @GetMapping("/student-list")
    public String studentList(Model model){
        model.addAttribute("students", studentService.resultMap(studentService.getAllStudent()));
        return "student-list";
    }

    @PostMapping("/cabinet")
    public String studentsCabinet(@RequestParam("id") Long id,Model model){
        Student studentById = studentService.getStudentById(id);
        if (studentService.studentAttributeToVerify(studentService.getStudentById(id))){
            model.addAttribute("students", studentById);
            return "profile-editor";
        } else {
            model.addAttribute("students", studentById);
            model.addAttribute("result", resultService.getResultById(id));
            return "cabinet";
        }
    }

    @PostMapping("/profile-after-register")
    public String pageAfterStudentRegistry(@RequestParam("id") Long id,@RequestParam("username") String username,@RequestParam("surname") String surname,@RequestParam("name") String name,@RequestParam("phone") String phone,Model model){

        if (studentService.verifyStudentPropertiesToEmpty(name,surname,phone)){
            model.addAttribute("error", "Fields cannot be empty");
            return "profile-editor";
        } else {
            Student student = studentService.studentProfileEditor(id,surname,username,name,phone);
            Result result = resultService.getResultById(id);
            model.addAttribute("result", result);
            model.addAttribute("students", student);
            return "cabinet";
        }

    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable("id") Long id){
        studentService.deleteStudentById(id);
    return "redirect:/student-list";
    }

    @GetMapping("/edit/{id}")
    public String editStudentPage(@PathVariable("id") Long id,Model model){
        model.addAttribute("students", studentService.getStudentById(id));
        return "student-result";
    }

    @PostMapping("/result-editor")
    public String editStudentResult(@RequestParam("id") Long id,@RequestParam("first") Integer first,@RequestParam("second") Integer second,@RequestParam("third") Integer third){
        studentService.studentResultEdit(id,first,second,third);
        return "redirect:/student-list";
    }

    @PostMapping("/add-message-for-admin")
    public String messageForAdmin(@RequestParam("message_name") String message_name,@RequestParam("message_phone") String message_phone,@RequestParam("message_subject") String message_subject,@RequestParam("message_text") String message_text){
        messageService.addMessageForAdmin(message_name,message_phone,message_text,message_subject);
        return "redirect:/ ";
    }

    @GetMapping("/get-all-message")
    public String getAllMessage(Model model){
         model.addAttribute("messages",messageService.getAllMessage());
         return "message-list";
    }

    @GetMapping("/processed-message/{id}")
    public String successMessages(@PathVariable("id") Long id){
        messageService.processedMessage(id);
        return "redirect:/get-all-message";
    }

    @PostMapping("/search-student")
    public String searchStudent(@RequestParam("student-name") String studentParam,Model model){
            model.addAttribute("students", studentService.studentAfterSearch(studentParam));
            return "student-list";
    }
}
