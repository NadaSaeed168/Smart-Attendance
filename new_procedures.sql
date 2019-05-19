go

alter procedure viewApplications
@username varchar(50)
as
select u.username , u.personal_email, u.years_of_experience , j.title , ja.score
from Job_Seeker_apply_Job ja inner join Managers m on m.username = @username
							 inner join Staff_Members s1 on m.username = s1.username
							 inner join Users u on ja.job_seeker = u.username
							 inner join Jobs j on ja.job = j.title and ja.department = j.department and ja.company = j.company
where ja.department = s1.department and ja.hr_response = 'accept'

go

go

alter proc creatingProjects
@username_m varchar(50) , @name0 varchar (50), @start_date0 datetime, @end_date datetime , @out varchar(50) output
as
if(@name0 = '' )
begin
set @out = 'Insert the missing parts'
end
else
begin
declare @company varchar(50)
select @company = company
from Managers m inner join Staff_Members s on m.username = s.username and m.username = @username_m
insert into Projects(name0,company,start_date0,end_date,manager)
values(@name0,@company,@start_date0,@end_date,@username_m)
set @out = 'Done'
end

go

go



alter proc changeRegularEmployeeForTask
@userame_m varchar(50) , @username_r varchar(50) , @username_orig varchar(50) , @task varchar(50) , @out varchar(50) output
as
if(@username_r = '' or @username_orig = '' or @task = '')
begin
set @out ='Insert the missing parts'
end
else
begin
declare @r_projectname varchar(50)
select @r_projectname= project_name from Managers_assign_Regular_Employee_Projects where regular_employee = @username_r

declare @o_projectname varchar(50)
select @o_projectname= project_name from Managers_assign_Regular_Employee_Projects where regular_employee = @username_orig

declare @company_r varchar(50)
select @company_r = company from Staff_Members s where s.username = @username_r

declare @company_orig varchar(50)
select @company_orig = company from Staff_Members s where s.username = @username_orig

update Tasks 
set regular_employee = @username_r ,  @out = 'Done'
where status0 = 'Assigned' 
and name0 = @task
and regular_employee =@username_orig 
and @username_r in (select username from Regular_Employees)
and @username_r in (select regular_employee from Managers_assign_Regular_Employee_Projects) 
and @r_projectname = @o_projectname
and manager = @userame_m

if(@out is null)begin
set @out = 'Not Valid Insertion'
end
end
go

go

alter proc removeRegularEmployee
@out varchar(50) output
as
delete from Managers_assign_Regular_Employee_Projects where regular_employee not in 
((select regular_employee from Tasks)) and project_name in (select project from Tasks)
set @out = 'Done'

go

go

alter proc assignRegularEmployeeToProject
@username_m varchar(50), @username_r varchar(50), @project_name varchar(50) , @out varchar(50) output
as
if((@username_m = '') or (@username_r = '') or (@project_name = ''))
begin 
set @out = 'Insert the missing parts'
end
else
begin
declare @company_name varchar(50)
select @company_name = p.company
from Projects p
where p.name0 = @project_name 

declare @reg_company varchar(50), @m_company varchar(50)
select @reg_company = s.company
from Staff_Members s inner join Regular_Employees r
on r.username = @username_r and s.username = r.username

select @m_company = s.company
from Staff_Members s inner join Managers m
on m.username = @username_m and s.username = m.username

declare @department_m varchar(50), @department_r varchar(50)

select @department_m = s.department
	 from Managers m inner join Staff_Members s on m.username = s.username
	 where m.username = @username_m

select @department_r = s.department
		from Regular_Employees r inner join Staff_Members s on r.username= s.username
		where r.username = @username_r
if((@department_m = @department_r) and (@company_name = @reg_company) and (@company_name = @m_company))
begin
insert into Managers_assign_Regular_Employee_Projects(project_name,company,regular_employee,manager)
values(@project_name,@m_company,@username_r,@username_m)
set @out = 'Done'
end
else
set @out = 'Wrong Department or Company'
end

go

go

alter proc defineTask
@username_m varchar(50) , @name0 varchar(50), @project varchar(50), @deadline datetime, @description0 varchar(50), @regular_employee varchar(50) , @out varchar(50) output
as 
declare @company varchar(50)
select @company = company from Managers m inner join Staff_Members s on m.username = s.username where m.username = @username_m

