create table result (
    result_id int8 generated by default as identity,
     first_module int4 default 0,
     second_module int4 default 0,
      third_module int4 default 0,
      student_id int8,
       primary key (result_id));

create table student (
    id int8 generated by default as identity,
    active boolean not null,
     name varchar(255),
       surname varchar(255),
        password varchar(255) not null,
         phone_number varchar(255),
          photo varchar(255),
            student_reg_date timestamp,
                username varchar(255) not null,
                     primary key (id));

create table student_role (
    student_id int8 not null,
     student_role varchar(255));

alter table if exists result add constraint result_to_student
    foreign key (student_id) references student;

alter table if exists student_role add constraint role_to_student
    foreign key (student_id) references student;

create table message (
    id int8 generated by default as identity,
     message_name varchar(255),
      message_phone varchar(255),
        message_subject varchar(255),
            message_text varchar(1000),
                message_reg_date timestamp,
        primary key (id));
