create database Polyclinic;
use Polyclinic;
create table Patient
(
   PatientId int primary key auto_increment not null,
   FIO varchar(100) not null,
   DateBirth date,
   ContactNumber varchar(15) not null unique,
   DispAccounting boolean not null
);
create table Post
(
   PostId int primary key auto_increment not null,
   PostName varchar(100) not null
);
create table Speciality
(
   SpecialityId int primary key auto_increment not null,
   SpecialityName varchar(100) not null
);
create table Doctor
(
   DoctorId int primary key auto_increment not null,
   FIO varchar(100) not null,
   ContactNumber varchar(15) not null unique,
   PostId int not null,
   SpecialityId int not null
);
create table Diagnosis
(
   DiagnosisId int primary key auto_increment not null,
   DiagnosisName varchar(100) not null,
   Treatment varchar(500) 
);
create table Reception
(
   ReceptionId int primary key auto_increment not null,
   PatientId int not null,
   DoctorId int not null,
   DiagnosisId int not null,
   OutpatientTreatment boolean not null,
   Medical int not null,
   VisitDate date not null
);