if(@project in (select name0 from Projects) 
and @username_m in (select s.username from Staff_Members s inner join Managers m on m.username = s.username where m.username = @username_m and s.company = @company)
and @company in (select company from Projects where name0 = @project)
and @company in (select company from Staff_Members where username = @regular_employee))
begin
insert into Tasks(name0, project, company , deadline, status0, description0,regular_employee,manager)
values(@name0,@project,@company,@deadline,'Open',@description0,@regular_employee,@username_m)
set @out = 'Done'
end
else
begin 
set @out = 'Invalid Insertions'
end

go

go

alter proc viewMyTask
@username_m varchar(50)
as 
select t.*
from Tasks t
where manager = @username_m

go

go

alter proc reviewTask
@username_m varchar(50), @name varchar(50) , @response varchar(50), @deadline datetime , @out varchar(50) output
as
if((@name = '') or (@response = '') or (@deadline = ''))
begin
set @out = 'Insert the missing parts'
end
else
begin
if(@name not in (select name0 from Tasks where manager = @username_m and status0 = 'fixed'))
begin
set @out = 'Invalid Task Name'
end
else
begin
if(@response = 'accept')
begin
update Tasks
set status0 = 'Closed'
where manager = @username_m and status0 = 'fixed' and name0 = @name
set @out = 'Done'
end
else
begin
if(@response = 'reject')
begin
update Tasks
set status0 = 'Assigned', deadline= @deadline 
where manager = @username_m and status0 = 'fixed' and name0 = @name
set @out = 'Done'
end
else begin set @out = 'The response must be accept or reject' end
end
end
end

go

go

alter proc respondToApplications 
@username_m varchar(50) , @username2_a varchar(50), @manager_response varchar(50) , @out varchar(50) output
as 
update Job_Seeker_apply_Job
set manager_response = @manager_response , @out = 'Done'
where hr_response = 'accept' and job_seeker = @username2_a 
and (department in (select s.department from Managers m inner join Staff_Members s on m.username = s.username where m.username = @username_m)) 
and (company in (select s.company from Managers m inner join Staff_Members s on m.username = s.username where company = s.company and m.username = @username_m))

if(@out is null)
begin
set @out = 'Invalid Applicant Name'
end

go

go

alter proc viewNewRequests
@username varchar(50)
as

select r.*
from Requests r inner join Managers m on r.manager = @username and m.username = @username
				inner join Staff_Members s1 on r.applicant = s1.username 
				inner join Staff_Members s2 on m.username = s2.username

where s1.department = s2.department and s1.company = s2.company and r.hr_response is not null

go

go

alter proc respondToRequests_Accept
@username_m varchar(50) ,@start_date0 datetime ,@applicant varchar(50), @manager_response varchar(50), @out varchar(50) output
as
if((@start_date0 = '') or (@applicant = ''))
begin
set @out = 'Insert the missing parts'
end
else
begin
if((@manager_response = '') or ((@manager_response != 'accept') and (@manager_response != 'reject')))
begin
set @out = 'The manager response must be either accept or reject'
end
else
begin
update Requests
set manager_response = @manager_response , manager_reason = 'null' , @out = 'Done'
from Requests r inner join Managers m on m.username = r.manager and m.username = @username_m
				inner join Staff_Members s on m.username = s.username
				inner join Staff_Members s1 on @applicant = r.applicant			
where s.department = s1.department and r.hr_response is null and r.start_date0 = @start_date0
	and s.company = s1.company
if(@out is null)
begin
set @out = 'Invalid Insertions'
end
end
end

go

go

alter proc respondToRequests_Reject
@username_m varchar(50) ,@start_date0 datetime ,@applicant varchar(50), @manager_response varchar(50), @manager_reason varchar(50) , @out varchar(50) output
as
if((@start_date0 = '') or (@applicant = '') or (@manager_reason = ''))
begin
set @out = 'Insert the missing parts'
end
else
begin
if((@manager_response = '') or ((@manager_response != 'accept') and (@manager_response != 'reject')))
begin
set @out = 'The manager response must be either accept or reject'
end
else
begin
update Requests
set manager_response = @manager_response , manager_reason = @manager_reason , @out = 'Done'
from Requests r inner join Managers m on m.username = r.manager and m.username = @username_m
				inner join Staff_Members s on m.username = s.username
				inner join Staff_Members s1 on @applicant = r.applicant			
where s.department = s1.department and r.hr_response is null and r.start_date0 = @start_date0
	and s.company = s1.company
if(@out is null)
begin
set @out = 'Invalid Insertions'
end
end
end

go

go

alter procedure viewInformationOfDepartmentinCompany 
@department varchar(50), @company varchar(50)
as 
select j.* , d.name0
from Departments d inner join Jobs j on j.department = d.code and j.company = d.company 
where d.code = @department and d.company = @company

go

go

