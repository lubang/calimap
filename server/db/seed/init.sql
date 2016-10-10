drop table if exists alphabet;

create table if not exists alphabet(
	id integer primary key autoincrement,
	alphabet varchar(1),
	lat real,
	long real,
	zoom integer,
	image_path varchar(50)
);

--A
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', -37.823337, 144.974673, 8, "db/mapImage/a/upper/a_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', -36.889918, 145.18012, 8, "db/mapImage/a/upper/a_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 37.675742, -122.471623, 8, "db/mapImage/a/upper/a_3.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('A', 37.003520, 126.815314, 8, "db/mapImage/a/upper/a_4.PNG");

--B
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('b', 51.856654, -1.216927, 8, "db/mapImage/b/lower/b_3.PNG");

--C
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('c', 25.844421, 50.621164, 8, "db/mapImage/c/lower/c_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('c', -19.394921, -138.675967, 8, "db/mapImage/c/lower/c_2.PNG");

--D
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('D', 53.010841, -81.329146, 8, "db/mapImage/d/upper/d_1.PNG");

--E
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('E', 53.370745, -6.232452, 8, "db/mapImage/d/upper/e_1.PNG");

--F
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('F', 53.296806, -6.132226, 8, "db/mapImage/f/upper/f_1.PNG");
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('F', -37.802239, 143.932959, 8, "db/mapImage/f/upper/f_2.PNG");

--G
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('g', -37.739331, 147.655005, 16, "db/mapImage/g/lower/g_101.PNG");

--H
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('h', 35.140180, -93.061166, 16, "db/mapImage/h/lower/h_1.PNG");

--I
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('i', 12.030647, 92.675341, 8, "db/mapImage/i/lower/i_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('i', -37.840413, 147.832688, 19, "db/mapImage/i/lower/i_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('i', -37.743414, 144.895664, 18, "db/mapImage/i/upper/i_101.png");

--J
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('j', -18.357107, 146.818856, 8, "db/mapImage/j/lower/j_1.PNG");

--K
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('k', 53.362675, -6.269338, 8, "db/mapImage/k/lower/k_1.PNG");


--L
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('L', 54.347944, -0.750781, 8, "db/mapImage/l/lower/l_1.PNG");

--M
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('m', 39.979735, -74.828644, 8, "db/mapImage/m/lower/m_1.PNG");

--N
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('n', 52.576278, -1.241803, 8, "db/mapImage/n/lower/n_1.PNG");

--O
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('o', -37.819937, 144.983224, 8, "db/mapImage/o/lower/o_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('o', 22.918999, -10.406858, 8, "db/mapImage/o/lower/o_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('0', -37.800106, 144.886933, 18, "db/mapImage/0/0_101.png");

--P
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('p', 60.399733, -112.456873, 8, "db/mapImage/p/lower/p_1.PNG");

--Q
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('Q', 19.976737, 76.508098, 8, "db/mapImage/q/lower/q_1.PNG");

--R
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('r', -42.689838, -71.897315, 8, "db/mapImage/r/lower/r_1.PNG");

--S
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('s', -36.00101, 144.42777, 8, "db/mapImage/s/lower/s_1.PNG");

--T
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('t', -37.804718, 147.822519, 18, "db/mapImage/t/upper/t_101.PNG");

--U
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('u', 37.152181, -109.881485, 8, "db/mapImage/u/lower/u_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('u', -37.811466, 147.858708, 19, "db/mapImage/u/upper/u_101.PNG");

--V
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('v', 53.310908, -6.203184, 19, "db/mapImage/v/lower/v_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('V', -37.842146, 144.998947, 19, "db/mapImage/v/upper/v_2.PNG");

--W
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('W', 53.330257, -6.317611, 19, "db/mapImage/w/upper/w_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('w', -38.274577, 142.939166, 19, "db/mapImage/w/lower/w_2.PNG");

--X
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('X', -37.887501, 147.569361, 16, "db/mapImage/x/upper/x_101.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('x', 55.906220, -2.655419, 16, "db/mapImage/x/upper/x_1.PNG");


--Y
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('Y', -20.950896, 14.195583, 8, "db/mapImage/y/lower/y_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('Y', 52.828442, -2.008042, 8, "db/mapImage/y/lower/y_2.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('y', -37.940154, 147.571210, 18, "db/mapImage/y/lower/y_101.PNG");

--Z
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('z', 35.207250, 129.054726, 18, "db/mapImage/z/lower/z_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('Z', 52.886610, 4.850046, 18, "db/mapImage/z/upper/z_1.PNG");

--numbers
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
values ('8', 52.275070, -0.880388, 8, "db/mapImage/8/8_1.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('9', -37.886721, 144.406450, 18, "db/mapImage/9/9_101.png");

--imoticon
insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('hurray', -21.805149,-49.089977, 8, "db/mapImage/imoticon/hurray.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('heart', 43.978500, 15.383628, 8, "db/mapImage/imoticon/heart.PNG");

insert into alphabet (alphabet, lat, long, zoom, image_path)
values ('fingerprint', 50.844082, -0.172129, 8, "db/mapImage/imoticon/fingerprint.PNG");



