drop table marks;
drop table students;
drop table modules;
create table students ( student_no varchar(10) NOT NULL, surname varchar(20), forename varchar(20), PRIMARY KEY (student_no));
create table modules ( module_code varchar(8) NOT NULL, module_name varchar(30), PRIMARY KEY (module_code));
create table marks ( student_no varchar(10), module_code varchar(8), mark integer, FOREIGN KEY (student_no) REFERENCES students(student_no), FOREIGN KEY (module_code) REFERENCES modules(module_code));
insert into students values ('20060101','Dickens','Charles');
insert into students values ('20060102','ApGwilym','Dafydd');
insert into students values ('20060103','Zola','Emile');
insert into students values ('20060104','Mann','Thomas');
insert into students values ('20060105','Stevenson','Robert');
insert into modules values ('CM0001', 'Databases');
insert into modules values ('CM0002', 'Programming Languages');
insert into modules values ('CM0003', 'Operating Systems');
insert into modules values ('CM0004', 'Graphics');
insert into marks values ('20060101', 'CM0001', 80);
insert into marks values ('20060101', 'CM0002', 65);
insert into marks values ('20060101', 'CM0003', 50);
insert into marks values ('20060102', 'CM0001', 75);
insert into marks values ('20060102', 'CM0003', 45);
insert into marks values ('20060102', 'CM0004', 70);
insert into marks values ('20060103', 'CM0001', 60);
insert into marks values ('20060103', 'CM0002', 75);
insert into marks values ('20060103', 'CM0004', 60);
insert into marks values ('20060104', 'CM0001', 55);
insert into marks values ('20060104', 'CM0002', 40);
insert into marks values ('20060104', 'CM0003', 45);
insert into marks values ('20060105', 'CM0001', 55);
insert into marks values ('20060105', 'CM0002', 50);
insert into marks values ('20060105', 'CM0004', 65);
commit;