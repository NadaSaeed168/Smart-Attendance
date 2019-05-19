create database iWork

create table Companies(
email varchar(50) ,
primary key(email),
name0 varchar(50) ,
address0 varchar(50),
domain varchar(50),
type0 varchar(50),
vision varchar(50),
specialization varchar(50)
);
create table Company_Phones(
company varchar(50),
phone INT,
PRIMARY KEY(company, phone),
FOREIGN KEY(company) references Companies
on delete no action on update no action
);
create table Departments(
code INT,
company varchar(50),
primary key(code,company),
name0 varchar(50),
foreign key(company) references Companies 
on delete no action on update no action
)

create table Jobs(
title varchar(50),
department INT,
company varchar(50),
primary key(title,department,company),
short_description varchar (50),
detailed_description varchar(50),
min_experience INT,
salary  float,
deadline date,
no_of_vacancies INT,
working_hours float,
foreign key(department,company) references Departments
on delete no action on update no action
);

create table Questions(
number INT identity,
primary key(number),
question varchar(50),
answer varchar(50)
);

create table Job_has_Question(
job varchar(50),
department INT,
company varchar(50),
question int,
primary key(job,department,company,question),
foreign key(job,department,company) references Jobs
on delete no action on update no action,
foreign key (question) references Questions
on delete no action on update no action
);

create table Users(
username varchar(50),
primary key (username),
password0 varchar(50),
personal_email varchar(50),
birth_date date ,
years_of_experience INT,
first_name varchar(50),
middle_name varchar(50),
last_name varchar(50),
age AS (Year(current_timestamp)-Year(birth_date))
);

create table Jobs_For_Users
(
username varchar(50),
job varchar(50),
primary key(username, job),
foreign key (username) references Users
on delete no action on update no action
);

create table Job_Seekers(
username varchar(50),
primary key(username),
foreign key (username)references Users 
on delete no action on update cascade
);

create table Staff_Members(
username varchar(50),
primary key(username),
annual_leaves INT,
company_email varchar(50),
day_off varchar(50),
salary float,
job varchar(50),
department INT,
company varchar(50),
foreign key(username) references Users
on delete no action on update cascade,
foreign key(job,department,company) references Jobs
on delete no action on update no action,

);
create table Job_Seeker_apply_Job(
job varchar(50),
department INT,
company varchar(50),
job_seeker varchar(50),
primary key (job, department , company,job_seeker),
hr_response varchar(50),
manager_response varchar(50),
score INT,
foreign key(job,department,company) references Jobs
on delete no action on update no action ,
foreign key (job_seeker) references Job_Seekers
on delete no action on update no action,
);

create table Attendance_Records(
date0 date,
staff varchar(50),
primary key (date0,staff),
start_time time,
end_time time,
foreign key (staff) references Staff_Members
on delete no action on update no action
);
create table Emails(
serial_number INT primary key identity,
subject0 VARCHAR(50),
date0 datetime,
body varchar(50)
);
create table Staff_send_Email_Staff(
email_number INT,
recipient varchar(50),
sender varchar(50),
primary key (email_number, recipient,sender),
foreign key (email_number) references Emails 
on delete no action on update no action,
foreign key (recipient) references Staff_Members
on delete no action on update no action,
foreign key (sender) references Staff_Members
 on delete no action on update no action
);
create table HR_Employees
(
    username VARCHAR(50) PRIMARY KEY,
    FOREIGN KEY (username) REFERENCES Staff_Members
	on delete no action on update no action
)

create table Regular_Employees
(
    username VARCHAR(50) PRIMARY KEY,
    FOREIGN KEY (username) REFERENCES Staff_Members
	on delete no action on update no action
)

create table Managers
(
    username VARCHAR(50) PRIMARY KEY,
    type0 VARCHAR(50),
    FOREIGN KEY (username) REFERENCES Staff_Members 
	on delete no action on update no action
)

create TABLE Announcements
(
  date0 DATETIME,
  title VARCHAR(50),
  hr_employee VARCHAR(50),
  PRIMARY KEY(date0,title,hr_employee),
  type1 Varchar(50),
  description0 VARCHAR(100),
  FOREIGN KEY (hr_employee) REFERENCES HR_Employees
  on delete no action on update no action
)

