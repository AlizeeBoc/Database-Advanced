

ALTER TABLE intro_to_dataBases.groups
ADD Status longtext NULL AFTER start_date;

select * from intro_to_dataBases.learners;

update groups
set status = 
"The training must be postponed by two months due to the coach\'s inability to work. Our beloved Doc Giteco was forcefully pushed during a pogo and broke his leg. He will not be able to fully engage with his students until October."
where id =4;

delete from learners
where id = 1;

ALTER TABLE intro_to_dataBases.learners
ADD FOREIGN KEY (group_id) REFERENCES intro_to_dataBases.groups(id);

alter table intro_to_dataBases.groups
drop column id_group;

select * from learners;



select * from intro_to_dataBases.groups;

update learners 
set group_id = 3
where id = 5;

alter table intro_to_dataBases.groups
add column id_coach int; 

select * from intro_to_dataBases.groups;
select * from coaches;
select * from learners;

update intro_to_dataBases.groups 
set id_coach = 5
where id = 4;

ALTER TABLE intro_to_dataBases.groups
ADD FOREIGN KEY (id_coach) REFERENCES intro_to_dataBases.coaches(id);

select * from groups_has_coaches;

insert into groups_has_coaches (name)
value (blabla);

show tables;

select coaches.name, intro_to_dataBases.groups.name, learners.name
from intro_to_dataBases.groups 
inner join coaches on intro_to_dataBases.groups.id_coach = coaches.id
inner join learners on intro_to_dataBases.groups.id = learners.group_id 
WHERE coaches.name = "Doc Giteco"
AND learners.active = "y";
