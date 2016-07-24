drop table if exists alphabet;

create table if not exists alphabet(
	id integer primary key autoincrement,
	alphabet varchar(1),
	lat real,
	long real,
	zoom integer,
	image_path varchar(50)
);

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 0.0, 0.1, 1, "AAA"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 0.0, 0.2, 1, "AAAAAA"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 0.0, 0.5, 1, "AAAAAAAAA"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('B', 1.0, 1.1, 2, "BBB"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('C', 3.0, 3.1, 4, "CCC"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('D', 5.0, 5.1, 6, "DDD"); 

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('E', 7.0, 7.1, 8, "EEE"); 
