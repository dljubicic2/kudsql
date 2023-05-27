use kud;

select * from nastupclan;

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

select * from mjesto;

update nastup set clan=2
where id=1;

update clan set prezime='Janic'
where id=3;

update mjesto set lokacija='Berlin'
where id=1;

delete from clan where id=1;

delete from mjesto where id=2;

delete from nastup where id=3;