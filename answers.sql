--creating a database 
CREATE DATABASE hospital_db

--selecting hospital_db
USE hospital_db

--creating table patients
CREATE TABLE patients(
patient_id INT primary key auto_increment,
first_name varchar(255) not null,
last_name varchar(255) not null,
date_of_birth date not null,
gender varchar(255),
language varchar(255) not null
);

--creating table providers
CREATE TABLE providers(
provider_id INT primary key auto_increment,
first_name varchar(255) not null,
last_name varchar(255) not null,
provider_speciality varchar(255) not null,
email_address varchar(255),
phone_number varchar(255),
date_joined date not null
);

--creating table visits
CREATE TABLE visits(
visit_id INT primary key auto_increment,
patient_id int,
provider_id int,
provider_speciality varchar(255) not null,
date_of_visit date not null,
date_scheduled date not null,
visit_department_id int not null,
visit_type varchar(255) not null,
blood_pressure_systollic int,
blood_pressure_diastollic decimal,
pulse decimal,
visit_status varchar(255) not null
);

--creating table ed_visits
CREATE TABLE ed_visits(
ed_visits_id int primary key auto_increment,
visit_id int,
patient_id int,
acuity int not null,
reason_for_visit varchar(255) not null,
disposition varchar(255) not null
);

--creating table admissions
CREATE TABLE admissions(
admissions_id int primary key auto_increment,
patient_id int,
admission_date date not null,
discharge_date date not null,
discharge_disposition varchar(255) not null,
service varchar(255) not null,
primary_diagnosis varchar(255) not null
);

--creating table discharges
CREATE TABLE discharges(
discharge_id int primary key auto_increment,
admission_id int,
patient_id int,
discharge_date date not null,
discharge_disposition varchar(255) not null
);