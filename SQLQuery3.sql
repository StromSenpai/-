use UchetRabotnikov1
create table Salary
(
IDSalary integer not null Primary key,
NameSalary varchar(3) not null
);
create table Work
(
IDWork integer not null primary key,
NameWork varchar(20) not null,
);
create table Rabotnik 
(
IDRabotnik integer not null Primary key,
FIORabotnik varchar(75) not null,
INN integer not null,
Place varchar(50) not null,
"Pensiner's ID" varchar(50) not null, 
IDSalary integer not null,
foreign key (IDSalary) references Salary (IDSalary),
IDWork integer not null,
foreign key (IDWork) references Work (IDWork)
);
create table Buhgalter
(
IDBuhg integer not null Primary key,
FIOBuhg varchar(75) not null,
IDRabotnik integer not null,
foreign key (IDRabotnik) references Rabotnik (IDRabotnik),
IDWork integer not null,
foreign key (IDWork) references Work (IDWork),
IDSalary integer not null,
foreign key (IDSalary) references Salary (IDSalary),
);

create table Predpriyatie
(
IDBuhg integer not null,
foreign key (IDBuhg) references Buhgalter (IDBuhg),
FIOBuhg varchar(75) not null,
IDRabotnik integer not null,
foreign key (IDRabotnik) references Rabotnik (IDRabotnik),
FIORabotnik varchar(75) not null,
IDWork integer not null,
foreign key (IDWork) references Work (IDWork),
IDSalary integer not null,
foreign key (IDSalary) references Salary (IDSalary),
);