alter proc displayCompanyWithDepartment 
@company varchar(50)
as
select c.* , d.code , d.name0
from Companies c inner join Departments d on d.company = c.email 
where c.email = @company

go 

go

go
alter Proc Check_In_staffmember
@username varchar(50), @smnull varchar(100) OUTPUT,@dayoff varchar(100) OUTPUT
as
if (@username is null)
begin
set @smnull= 'Must enter all values.';
end
else
begin
declare @day varchar(50);
set @day= DATENAME(WEEKDAY,CURRENT_TIMESTAMP);
if(@username in(
select s.username 
from Staff_members s inner join Users u on s.username = u.username inner join Staff_Members_day_off m on s.username = m.username
where @username=s.username and m.day_off<> @day and m.day_off<> 'Friday'))
begin
insert into Attendance_Records(date0,staff,start_time)
values (CURRENT_TIMESTAMP,@username,CURRENT_TIMESTAMP)
set @smnull= 'Done.';
end
else
set @dayoff= 'Its Your Dayoff.';
end
go 

--check out when leave
go
alter Proc Check_Out_staffmember
@username varchar(50), @smnull varchar(50) OUTPUT,@dayoff varchar(100) OUTPUT
as
if (@username is null)
	set @smnull= 'One Of The Inputs Is Null';
else
begin
declare @day varchar(50);
set @day= DATENAME(WEEKDAY,CURRENT_TIMESTAMP);
if(@username in(
select s.username 
from Staff_members s inner join Users u on s.username = u.username inner join Staff_Members_day_off m on s.username = m.username
where @username=s.username and m.day_off<> @day and m.day_off<> 'Friday'))
begin
update Attendance_Records 
set end_time=CURRENT_TIMESTAMP
where staff=@username
set @smnull= 'Done.'
end
else
set @dayoff= 'Its Your Dayoff.';
end
go
	

--view the Attendance_Records
go
alter Proc Check_Attendance_staffmember
@username varchar(50) , @startdate date, @enddate date,
@check_in datetime OUTPUT,
@check_out datetime OUTPUT,
@duration INT OUTPUT,
@missing_hours float OUTPUT
as
IF (@username is null or @startdate is null or @enddate is null)
PRINT 'Must Enter Name And Date'
ELSE
begin
if(@enddate>@startdate)
begin
Select @check_in = Ar.start_time
from Attendance_Records Ar
where Ar.staff=@username and Ar.date0 between @startdate and @enddate
PRINT @check_in

Select @check_out = Ar.end_time
from Attendance_Records Ar
where Ar.staff=@username and Ar.date0 between @startdate and @enddate
PRINT @check_out

set @duration=DATEDIFF(HH,@check_in,@check_out)
DECLARE @working_hours INT
select @working_hours = J.working_hours
from Staff_Members S inner join Jobs J on S.job=J.title and S.department=J.department and S.company=J.company
where S.username=@username

SET @missing_hours =DATEDIFF(HH,@working_hours,@duration)
PRINT @missing_hours
end
end
go

--Apply for leave request
go
alter proc leave_request
@start_date datetime, @applicant varchar(50),@end_date datetime,@type varchar(50),
@hr_employee varchar(50),@manager varchar(50),@ol varchar(100) output
--,@ol varchar(100) output,@al varchar(100) output,@smnull varchar(100) OUTPUT
--,@smnull varchar(100) output,@ol varchar(100) output,@al varchar(100) output
as
declare @overlap bit
set @overlap =1
if (exists
(select @overlap
from Requests r
where @start_date between r.start_date0 and r.end_date and @applicant=r.applicant))
set @overlap =0
if (@overlap=0)
set @ol='Can not apply for a request because there is an overlap';
else
begin
IF (@start_date =' 'or @applicant =' ' or @end_date =' ' or @hr_employee =' ' or @manager =' ')
--set @smnull=  
print'Must enter all values.';

ELSE
begin
declare @no_leaves int
declare @total int
select @no_leaves=s.annual_leaves
from Staff_Members s
where @applicant=s.username
select @total =r.total_days
from Requests r
where @applicant=r.applicant
set @total=(-1)*@total
if(@no_leaves<@total)
begin
print 'Can not apply for a request because exceeds the annual leaves'
end
--set @al= 

