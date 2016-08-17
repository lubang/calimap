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
values ('i', -37.840413, 147.832688, 19, "db/mapImage/i/lower/i_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('u', -37.811466, 147.858708, 19, "db/mapImage/u/upper/u_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('t', -37.804718, 147.822519, 18, "db/mapImage/t/upper/t_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('g', -37.739331, 147.655005, 16, "db/mapImage/g/lower/g_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('x', -37.887501, 147.569361, 16, "db/mapImage/x/upper/x_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('y', -37.940154, 147.571210, 18, "db/mapImage/y/lower/y_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('i', -37.743414, 144.895664, 18, "db/mapImage/i/upper/i_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('0', -37.800106, 144.886933, 18, "db/mapImage/0/0_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('1', -38.253724, 146.175686, 18, "db/mapImage/1/1_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('2', -37.639574, 145.070048, 18, "db/mapImage/2/2_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('3', -37.628658, 144.955537, 18, "db/mapImage/3/3_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('4', -38.229159, 142.829797, 18, "db/mapImage/4/4_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('5', -38.135446, 141.649637, 18, "db/mapImage/5/5_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('6', -38.370673, 145.615365, 18, "db/mapImage/6/6_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('7', -38.209845, 146.469859, 18, "db/mapImage/7/7_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('8', -37.902874, 144.401815, 18, "db/mapImage/8/8_101.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('8', -38.585438, 145.802092, 18, "db/mapImage/8/8_102.png");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('9', -37.886721, 144.406450, 18, "db/mapImage/9/9_101.png");