create table Requests
(
start_date0 DATETIME ,
applicant VARCHAR(50),
PRIMARY KEY (start_date0,applicant),
end_date DATETIME,
request_date DATETIME,
total_days as ((end_date)-(start_date0)),
 hr_response VARCHAR(50),
 hr_employee VARCHAR(50),
 manager VARCHAR(50),
 manager_response varchar(50), 
 manager_reason varchar(50),
 FOREIGN KEY (applicant) REFERENCES Staff_Members
 on delete no action on update no action,
 FOREIGN KEY (hr_employee) REFERENCES HR_Employees
 on delete no action on update no action,
 FOREIGN KEY (manager) REFERENCES Managers
 on delete no action on update no action
)


create table Leave_Requests
(
    start_date0 DATETIME ,
    applicant Varchar(50),
	PRIMARY KEY(start_date0,applicant),
    type0 Varchar(50),
    FOREIGN KEY (start_date0,applicant) REFERENCES Requests
	on delete cascade on update cascade
)

create table Business_Trip_Requests
(
    start_date0 datetime,
    applicant varchar(50), 
	primary key (start_date0 , applicant),
    destination varchar(50),
    puropse varchar(50),
    FOREIGN KEY (start_date0,applicant) REFERENCES Requests
	on update cascade on delete cascade
)

create TABLE HR_Employee_apply_replace_Requests
(
    start_date0 DATETIME,
    applicant VARCHAR(50),
    PRIMARY KEY (start_date0 , applicant),
    hr_employee VARCHAR(50),
    replacement VARCHAR(50),
    FOREIGN KEY (start_date0,applicant) REFERENCES Requests
	on delete no action on update no action,
    FOREIGN KEY (hr_employee) REFERENCES HR_Employees
	on delete no action on update no action,
    FOREIGN KEY (replacement) REFERENCES HR_Employees
	on delete no action on update no action
)

create table Regular_Employee_apply_replace_Requests
(
    start_date0 DATETIME,
    applicant VARCHAR(50),
	PRIMARY KEY (start_date0 , applicant),
    reg_employee VARCHAR(50),
    replacement VARCHAR(50),
    FOREIGN KEY (start_date0,applicant) REFERENCES Requests
	on delete no action on update no action,
    FOREIGN KEY (reg_employee) REFERENCES Regular_Employees
	on delete no action on update no action,
    FOREIGN KEY (replacement) REFERENCES Regular_Employees
	on delete no action on update no action
)
create table Manager_Employee_apply_replace_Requests
(
    start_date0 DATETIME,
    applicant VARCHAR(50),
	PRIMARY KEY (start_date0 , applicant),
    manager VARCHAR(50),
    replacement VARCHAR(50),
    FOREIGN KEY (start_date0,applicant) REFERENCES Requests
	on delete no action on update no action,
    FOREIGN KEY (manager) REFERENCES Managers
	on delete no action on update no action,
    FOREIGN KEY (replacement) REFERENCES Managers
	on delete no action on update no action
)

create table Projects 
(

    name0 VARCHAR(50),
    company VARCHAR(50),
	PRIMARY KEY (name0,company),
    start_date0 DATETIME,
    end_date DATETIME,
    manager VARCHAR(50),
    FOREIGN KEY (company) REFERENCES Companies
	on delete no action on update no action,
    FOREIGN KEY (manager) REFERENCES Managers
	on delete no action on update no action


)
create table Managers_assign_Regular_Employee_Projects
(
project_name VARCHAR(50),
company Varchar(50),
regular_employee VARCHAR(50),
PRIMARY KEY (project_name,company,regular_employee),
manager VARCHAR(50),
FOREIGN KEY (project_name,company) REFERENCES Projects
on delete no action on update no action,
FOREIGN KEY (regular_employee) REFERENCES Regular_Employees
on delete no action on update no action,
FOREIGN KEY (manager) REFERENCES Managers
on delete no action on update no action
)

create table Tasks
(
    name0 Varchar(50),
    project VARCHAR(50),
    company Varchar(50),
	PRIMARY KEY(name0,project,company),
    deadline DATETIME,
    status0 VARCHAR(50),
    description0 VARCHAR(100),
    regular_employee VARCHAR(50),
    manager VARCHAR(50),
    FOREIGN KEY (project,company) REFERENCES Projects
	on delete no action on update no action,
    FOREIGN KEY (regular_employee) REFERENCES Regular_Employees
	on delete no action on update no action,
    FOREIGN KEY (manager) REFERENCES Managers
	on delete no action on update no action
)

create table Task_Comments
(
    comment Varchar(100) ,
    task_name Varchar(50), 
    project Varchar(50),
    company Varchar(50),
  
    PRIMARY KEY (task_name,project,company,comment),
    FOREIGN KEY (task_name,project,company) REFERENCES Tasks
	on delete no action on update no action

)