else
begin
if(@applicant in(Select m.username from Managers m))
begin
insert into Requests(start_date0,applicant,end_date,request_date,hr_response,hr_employee,manager,manager_response)
values(@start_date,@applicant,@end_date,current_timestamp,'Accept',@hr_employee,@manager,'Accept')
INSERT INTO Leave_Requests(start_date0,applicant,type0)
values (@start_date,@applicant,@type)
set @ol='';
end
else
begin
--set @smnull='Done.';
insert into Requests(start_date0,applicant,end_date,request_date,hr_employee,manager)
values(@start_date,@applicant,@end_date,CURRENT_TIMESTAMP,@hr_employee,@manager)
INSERT INTO Leave_Requests(start_date0,applicant,type0)
values (@start_date,@applicant,@type)
set @ol='';
end
end
end
end

go
--Apply for business trip request
go
alter PROC business_trip_request
@start_date date, @applicant varchar(50),@end_date date,@request_date date,
@hr_employee varchar(50),@manager varchar(50),@destination varchar(50),@purpose varchar(50),@ol varchar(100) OUTPUT
as
declare @overlap bit
set @overlap =1
if (exists
(select @overlap
from Requests r
where @start_date between r.start_date0 and r.end_date))
set @overlap =0
if (@overlap=0)
set @ol= 'Can not apply for a request because there is an overlap'
else
begin
IF (@start_date is null or @applicant is null or @destination is null or @purpose is null 
	or @end_date is null or @request_date is null or @hr_employee is null or @manager is null)
begin
PRINT 'Must Put All Inputs'
set @ol='';
end
ELSE
begin
if(@applicant in (Select m.username from Managers m))
begin
insert into Requests(start_date0,applicant,end_date,request_date,hr_employee,hr_response,manager,manager_response)
values(@start_date,@applicant,@end_date,@request_date,@hr_employee,'Accept',@manager,'Accept')
INSERT INTO Business_Trip_Requests(start_date0,applicant,destination,puropse)
values (@start_date,@applicant,@destination,@purpose)
set @ol='';
end
else
begin
insert into Requests(start_date0,applicant,end_date,request_date,hr_employee,manager)
values(@start_date,@applicant,@end_date,@request_date,@hr_employee,@manager)
INSERT INTO Business_Trip_Requests(start_date0,applicant,destination,puropse)
values (@start_date,@applicant,@destination,@purpose)
set @ol='';
end
end
end
go

--view all hr response and manager response for all my requests
go
alter proc status_of_all_my_requests 
@name varchar(50)
as
IF @name is Null
PRINT 'Must Enter Your Name'
ELSE
Begin
SELECT R.start_date0,R.hr_response,R.manager_response
from Requests R
where R.applicant=@name and R.hr_response is not null and R.manager_response is not null
end 
go


--delete request still in the review process
go
alter PROC delete_request1 
@name varchar(50),@startdate datetime,@smnull varchar(100) output
as
IF (@name is null or @startdate is null) 
set @smnull= 'Must Enter Your Date';
ELSE
	begin
		delete r
		from Requests r
		where (r.hr_response is null or r.manager_response is null) and @name=r.applicant and @startdate=r.start_date0
		
		delete l
		from Leave_Requests l
		where @name=l.applicant and @startdate=l.start_date0
		set @smnull='Done';
	end
go


--send emails to staff members in his company
go
alter proc send_email
@recipient varchar(50),@name varchar(50),@body varchar(50),@subject0 varchar(50),@smnull varchar(100) output,@c varchar(100) output
as
IF (@recipient is null or @name is null or @body is null)
set @smnull= 'Must Put all inputs'
ELSE
Begin
if(exists(
select s1.username
from Staff_members S1 inner join  Staff_members S2 on S1.company=S2.company
where @recipient=S1.username and @name=S2.username))
begin
set identity_insert Emails off
insert into Emails(subject0,date0,body)
values(@subject0,CURRENT_TIMESTAMP,@body)
set identity_insert Staff_send_Email_Staff off
INSERT INTO Staff_send_Email_Staff(recipient,sender)
values (@recipient,@name)
set @smnull='Done.';
end
else
set @c='You are not in same company'
end
go


--view mails
go
alter proc view_emails
@name varchar(50)
as
IF @name is null
PRINT 'Must Put all inputs'
ELSE
Begin
select E.*,Se.sender
from ((Staff_members S1 inner join Staff_send_Email_Staff Se on S1.username=Se.recipient) 
		inner join  Staff_members S2 on S2.username=Se.sender)inner join Emails E on Se.email_number=E.serial_number
where S1.company=S2.company and @name=Se.recipient
end
go

--reply to emails
go
alter proc reply_to_emails
@name varchar(50),@serialno1 INT,@body varchar(50),@subject0 varchar(50)
as
IF @name is null or @serialno1 is null
print 'Must Put all inputs';
ELSE
begin
set identity_insert Emails off
insert into Emails (subject0,date0,body)
values (@subject0,CURRENT_TIMESTAMP,@body)
declare @r varchar(50)
select @r=sender from Staff_send_Email_Staff where email_number=@serialno1
end
go

