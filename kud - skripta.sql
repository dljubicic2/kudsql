create database kud:
use kud;

create table nastup (
	id int not null primary key identity (1,1),
	clan int not null,
	naziv varchar(50) null,
	mjesto int not null
);
create table clan (
	id int not null primary key identity (1,1),
	ime varchar(50) null,
	prezime varchar(50) null,
	oib char(11) null
);
create table mjesto (
	id int not null primary key identity (1,1),
	naziv varchar(50) null,
	lokacija varchar(50) null
);
create table nastupclan (
	nastup int not null,
	clan int not null
);

-- veze izme?u ?lanova

alter table nastup add foreign key (clan) references clan (id);
alter table nastup add foreign key (mjesto) references mjesto (id);
alter table nastupclan add foreign key (nastup) references nastup (id);
alter table nastupclan add foreign key (clan) references clan (id);

-- dodavanje u tablicu

insert into clan (ime,prezime,oib)
values ('Ivan','Ivic',00912344587),
('Maja','Majic',66615104754),
('Ante','Antic',99855412348);

insert into mjesto (naziv,lokacija)
values ('hrvatski','Osijek'),
('poljski','Zagreb'),
('talijanski','Maribor');

insert into nastup (clan,naziv,mjesto)
values (1,'umjetnost',1),
(2,'drvo',2),
(3,'cvijet',3);

insert into nastupclan(nastup,clan)
values (1,1),
(2,3),
(3,1);

-- update tablice

update nastup set clan=2
where id=1;

update clan set prezime='Janic'
where id=3;

update mjesto set lokacija='Berlin'
where id=1;

-- delete tablice

delete from clan where id=1;

delete from mjesto where id=2;

delete from nastup where id=3;