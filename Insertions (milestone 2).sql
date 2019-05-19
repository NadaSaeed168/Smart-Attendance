use iWork
--first company
insert into Companies(email,name0,address0,domain,type0,vision,specialization)
values('egyptrol@egyptrol.eg','egyptrol','Nasrcity','@egyptrol.eg','national','our vision is to be the best company in the world','Engineering Consults')
--second company
insert into Companies(email,name0,address0,domain,type0,vision,specialization)
values('bmw@bmw.du','BMW','Fifth_Settlement','@bmw.du','international','To become the leading Company for automotive','Cars')
--third company
insert into Companies(email,name0,address0,domain,type0,vision,specialization)
values('wepure@wepure.eg','We Pure','zaqazeq','@wepure.eg','national','clean drinking water','Purifying Water')
--phones
insert into Company_Phones(company,phone)
values('egyptrol@egyptrol.eg',16333)
insert into Company_Phones(company,phone)
values('egyptrol@egyptrol.eg',2259684)
insert into Company_Phones(company,phone)
values('bmw@bmw.du',19555)
insert into Company_Phones(company,phone)
values('wepure@wepure.eg',11400)
--departments comp1
insert into Departments(code,company,name0)
values(01,'egyptrol@egyptrol.eg','Human Resources')
insert into Departments(code,company,name0)
values(02,'egyptrol@egyptrol.eg','Public Resources')
insert into Departments(code,company,name0)
values(03,'egyptrol@egyptrol.eg','Marketing')

--departments comp2
insert into Departments(code,company,name0)
values(01,'bmw@bmw.du','Human Resources')
insert into Departments(code,company,name0)
values(02,'bmw@bmw.du','Public Resources')
insert into Departments(code,company,name0)
values(03,'bmw@bmw.du','Marketing')

--departments comp3
insert into Departments(code,company,name0)
values(01,'wepure@wepure.eg','Human Resources')
insert into Departments(code,company,name0)
values(02,'wepure@wepure.eg','Public Resources')
insert into Departments(code,company,name0)
values(03,'wepure@wepure.eg','Marketing')