--view announcements
go
alter proc view_announcements
@name varchar(50)
as
if @name is null
print 'Must enter name'
else
begin
	declare @day date
	set @day =CURRENT_TIMESTAMP
	select a.*
from Announcements a inner join HR_Employees h on a.hr_employee = h.username
					 inner join Staff_Members s1 on h.username = s1.username
					 inner join Staff_Members s2 on @name = s2.username 
where s2.company = s1.company and A.date0 between DATEADD(day,-20,getdate()) and CURRENT_TIMESTAMP

end
go

go
alter procedure userLogin
@username varchar(50), @password varchar(50) , @user varchar(50) output , @output int output
as
if(exists(
select username = @username
from Users
where @username = username and @password = password0))
begin
if (exists
(select username = @username 
 from Job_Seekers
 where  @username = username ))
 begin
 set @user = 'Job Seeker'
 end
 if (exists
(select username = @username 
 from HR_Employees
 where  @username = username ))
 begin
 set @user = 'HR_Employee'
 end
 if (exists
(select username = @username 
 from Managers
 where  @username = username ))
 begin
 set @user = 'Manager'
 end
 if (exists
(select username = @username 
 from Regular_Employees
 where  @username = username ))
 begin
 set @user = 'Regular Employee'
 end
 set @output = 1
 end
 else
 set @output = 0
 
go

alter proc highest_average_salary
AS
select  c.name0 as 'Company',avg(j.salary) as 'Average Salary' 
from jobs j inner join Companies c 
on j.company=c.email
GROUP by c.name0
order by avg(j.salary) desc

--HR Queries
 GO
alter proc addJob
@username varchar(50), @title varchar(50) , @short_description varchar (50), @detailed_description varchar(50),
@min_experience INT, @salary  float, @deadline date, @no_of_vacancies INT,@working_hours float, @output int output
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where username = @username
if(@title like 'Manager - %' or @title = 'HR employee - %' or @title = 'Regular Employee - %')
begin
insert into Jobs(title, department, company, short_description, detailed_description
,min_experience , salary , deadline , no_of_vacancies ,working_hours)
values(@title, @deptno, @company, @short_description, @detailed_description
,@min_experience , @salary , @deadline , @no_of_vacancies ,@working_hours )
set @output  = 1
end 
else
set @output  = 0
GO

GO
alter proc newJobQuestions
@username varchar(50), @title varchar(50), @question varchar(50) , @answer varchar(50) , @output int output
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where username = @username
insert into Questions values(@question , @answer)
declare @quesNo int 
select @quesNo = number 
from Questions
where @question = question and @answer = answer
if(@quesNo is not null)
begin
insert into Job_has_Question values (@title , @deptno , @company , @quesNo)
set @output = 1
end 
else set @output = 0
GO


GO 
alter proc viewJob
@username varchar(50) , @title varchar(50)
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where username = @username
select *
from Jobs
where title = @title and department = @deptno and company = @company
GO


GO
alter proc editJob
@username varchar(50) ,  @title varchar(50) , @short_description varchar (50) = null, @detailed_description varchar(50) = null,
@min_experience INT = null, @salary float = null, @deadline date = null, @no_of_vacancies INT = null,
@working_hours float = null
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where username = @username
if(@short_description is  not null)
update Jobs
set short_description = @short_description
where title = @title and department = @deptno and company = @company
if(@detailed_description is  not null)
update Jobs
set detailed_description = @detailed_description
where title = @title and department = @deptno and company = @company
if(@working_hours is  not null)
update Jobs
set working_hours = @working_hours
where title = @title and department = @deptno and company = @company
if(@salary is  not null)
update Jobs
set salary = @salary
where title = @title and department = @deptno and company = @company
if(@deadline is  not null)
update Jobs
set deadline = @deadline
where title = @title and department = @deptno and company = @company
if(@no_of_vacancies is  not null)
update Jobs
set no_of_vacancies = no_of_vacancies
where title = @title and department = @deptno and company = @company
if(@min_experience is  not null)
update Jobs
set min_experience = @min_experience
where title = @title and department = @deptno and company = @company
GO


GO
alter proc myDepJobs
@username varchar(50)
as
declare @deptno int
declare @comp varchar(50)
select @deptno = department , @comp = company 
from Staff_members
where @username = username
select *
from Jobs
where @deptno = department and @comp = company 
GO


