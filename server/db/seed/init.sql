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
values ('s', -36.00101, 144.42777, 8, "db/mapImage/s/lower/s_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('o', -37.819937, 144.983224, 8, "db/mapImage/o/lower/o_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', -37.823337, 144.974673, 8, "db/mapImage/a/upper/a_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', -36.889918 145.18012, 8, "db/mapImage/a/upper/a_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('c', 25.844421, 50.621164, 8, "db/mapImage/c/lower/c_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('c', -19.394921, -138.675967, 8, "db/mapImage/c/lower/c_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('D', 53.010841, -81.329146, 8, "db/mapImage/d/upper/d_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('i', 12.030647, 92.675341, 8, "db/mapImage/i/lower/i_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('j', -18.357107, 146.818856, 8, "db/mapImage/j/lower/j_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('o', 22.918999, -10.406858, 8, "db/mapImage/o/lower/o_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('p', 60.399733, -112.456873, 8, "db/mapImage/p/lower/p_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('r', -42.689838, -71.897315, 8, "db/mapImage/r/lower/r_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('u', 37.152181, -109.881485, 8, "db/mapImage/u/lower/u_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('Y', -20.950896, 14.195583, 8, "db/mapImage/y/lower/y_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 37.675742, -122.471623, 8, "db/mapImage/a/upper/a_3.PNG");




