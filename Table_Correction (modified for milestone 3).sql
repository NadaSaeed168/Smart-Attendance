--Correcting a table in milestone 2 (creating it from scratch again)
create table Requests
(
start_date0 DATETIME ,
applicant VARCHAR(50),
PRIMARY KEY (start_date0,applicant),
end_date DATETIME,
request_date DATETIME,
total_days as (datediff(day,(end_date),(start_date0))),
 hr_response VARCHAR(50),
 hr_employee VARCHAR(50),
 manager VARCHAR(50),
 manager_response varchar(50), 
 manager_reason varchar(50),
 FOREIGN KEY (applicant) REFERENCES Staff_Members
 on delete no action on update cascade,
 FOREIGN KEY (hr_employee) REFERENCES HR_Employees
 on delete no action on update cascade,
 FOREIGN KEY (manager) REFERENCES Managers
 on delete no action on update cascade
)
--new table created in this milestone with its insertions
create table Staff_Members_day_off(
username varchar(50),
day_off varchar(50),
primary key(username,day_off),
foreign key(username) references Staff_Members
on delete cascade on update cascade
);

insert into Staff_Members_day_off(username,day_off)
values('nermin.ayman','Monday')

insert into Staff_Members_day_off(username,day_off)
values('ahmed.youssef','Monday')

insert into Staff_Members_day_off(username,day_off)
values('ahmed.mohamed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('moahmed.rageh','Monday')

insert into Staff_Members_day_off(username,day_off)
values('nada.rageh','Monday')

insert into Staff_Members_day_off(username,day_off)
values('nada.m','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('ahmed.rageh','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('hady.ahmed','Monday')

insert into Staff_Members_day_off(username,day_off)
values('hady.mohamed','Monday')

insert into Staff_Members_day_off(username,day_off)
values('mariam.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('mariam.mohamed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('yasmin.ayman','Saturday')

insert into Staff_Members_day_off(username,day_off)
values('rana.ahmed','Saturday')

insert into Staff_Members_day_off(username,day_off)
values('emar.ahmed','Saturday')

insert into Staff_Members_day_off(username,day_off)
values('nada.saeed','Monday')

insert into Staff_Members_day_off(username,day_off)
values('mohamed.kamal','Monday')

insert into Staff_Members_day_off(username,day_off)
values('ahmed.ayman','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('mohamed.abdallah','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('rana.abdelazim','Thursday')

insert into Staff_Members_day_off(username,day_off)
values('dana.ahmed','Monday')

insert into Staff_Members_day_off(username,day_off)
values('dana.ibrahim','Monday')

insert into Staff_Members_day_off(username,day_off)
values('nada.ayman','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('hana.ahmed','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('hana.khaled','Thursday')

insert into Staff_Members_day_off(username,day_off)
values('verna.ahmed','Monday')

insert into Staff_Members_day_off(username,day_off)
values('ghada.ashraf','Monday')

insert into Staff_Members_day_off(username,day_off)
values('heba.ayman','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('ian.lo','Sunday')

insert into Staff_Members_day_off(username,day_off)
values('gana.khaled','Thursday')

insert into Staff_Members_day_off(username,day_off)
values('hajar.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('ahmed.hassan','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('hayat.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('khaled.sakr','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('carine.abdelazim','Thursday')

insert into Staff_Members_day_off(username,day_off)
values('sherif.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('sherif.hassan','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('nada.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('nada.sakr','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('mai.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('sherine.hassan','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('hassan.ahmed','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('tamer.sakr','Tuesday')

insert into Staff_Members_day_off(username,day_off)
values('mai.abdelazim','Thursday')




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