--jobs
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 1,'wepure@wepure.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 1100 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 1,'bmw@bmw.du' , 'a hr employee for a certain department' , 'detdesc' , 2 , 1000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 1,'egyptrol@egyptrol.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 2,'egyptrol@egyptrol.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 2,'wepure@wepure.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 1100 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 2,'bmw@bmw.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 1000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 3,'egyptrol@egyptrol.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 3,'bmw@bmw.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('hr', 3,'wepure@wepure.eg' , 'a hr employee for a certain department' , 'detdesc' , 2 , 1100 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 1 , 'bmw@bmw.du' , 'a manager for a certain department' , 'detdesc' , 2 , 1000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 1 , 'egyptrol@egyptrol.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 1 , 'wepure@wepure.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 2 , 'bmw@bmw.du' , 'a manager for a certain department' , 'detdesc' , 2 , 1000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 2 , 'egyptrol@egyptrol.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 2 , 'wepure@wepure.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 3 , 'bmw@bmw.du' , 'a manager for a certain department' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 3 , 'egyptrol@egyptrol.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('manager' , 3 , 'wepure@wepure.eg' , 'a manager for a certain department' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 1 , 'bmw@bmw.du' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 3500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 1 , 'egyptrol@egyptrol.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 1 , 'wepure@wepure.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 4000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 2 , 'bmw@bmw.du' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 3500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 2 , 'egyptrol@egyptrol.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 2 , 'wepure@wepure.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 4000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 3 , 'bmw@bmw.du' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 2000 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 3 , 'egyptrol@egyptrol.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 2500 , '2017/5/3' , 2 , 5)
insert into Jobs (title, department, company , short_description, detailed_description, min_experience, salary, deadline,
no_of_vacancies, working_hours)
values ('regular' , 3 , 'wepure@wepure.eg' , 'a employee for a certain department doing projects' , 'detdesc' , 2 , 4000 , '2017/5/3' , 2 , 5)





--Questions
set identity_insert Questions on
insert into Questions(number , question, answer)
VALUES (01,'True or false:will you sleep at work ','false')
insert into Questions (number , question, answer)
VALUES (02,'True or false:will you do your job as required ','true')
insert into Questions (number , question, answer)
VALUES (03,'True or false:will you distract others at work','false')
insert into Questions (number , question, answer)
VALUES (04,'True or false:will you come on time everyday ','true') 

--job has questions

insert into Job_has_Question (job, department, company, question)
values ('manager' , 01 , 'egyptrol@egyptrol.eg',1)
insert into Job_has_Question (job, department, company, question)
values ('regular' , 02 , 'egyptrol@egyptrol.eg',1)

--users
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values ('nermin.ayman','n','nermin.ayman@gmail.com','1997-7-15',1,'nermin','ayman','mohsen')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('yasmin.ayman','y','yasmin.ayman@gmail.com','1989-7-15',7,'yasmin','ayman','mohsen')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.saeed','m','nada.saeed@gmail.com','1997-8-16',2,'nada','saeed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mohamed.saeed','s','mohamed.saeed@gmail.com','2001-9-18',0,'mohamed','saeed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ahmed.ayman','a','ahmed.ayman@gmail.com','1985-6-3',12,'ahmed','ayman','mohsen')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('rana.abdelazim','r','rana.abdelaizm@gmail.com','1996-10-31',12,'rana','elhussein','abdelazim')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('noura.marzouk','n','noura.marzouk@gmail.com','1997-7-17',12,'noura','ahmed','marzouk')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mariam.marzouk','m','mariam.marzouk@gmail.com','1995-3-24',12,'mariam','ahmed','marzouk')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ahmed.youssef','m','ahmed.youssef@gmail.com','1995-3-24',12,'ahmed','ahmed','youssef')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ahmed.mohamed','x','ahmed.mohamed@gmail.com','1996-3-24',12,'ahmed','ahmed','mohamed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mohamed.kamal','k','mohamed.kamal@gmail.com','1996-3-24',12,'moahamed','ahmed','kamal')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mohamed.abdallah','a','mohamed.kamal@gmail.com','1996-3-24',12,'moahamed','ahmed','abdallah')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('saeed.rageh','s','saeed.rageh@gmail.com','1996-3-24',12,'saeed','ahmed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('gehan.ahmed','a','mohamed.kamal@gmail.com','1996-3-24',12,'gehan','ahmed','ahmed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('fady.ahmed','a','fady.ahmed@gmail.com','1996-3-24',12,'fady','ahmed','ahmed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('rana.ahmed','r','rana.ahmed@gmail.com','1996-3-24',12,'rana','ahmed','ahmed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('rana.moahmed','r','rana.mohamed@gmail.com','1996-3-24',12,'rana','ahmed','mohamed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('moahmed.rageh','r','moahmed.rageh@gmail.com','1996-3-24',12,'mohamed','ahmed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.rageh','r','moahmed.rageh@gmail.com','1996-3-24',12,'nada','ahmed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ahmed.rageh','r','moahmed.rageh@gmail.com','1996-3-24',12,'ahmed','ahmed','rageh')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.m','r','moahmed.rageh@gmail.com','1996-3-24',12,'nada','ahmed','mohamed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hady.ahmed','r','hady.ahmed@gmail.com','1996-3-24',12,'hady','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hady.mohamed','r','moahmed.rageh@gmail.com','1996-3-24',12,'hady','ahmed','mohamed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mariam.ahmed','r','mariam.ahmed@gmail.com','1996-3-24',12,'mariam','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mariam.mohamed','r','mariam.mohamed@gmail.com','1996-3-24',12,'mariam','ahmed','mohamed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('emar.ahmed','r','emar.ahmed@gmail.com','1996-3-24',12,'emar','ahmed','ahmed')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('dana.ahmed','r','dana.ahmed@gmail.com','1996-3-24',12,'dana','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('dana.ibrahim','r','dana.ibrahim@gmail.com','1996-3-24',12,'dana','ahmed','ibrahim')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.ayman','r','nada.ayman@gmail.com','1996-3-24',12,'nada','ahmed','ayman')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hana.ahmed','r','hana.ahmed@gmail.com','1996-3-24',12,'hana','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hana.khaled','r','hana.khaled@gmail.com','1996-3-24',12,'hana','ahmed','khaled')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('verna.ahmed','r','verna.ahmed@gmail.com','1996-3-24',12,'verna','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ghada.ashraf','r','ghada.ashraf@gmail.com','1996-3-24',12,'ghada','ahmed','ashraf')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('heba.ayman','r','heba.ayman@gmail.com','1996-3-24',12,'heba','ahmed','ayman')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ian.lo','r','ian.lo@gmail.com','1996-3-24',12,'ian','ahmed','lo')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('gana.khaled','r','gana.khaled@gmail.com','1996-3-24',12,'gana','ahmed','khaled')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hajar.ahmed','r','hajar.ahmed@gmail.com','1996-3-24',12,'hajar','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('ahmed.hassan','r','ahmed.hassan@gmail.com','1996-3-24',12,'ahmed','ahmed','hassan')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hayat.ahmed','r','hayat.ahmed@gmail.com','1996-3-24',12,'hayat','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('khaled.sakr','r','khaled.sakr@gmail.com','1996-3-24',12,'khaled','ahmed','sakr')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('carine.abdelazim','r','carine.abdelazim@gmail.com','1996-3-24',12,'carine','ahmed','abdelazim')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mai.ahmed','r','mai.ahmed@gmail.com','1996-3-24',12,'mai','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('sherine.hassan','r','sherine.hassan@gmail.com','1996-3-24',12,'sherine','ahmed','hassan')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('hassan.ahmed','r','hassan.ahmed@gmail.com','1996-3-24',12,'hassan','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('tamer.sakr','r','tamer.sakr@gmail.com','1996-3-24',12,'tamer','ahmed','sakr')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mai.abdelazim','r','mai.abdelazim@gmail.com','1996-3-24',12,'mai','ahmed','abdelazim')

insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('sherif.ahmed','r','sherif.ahmed@gmail.com','1996-3-24',12,'sherif','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('sherif.hassan','r','sherif.hassan@gmail.com','1996-3-24',12,'sherif','ahmed','hassan')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.ahmed','r','nada.hassan.ahmed@gmail.com','1996-3-24',12,'hassan','ahmed','ahmed')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('nada.sakr','r','nada.sakr@gmail.com','1996-3-24',12,'tamer','ahmed','sakr')
insert into Users(username,password0,personal_email,birth_date,years_of_experience,first_name,middle_name,last_name)
values('mai.khaled','r','mai.khaled@gmail.com','1996-3-24',12,'mai','ahmed','khaled')

--user job
insert into Jobs_For_Users (username, job)
values ('mohamed.saeed','computer engineer')
--job seekers
insert into Job_Seekers (username)
values ('noura.marzouk')
insert into Job_Seekers(username)
values ('mariam.marzouk')

--staffmembers
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nermin.ayman' , 15 , 'nermin.ayman@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 02 , 'egyptrol@egyptrol.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ahmed.youssef' , 15 , 'ahmed.youssef@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 02 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.saeed'   ,  15 ,   'nada.saeed@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ahmed.mohamed'   ,  15 ,   'ahmed.mohamed@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 02 , 'egyptrol@egyptrol.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('moahmed.rageh' , 15 , 'moahmed.rageh@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 02, 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.rageh' , 15 , 'nada.rageh@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 02 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.m'   ,  15 ,   'nada.m@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 02 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ahmed.rageh'   ,  15 ,   'ahmed.rageh@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 02 , 'egyptrol@egyptrol.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hady.ahmed' , 15 , 'hady.ahmed@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 03, 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hady.mohamed' , 15 , 'hady.mohamed@egyptrol.eg'  , 'mon and fri' , 1500 , 'manager' , 3 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mariam.ahmed'   ,  15 ,   'mariam.ahmed@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 03 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mariam.mohamed'   ,  15 ,   'mariam.mohamed@egyptrol.du'  , 'tues and fri' , 2000 , 'hr' , 03 , 'egyptrol@egyptrol.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('yasmin.ayman' , 15 , 'yasmin.ayman@egyptrol.eg'  , 'sat and fri' , 1500 , 'regular' , 02 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('rana.ahmed' , 15 , 'rana.ahmed@egyptrol.eg'  , 'sat and fri' , 1500 , 'regular' , 02 , 'egyptrol@egyptrol.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('emar.ahmed' , 15 , 'emar.ahmed@egyptrol.eg'  , 'sat and fri' , 1500 , 'regular' , 03 , 'egyptrol@egyptrol.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mohamed.kamal'   ,  15 ,   'mohamed.kamal@bmw.du'  , 'mon and fri' , 1500 , 'hr' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ahmed.ayman' , 15 , 'ahmed.ayman@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mohamed.abdallah' , 15 , 'mohamed.abdallah@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('rana.abdelazim' , 15 , 'rana.abdelazim@bmw.du'  , 'thu and fri' , 2500 , 'regular' , 02, 'bmw@bmw.du')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('dana.ahmed'   ,  15 ,   'dana.ahmed@bmw.du'  , 'mon and fri' , 1500 , 'hr' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('dana.ibrahim'   ,  15 ,   'dana.ibrahim@bmw.du'  , 'mon and fri' , 1500 , 'hr' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.ayman' , 15 , 'nada.ayman@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hana.ahmed' , 15 , 'hana.ahmed@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 02 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hana.khaled' , 15 , 'hana.khaled@bmw.du'  , 'thu and fri' , 2500 , 'regular' , 02, 'bmw@bmw.du')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('verna.ahmed'   ,  15 ,   'verna.ahmed@bmw.du'  , 'mon and fri' , 1500 , 'hr' , 03 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ghada.ashraf'   ,  15 ,   'ghada.ashraf@bmw.du'  , 'mon and fri' , 1500 , 'hr' , 03 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('heba.ayman' , 15 , 'heba.ayman@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 03 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ian.lo' , 15 , 'ian.lo@bmw.du'  , 'sun and fri' , 1500 , 'manager' , 3 , 'bmw@bmw.du')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('gana.khaled' , 15 , 'gana.khaled@bmw.du'  , 'thu and fri' , 2500 , 'regular' , 03, 'bmw@bmw.du')


insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hajar.ahmed' , 15 , 'hajar.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('ahmed.hassan' , 15 , 'ahmed.hassan@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hayat.ahmed' , 15 , 'hayat.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('khaled.sakr' , 15 , 'khaled.sakr@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('carine.abdelazim' , 15 , 'carine.abdelazim@wepure.eg'  , 'thu and fri' , 2500 , 'regular' , 02, 'wepure@wepure.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('sherif.ahmed' , 15 , 'sherif.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('sherif.hassan' , 15 , 'sherif.hassan@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.ahmed' , 15 , 'nada.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 02, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('nada.sakr' , 15 , 'nada.sakr@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 02, 'wepure@wepure.eg')
--insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
--values ('carine.khaled' , 15 , 'carine.khaled@wepure.eg'  , 'thu and fri' , 2500 , 'regular' , 02, 'wepure@wepure.eg')

insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mai.ahmed' , 15 , 'mai.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 03, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('sherine.hassan' , 15 , 'sherine.hassan@wepure.eg'  , 'tue and fri' , 2500 , 'hr' , 03, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('hassan.ahmed' , 15 , 'hassan.ahmed@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 03, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('tamer.sakr' , 15 , 'tamer.sakr@wepure.eg'  , 'tue and fri' , 2500 , 'manager' , 03, 'wepure@wepure.eg')
insert into Staff_Members (username , annual_leaves, company_email, day_off, salary, job, department, company)
values ('mai.abdelazim' , 15 , 'mai.abdelazim@wepure.eg'  , 'thu and fri' , 2500 , 'regular' , 03, 'wepure@wepure.eg')

--applications
insert into Job_Seeker_apply_Job(job, department, company, job_seeker , hr_response, manager_response, score)
values('regular' , 3 , 'egyptrol@egyptrol.eg', 'noura.marzouk', 'accept','accept', 3 )

insert into Job_Seeker_apply_Job(job, department, company, job_seeker , hr_response, manager_response, score)
values('hr' , 2 , 'bmw@bmw.du', 'mariam.marzouk', 'accept','accept', 4 )

--attendance
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/20','yasmin.ayman','8:30:00','5:15:45')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/21','yasmin.ayman','8:20:00','5:00:00')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/22','yasmin.ayman','8:00:00','5:10:45')

insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/20','nermin.ayman','8:30:00','5:15:45')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/21','nermin.ayman','8:20:00','5:00:00')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/22','nermin.ayman','8:00:00','5:10:45')

insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/20','ahmed.ayman','8:30:00','5:15:45')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/21','ahmed.ayman','8:20:00','5:00:00')
insert into Attendance_Records (date0, staff , start_time, end_time)
values ('2017/5/22','ahmed.ayman','8:00:00','5:10:45')


--Emails

insert into Emails (subject0, date0, body)
values ('New project' , CURRENT_TIMESTAMP , 'A new project is created')
insert into Emails (subject0, date0, body)
values ('New task' , CURRENT_TIMESTAMP , 'You are assigned to a new task')


--staff send email staff
insert into Staff_send_Email_Staff (email_number, recipient , sender)
values (1,'yasmin.ayman','nermin.ayman')
insert into Staff_send_Email_Staff (email_number, recipient , sender)
values (2,'mohamed.kamal','rana.abdelazim')

--hr 

insert into HR_Employees (username)
values ('ahmed.hassan')
insert into HR_Employees (username)
values ('ahmed.mohamed')
insert into HR_Employees (username)
values ('ahmed.rageh')
insert into HR_Employees (username)
values ('dana.ahmed')
insert into HR_Employees (username)
values ('dana.ibrahim')
insert into HR_Employees (username)
values ('ghada.ashraf')
insert into HR_Employees (username)
values ('hajar.ahmed')
insert into HR_Employees (username)
values ('mai.ahmed')
insert into HR_Employees (username)
values ('mariam.ahmed')
insert into HR_Employees (username)
values ('mariam.mohamed')
insert into HR_Employees (username)
values ('mohamed.kamal')
insert into HR_Employees (username)
values ('nada.m')
insert into HR_Employees (username)
values ('nada.saeed')
insert into HR_Employees (username)
values ('sherif.ahmed')
insert into HR_Employees (username)
values ('sherif.hassan')
insert into HR_Employees (username)
values ('sherine.hassan')
insert into HR_Employees (username)
values ('verna.ahmed')

--regular employees
insert into Regular_Employees (username)
values ('yasmin.ayman')
insert into Regular_Employees (username)
values ('rana.abdelazim')
insert into Regular_Employees (username)
values ('rana.ahmed')
insert into Regular_Employees (username)
values ('mai.abdelazim')
insert into Regular_Employees (username)
values ('hana.khaled')
insert into Regular_Employees (username)
values ('gana.khaled')
insert into Regular_Employees (username)
values ('carine.abdelazim')
insert into Regular_Employees (username)
values ('emar.ahmed')

--managers
insert into Managers (username,type0)
values ('nermin.ayman' , 'HR manager')
insert into Managers (username,type0)
values ('ahmed.ayman' , 'PR manager')
insert into Managers (username,type0)
values ('ahmed.youssef' , 'HR manager')
insert into Managers (username,type0)
values ('hady.ahmed' , 'PR manager')
insert into Managers (username,type0)
values ('hady.mohamed' , 'PR manager')
insert into Managers (username,type0)
values ('hana.ahmed' , 'HR manager')
insert into Managers (username,type0)
values ('hassan.ahmed' , 'PR manager')
insert into Managers (username,type0)
values ('hayat.ahmed' , 'System and control manager')
insert into Managers (username,type0)
values ('heba.ayman' , 'PR manager')
insert into Managers (username,type0)
values ('ian.lo' , 'HR manager')
insert into Managers (username,type0)
values ('khaled.sakr' , 'Accounting manager')
insert into Managers (username,type0)
values ('moahmed.rageh' , 'PR manager')
insert into Managers (username,type0)
values ('mohamed.abdallah' , 'HR manager')
insert into Managers (username,type0)
values ('nada.ahmed' , 'Marketing manager')
insert into Managers (username,type0)
values ('nada.ayman' , 'HR manager')
insert into Managers (username,type0)
values ('nada.rageh' , 'HR manager')
insert into Managers (username,type0)
values ('nada.sakr' , 'HR manager')
insert into Managers (username,type0)
values ('tamer.sakr' , 'Accounting manager')

--Announcement
insert into Announcements (date0, title, hr_employee , type1, description0)
values (CURRENT_TIMESTAMP , 'Day off' ,'nada.saeed' , 'Moled el naby' ,'Vacation' )

insert into Announcements (date0, title, hr_employee , type1, description0)
values (CURRENT_TIMESTAMP , 'New years' ,'nada.saeed' , 'Happy new year' , 'Vacation')

--Requests

insert into Requests(start_date0 , applicant , end_date , request_date , hr_employee ,manager)
values ('5/20/2017 9:40:00 AM' , 'ahmed.ayman' , '5/25/2017 10:00:00 AM' , '4/29/2017 2:00:00 AM' , 'mohamed.kamal', 'nada.ayman')
insert into Requests(start_date0 , applicant , end_date , request_date , hr_employee ,manager)
values ('5/20/2017 9:40:00 AM' , 'nada.saeed' , '5/25/2017 10:00:00 AM' , '4/29/2017 2:00:00 AM' , 'mohamed.kamal', 'nada.ayman')
insert into Requests(start_date0 , applicant , end_date , request_date ,hr_response, hr_employee ,manager,manager_response)
values ('5/20/2017 9:40:00 AM' , 'rana.ahmed' , '5/25/2017 10:00:00 AM' , '4/29/2017 2:00:00 AM','accept' , 'ahmed.mohamed', 'nermin.ayman','accept')
insert into Requests(start_date0 , applicant , end_date , request_date , hr_employee ,manager)
values ('5/21/2017 9:40:00 AM' , 'rana.abdelazim' , '5/25/2017 10:00:00 AM' , '4/29/2017 2:00:00 AM' , 'mohamed.kamal', 'mohamed.abdallah')
insert into Requests(start_date0 , applicant , end_date , request_date , hr_employee ,manager)
values ('5/22/2017 9:00:00 AM' , 'yasmin.ayman' , '5/25/2017 10:00:00 AM' , '4/29/2017 2:00:00 AM' , 'mariam.ahmed', 'nermin.ayman')


--insert into Requests(start_date0 , applicant , end_date , request_date , hr_employee ,manager)
--values ('2017/5/22 9:00:00' , 'yasmin.ayman' , '2017/5/25 10:00:00' , '2017/4/29 2:00:00' , 'mohamed.saeed')

--Leave Request
insert into Leave_Requests (start_date0, applicant , type0)
values('2017/5/20 9:40:00' , 'rana.ahmed' , 'annual leave')
--insert into Leave_Requests values('2017/5/22 9:00:00' , 'yasmin.ayman' , 'annual leave')

--Business Request
insert into Business_Trip_Requests (start_date0, applicant , destination, puropse)
values('2017/5/20 9:40:00' , 'rana.abdelazim' , 'Canada' , 'represent')
--insert into Business_Trip_Requests values('2017/5/22 9:00:00' , 'yasmin.ayman' , 'Dubai' ,  'meeting')

--Reqular apply replace request
insert into Regular_Employee_apply_replace_Requests (start_date0, applicant , reg_employee, replacement)
values ('2017/5/20 9:40:00' ,'yasmin.ayman' , 'yasmin.ayman' , 'rana.ahmed')

--Manager apply replace request
insert into Manager_Employee_apply_replace_Requests (start_date0, applicant , manager, replacement)
values ('2017/5/20 9:40:00' , 'ahmed.ayman' , 'ahmed.ayman' ,'mohamed.abdallah')

--HR apply replace request
insert into HR_Employee_apply_replace_Requests (start_date0, applicant , hr_employee, replacement)
values ('2017/5/20 9:40:00' , 'nada.saeed' , 'nada.saeed' ,'dana.ibrahim')

--projects
insert into Projects(name0,company,start_date0,end_date,manager)
values('database','egyptrol@egyptrol.eg','2017-10-5','2017-11-5','nermin.ayman')
insert into Projects(name0,company,start_date0,end_date,manager)
values('dsd','bmw@bmw.du','2017-11-5','2017-12-5','ahmed.ayman')
insert into Projects(name0,company,start_date0,end_date,manager)
values('financial assurance','wepure@wepure.eg','2017-12-1','2017-12-15','hayat.ahmed')

--assign projects
insert into Managers_assign_Regular_Employee_Projects(project_name,company,regular_employee,manager)
values('database','egyptrol@egyptrol.eg','yasmin.ayman','nermin.ayman')
insert into Managers_assign_Regular_Employee_Projects(project_name,company,regular_employee,manager)
values('dsd','bmw@bmw.du','rana.abdelazim','ahmed.ayman')
insert into Managers_assign_Regular_Employee_Projects(project_name,company,regular_employee,manager)
values('database','egyptrol@egyptrol.eg','rana.ahmed','nermin.ayman')

--tasks
insert into Tasks(name0,project,company,deadline,status0,description0,regular_employee,manager)
values('insertions','database','egyptrol@egyptrol.eg','2017-11-3','fixed','insert the values','yasmin.ayman','nermin.ayman')
insert into Tasks(name0,project,company,deadline,status0,description0,regular_employee,manager)
values('design','dsd','bmw@bmw.du','2017-11-3','Open','design cars','rana.abdelazim','ahmed.ayman')
