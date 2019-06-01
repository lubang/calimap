drop table if exists search_history;

create table if not exists search_history(
	id integer primary key autoincrement,
	searched_keyword varchar(50),
	ip varchar(50),
	searched_time timestamp,
	client_platform varchar(50),
	client_browser varchar(50)
);