GO
alter proc viewNewApplication
@username varchar(50) ,@title varchar(50)
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where h.username = @username
select a.job , a.job_seeker , a.score , u.first_name , u.middle_name , u.last_name , u.birth_date , u.age 
		, u.personal_email , u.years_of_experience
from Job_Seeker_apply_Job a inner join Users u 
on a.job = @title and a.job_seeker=u.username
inner join Job_Seekers js
on a.job_seeker = js.username
where a.department = @deptno and a.company = @company and a.job_seeker = js.username 
GO



GO
alter proc jobHrResponse
@username varchar(50) ,@title varchar(50) , @job_seeker varchar(50) , @response varchar(50)
as
declare @deptno int
declare @company varchar(50)
select @deptno = h.department , @company = h.company
from Staff_Members h
where h.username = @username
update Job_Seeker_apply_Job
set hr_response = @response
where @title = job and @job_seeker = job_seeker and @deptno = department and @company = company
GO

GO
alter proc postAnnouncement
@username varchar(50),@title VARCHAR(50), @type1 Varchar(50), @description0 VARCHAR(100)
as 
declare @date datetime
set @date = CURRENT_TIMESTAMP
insert into Announcements values(@date , @title ,  @username , @type1  , @description0)
GO

GO
alter proc viewRequests
@username varchar(50) ,@start_date datetime , @applicant varchar(50)
as
declare @managerResponse varchar(50)
select @managerResponse = manager_response
from Requests
where hr_employee = @username and start_date0 = @start_date and applicant = @applicant
if(@managerResponse is null or @managerResponse = 'reject')
print ('Can not view Request')
else
begin
print('ok')
select *
from Requests
where hr_employee = @username and start_date0 = @start_date and applicant = @applicant
end
GO

GO
alter proc viewBusinessRequest
@username varchar(50)
as
declare @managerResponse varchar(50)
select @managerResponse = manager_response
from Requests
where hr_employee = @username 
if(@managerResponse is null or @managerResponse = 'reject')
print ('Can not view Request')
else
begin
print('ok')
select r.applicant , r.start_date0 , r.end_date , r.request_date , r.total_days , b.destination , b.puropse
from Requests r inner join Business_Trip_Requests b
on b.applicant = r.applicant and b.start_date0 = r.start_date0
where r.hr_employee = @username 
end
GO

GO
alter proc viewLeaveRequest
@username varchar(50)
as
declare @managerResponse varchar(50)
select @managerResponse = manager_response
from Requests
where hr_employee = @username 
if(@managerResponse is null or @managerResponse = 'reject')
print ('Can not view Request')
else
begin
print('ok')
select r.applicant , r.start_date0 , r.end_date , r.request_date , r.total_days , l.type0
from Requests r inner join Leave_Requests l
on l.applicant = r.applicant and l.start_date0 = r.start_date0
where r.hr_employee = @username 
end
GO

GO
alter proc requestResponse
@username varchar(50) , @start_date0 datetime , @applicant varchar(50) , @response varchar(50)
as
update Requests
set hr_response = @response
where hr_employee = @username and start_date0 = @start_date0 and applicant = @applicant
declare @end datetime
declare @start datetime
select @end = end_date , @start = start_date0
from Requests
where hr_employee = @username and manager = 'accept'
if(@response = 'accept' )
declare @deptno int
declare @comp varchar(50)
select @deptno = department , @comp = company
from Staff_Members
where username = @username
update Staff_Members
set annual_leaves = annual_leaves - DATEDIFF(DD , @end , @start)
where  department = @deptno and username = @applicant
GO

GO
alter proc myDepEmp
@username varchar(50)
as
declare @deptnoHR int
declare @comHR varchar(50)
select @deptnoHR = department , @comHR = company
from Staff_Members
where username = @username
select username
from Staff_Members
where @deptnoHR = department and @comHR = company
GO


GO
alter proc viewAttendance
@usernameHR varchar(50), @usernameEmployee varchar(50) , @start datetime , @end datetime
as
declare @deptnoHR int
declare @comHR varchar(50)
select @deptnoHR = department , @comHR = company
from Staff_Members
where username = @usernameHR
declare @deptnoEmp int
declare @comEmp varchar(50) 
select @deptnoEmp = department , @comEmp = company
from Staff_Members
where username = @usernameEmployee
if(@deptnoHR = @deptnoEmp)
begin
select *
from Attendance_Records
where staff = @usernameEmployee
end 
else
print('Can not view attendance records')
GO


