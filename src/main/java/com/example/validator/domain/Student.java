package com.example.validator.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student implements UserDetails, Comparable<Student> {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @NotBlank(message = "name cannot be empty")
    @Column(columnDefinition = "varchar(255) default 'Student'")
    private String name;


    @NotBlank(message = "surname cannot be empty")
    @Column(columnDefinition = "varchar(255) default 'Student'")
    private String surname;


    @Column(columnDefinition = "varchar(255) default '+9989'")
    private String phone_number;


    private String photo;


    @NotBlank(message = "Username cannot be empty")
    private String username;

    private Date studentRegDate;

    @NotBlank(message = "Password cannot be empty")
    private String password;


    private boolean active;


    @Column(name = "student_role")
    @ElementCollection(targetClass = Role.class, fetch = FetchType.EAGER)
    @CollectionTable(name = "student_role", joinColumns = @JoinColumn(name = "student_id"))
    @Enumerated(EnumType.STRING)
    private Set<Role> roles;



    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "student_id")
    private List<Result> results = new ArrayList<>();

    public boolean isAuthority(){
        boolean result = false;
        if (roles.contains(Role.USER)){
            result = true;
        }
        return result;
    }

    public boolean isAdmin(){
        return roles.contains(Role.ADMIN);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return roles;
    }



    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isActive();
    }


    @Override
    public int compareTo(Student o) {
        return 1;
    }
}
