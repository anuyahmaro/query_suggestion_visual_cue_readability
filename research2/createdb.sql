
use database researchdb;

create table visitor (
	id int primary key auto_increment,
	visitorguid varchar (40),
	datevisited timestamp,
)

create table grade (
id int primary key auto_increment,
grade varchar (255)
)
insert into grade (grade) values
('Pre-K'),('Kindergartten'),('1st Grade'), 
('2nd Grade'), 
('3rd Grade'), 
('4th Grade'), 
('5th Grade'), 
('6th Grade'),
('7th Grade'),
('8th Grade'),
('9th Grade'),
('10th Grade'),
('11th Grade'),
('12th Grade'),
(13, 'Adult / Test');

create table visitorgradesearch (
	id int primary key auto_increment,
	query varchar (max),
	searchuid varchar (50),
	gradeid int,
	foreign key (gradeid)
	references grade(id),
	visitorid int ,
	foreign key  (visitorid)
	references visitor(id),
	timesearched  timestamp default current_timestamp
)
create table visitorlinks(
	id int primary key auto_increment,
	visitorid int,
	searchid int,
	linkclicked varchar (max),
	timeclicked timestamp default current_timestamp,
	foreign key  (visitorid)
	references visitor(id),
	foreign key (searchid)
	references visitorgradesearch (id)
)
	