GO
alter proc employeeHours
@usernameHR varchar(50), @usernameEmployee varchar(50) , @year datetime
as
declare @deptnoHR int
declare @comHR varchar(50) 
select @deptnoHR = department , @comHR = company
from Staff_Members
where username = @usernameHR
declare @deptnoEmp int
declare @comEmp  varchar(50) 
select @deptnoEmp = department , @comEmp = company
from Staff_Members
where username = @usernameEmployee
if(@deptnoEmp = @deptnoHR)
begin
select staff,MONTH(date0) as 'month', sum(DATEDIFF(HH, Attendance_Records.start_time ,Attendance_Records.end_time)) as 'Total Hours'
from Attendance_Records
where staff = @usernameEmployee and Year(date0)=year(@year)
group by MONTH(date0) , staff
end
GO



GO
alter proc employeeHours
@usernameHR varchar(50), @usernameEmployee varchar(50) , @year datetime
as
declare @deptnoHR int
declare @comHR varchar(50) 
select @deptnoHR = department , @comHR = company
from Staff_Members
where username = @usernameHR
declare @deptnoEmp int
declare @comEmp  varchar(50) 
select @deptnoEmp = department , @comEmp = company
from Staff_Members
where username = @usernameEmployee
if(@deptnoEmp = @deptnoHR)
begin
select staff,MONTH(date0) as 'month', sum(DATEDIFF(HH, Attendance_Records.start_time ,Attendance_Records.end_time)) as 'Total Hours'
from Attendance_Records
where staff = @usernameEmployee and Year(date0)=year(@year)
group by MONTH(date0) , staff
end
GO





GO
alter proc bestEmployees
@username varchar(50) ,  @date date
as
declare @deptnoHR int
declare @comHR varchar(50) 
select @deptnoHR = department , @comHR = company
from Staff_Members
where username = @username
declare @employee varchar(50)
select top 3 a.staff
from Attendance_Records a
inner join Tasks t1
on a.staff = t1.regular_employee
where Month(@date)=Month(t1.deadline) and t1.status0='fixed'and exists
(
select a1.staff,MONTH(date0) as 'month', sum(DATEDIFF(HH, a1.start_time ,a1.end_time)) as 'Total Hours'
from Attendance_Records a1
where Year(date0)=year(@date) and a.staff = a1.staff
group by MONTH(date0) , a1.staff
)
GO

---------------Regular Employee-------------------------
--view my projects
go
alter proc view_my_projects
@username varchar(50)
as
if @username is null 
Print 'Must Enter Username'
else
begin
select Mp.regular_employee,P.*
from Managers_assign_Regular_Employee_Projects Mp inner join Projects P on P.name0=Mp.project_name and Mp.company=P.company
where @username=Mp.regular_employee 
end
go

--view tasks of certain project
go
alter proc view_task_my_projects
@username varchar(50),@project varchar(50)
as
if @username is null and @project is null
Print 'Must Enter Username and Project Name'
else
begin
    select T.*
    from Tasks T 
    where T.regular_employee=@username and T.project=@project
end
go

--change status
go
alter proc change_task_status
@username varchar(50),@task_name varchar(50),@x int OUTPUT
as
if @username is null and @task_name is null
print 'Must Enter Username And Task Name'
else
begin
IF(exists (select * from Tasks where regular_employee=@username and manager is null))
begin
    declare @sub datetime
    set @sub=CURRENT_TIMESTAMP
    update Tasks
    set status0='Fixed'
    where @sub <=(select T.deadline
    from Tasks T 
    where T.name0= @task_name and T.regular_employee=@username)
    set @x=1
    END
    ELSE
    set @x=0;
end
go

--change status to assign
go
ALTER proc change_task_status_to_assigned
@username varchar(50),@task_name varchar(50) , @x int OUTPUT
as
if @username is null and @task_name is null
print 'Must Enter Username And Task Name'
else
begin
IF(exists (select * from Tasks where regular_employee=@username and manager is null))
begin
    declare @sub datetime
    set @sub=CURRENT_TIMESTAMP
    update Tasks
    set status0='Assigned'
    where @sub <=(select T.deadline
    from Tasks T
    where T.name0= @task_name and T.regular_employee=@username and T.status0 ='Fixed' and T.manager is null)
    set @x=1
    END
    ELSE
    set @x=0;
end
go

GO
alter proc search_for_jobs
@keyword VARCHAR(50)
AS
SELECT j.*  , d.name0 ,c.name0
FROM  Jobs j  inner join Departments d 
on j.department=d.code INNER join Companies c 
on c.email = d.company and j.company=c.email
WHERE j.short_description like '%'+@keyword+'%' or j.title like '%'+@keyword+'%'
GO


