create extension if not exists pgcrypto;

update student set password = crypt(password, gen_salt('bf',8));