use Polyclinic;
alter table Diagnosis
modify column Treatment text;

alter table Doctor
add constraint doctor_post_fk
foreign key (PostId) references Post(PostId) on delete cascade;

alter table Doctor
add constraint doctor_speciality_fk
foreign key (SpecialityId) references Speciality(SpecialityId) on delete cascade;

alter table Reception
add constraint reception_doctor_fk
foreign key (DoctorId) references Doctor(DoctorId) on delete cascade;

alter table Reception
add constraint reception_patient_fk
foreign key (PatientId) references Patient(PatientId) on delete cascade;

alter table Reception
add constraint reception_diagnosis_fk
foreign key (DiagnosisId) references Diagnosis(DiagnosisId) on delete cascade;

--на случай удаления внешних ключей--

alter table Reception
drop foreign key reception_patient_fk;

alter table Reception
drop index reception_patient_fk;