GO
ALTER proc apply_for_job
@username VARCHAR(50) ,@title VARCHAR(50),@company varchar(50),@dept int ,@x int output
AS
DECLARE @yearsexp int
SELECT @yearsexp=u.years_of_experience
from Users u
where u.username=@username
DECLARE @job_years_exp INT
DECLARE @response VARCHAR(50)
DECLARE @response1 VARCHAR(50)
DECLARE @score int
SELECT @job_years_exp=j.min_experience
from Jobs j
WHERE j.title=@title and j.company=@company and j.department=@dept 
SELECT @response=j.manager_response ,@response1=j.hr_response,@score=j.score
from Job_Seeker_apply_Job j
where j.job_seeker=@username AND j.job=@title and j.company=@company and j.department=@dept
if(not EXISTS (select * from Job_Seeker_apply_Job j where j.job_seeker=@username ))
BEGIN
if(@yearsexp>=@job_years_exp)
BEGIN
insert into Job_Seeker_apply_Job VALUES(@title,@dept,@company,@username,'pending','pending',0)
set @x=1
END
ELSE
set @x=0
END
ELSE
BEGIN
IF(@response is null or @response='pending')
BEGIN
DELETE from Job_Seeker_apply_Job WHERE job_seeker=@username and job=@title and company=@company and department=@dept
insert into Job_Seeker_apply_Job(job,department,company,job_seeker,hr_response,manager_response,score) VALUES(@title,@dept,@company,@username,@response1,@response,0)
set @x=1
END
ELSE
set @x=2
END
print(@response)
GO

GO
alter proc questions_related 
@username VARCHAR(50),@job VARCHAR(50),@comp VARCHAR(50),@dept int
AS
select q.question
from Job_has_Question j INNER join Questions q
on j.question=q.number
WHERE j.company=@comp and j.job=@job and j.department=@dept 
GO


GO
alter proc save_score
@username VARCHAR(50),@password0 VARCHAR(50), @question int , @answer VARCHAR(50)
AS
DECLARE @ques VARCHAR(50)
DECLARE @mod_ans VARCHAR(50)
DECLARE @score int
SELECT @ques = question , @mod_ans = answer
from Questions
WHERE number=@question
SELECT @score=score
from Job_Seeker_apply_Job
where job_seeker=@username
IF(@answer=@mod_ans)
BEGIN
set @score=@score+1
update Job_Seeker_apply_Job
set score = @score
where job_seeker = @username
END
GO

GO
alter proc view_status
@username varchar(50)
AS
SELECT manager_response ,score
from Job_Seeker_apply_Job 
WHERE job_seeker=@username
GO

--5
GO
alter proc seeker_to_staff
@username VARCHAR(50),@password0 VARCHAR(50), @job_chosen VARCHAR(50) , @day_off VARCHAR(50)
AS
DECLARE @response VARCHAR(50)
SELECT @response = manager_response
from Job_Seeker_apply_Job
where job = @job_chosen
if(@response = 'accept')
BEGIN
declare @salary INT
declare @dept INT
DECLARE @company VARCHAR(50)
SELECT @company=j1.company,@dept=j1.department,@salary = j.salary
from Job_Seeker_apply_Job j1 inner join Jobs j
on j1.job =j.title and j1.company=j.company and j1.department=j.department
WHERE j1.job = @job_chosen
DECLARE @domain VARCHAR(50)
SELECT @domain=domain
from Companies
where email=@company
INSERT into Staff_Members
VALUES (@username ,30 ,@username+@domain ,  @day_off, @salary, @job_chosen,@dept,@company)
UPDATE Jobs
set no_of_vacancies=no_of_vacancies-1
WHERE Jobs.title=@job_chosen
END

--6
GO
alter proc delete_pending_applications
@username VARCHAR(50) ,@title VARCHAR ,@comp VARCHAR(50) ,@dept int , @x int OUTPUT
AS
if(Exists (select * from Job_Seeker_apply_Job where job_seeker=@username))
BEGIN
DELETE FROM Job_Seeker_apply_Job 
WHERE job_seeker = @username and job=@title and company=@comp and department=@dept and  manager_response='pending' or manager_response is null 
set @x=1
END
ELSE
set @x=0;
GO


GO
alter proc viewmyapp
@username varchar(50)
AS
SELECT *
FROM Job_Seeker_apply_Job
WHERE job_seeker=@username and manager_response='pending' or manager_response is null
GO

GO
alter proc viewalltasks
@username VARCHAR(50)
as
SELECT *
FROM Tasks
WHERE regular_employee=@username and status0='Assigned'
GO


GO
alter proc viewtasks
@username VARCHAR(50)
as
SELECT *
FROM Tasks
WHERE regular_employee=@username and status0='Fixed'
GO





