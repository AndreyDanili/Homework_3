create table if not exists worker (
	id serial primary key,
	name varchar(40) not null,
	department varchar(40) not null
);

create table if not exists subordination (
	name_id integer references worker(id) not null,
	boss_id integer references worker(id) not null,
	constraint pk primary key (name_id)
);