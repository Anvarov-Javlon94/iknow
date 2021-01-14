    INSERT INTO student(
        active, name, surname, password, phone_number, photo, username,student_reg_date)
    VALUES (true, 'Javlon',  'Anvarov', '123', '1253', '../static/user_image/mini.jpg', 'javlon94','11-11-2020'),
           (true, 'Murod', 'Turaxujaev', '123', '1241', '../static/user_image/mini.jpg', 'murod94','11-11-2020'),
           (true, 'Sher',  'Qodirov', '123', '111', '../static/user_image/mini.jpg', 'shef96','11-11-2020');

    INSERT INTO student_role(
        student_id, student_role)
    VALUES
    (1,'ADMIN'),
    (2,'USER'),
    (3,'USER');

    INSERT INTO result(
        first_module, second_module, third_module, student_id)
    VALUES
    ( 5, 5, 5, 1),
    ( 3, 4, 4, 2),
    ( 4, 3, 3, 3);

    INSERT INTO message(message_name,message_phone,message_subject,message_text,message_reg_date)
    VALUES ('Guest1','1122','Warning','Please call me back','11-11-2020');