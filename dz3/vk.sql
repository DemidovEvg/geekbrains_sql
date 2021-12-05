drop database if exists vk;

create database vk;

use vk;

drop table if exists users;

create table if not exists users(
	id bigint unsigned not null auto_increment primary key,
	firstname varchar(50),
	lastname varchar(50) comment 'Фамилия',
	email varchar(120) unique,
	password_hash varchar(100),
	phone bigint unsigned unique,
	
	index users_firstname_lastname_idx (firstname, lastname)
);

drop table if exists profiles;

create table profiles(
	user_id bigint unsigned not null,
	gender char(1),
	birthday date,
	photo_id bigint unsigned,
	created_at datetime default now(),
	hometown varchar(50)
);

alter table profiles add constraint fk_profiles_user_id foreign key (user_id) references users (id) on update cascade on delete restrict;

create table messages(
	id serial,
	from_user_id bigint unsigned not null,
	to_user_id bigint unsigned not null,
	body text,
	created_at datetime default now(),
	
	foreign key (from_user_id) references users(id),
	foreign key (to_user_id) references users(id)
);

create table friends_requests(
	initiator_user_id bigint unsigned not null,
	target_user_id bigint unsigned not null,
	`status` enum('requested', 'approved', 'declined', 'unfriended'),
	requested_at datetime default now(),
	updated_at datetime on update current_timestamp,
	
	primary key (initiator_user_id, target_user_id), 
	
	foreign key (initiator_user_id) references users(id),
	foreign key (target_user_id) references users(id)
);

alter table friends_requests add check (initiator_user_id <> target_user_id);

create table communities(
	id serial,
	name varchar(150),
	admin_user_id bigint unsigned not null,
	
	index communities_name_idx(name),
	foreign key (admin_user_id) references users(id)
);

create table user_communities(
	user_id bigint unsigned not null,
	community_id bigint unsigned not null,
	
	primary key (user_id, community_id),
	foreign key (user_id) references users(id),
	foreign key (community_id) references communities(id)
);


create table media_types(
	id serial,
	name varchar(255),
	created_at datetime default now(),
	updated_at datetime on update now()
);

create table media(
	id serial,
	media_type_id bigint unsigned not null,
	user_id bigint unsigned not null,
	body text,
	filename varchar(255),
	`size` int,
	metadata json,
	created_at datetime default now(),
	updated_at datetime on update now(),
	
	foreign key (user_id) references users(id),
	foreign key (media_type_id) references media_types(id)
);


create table likes(
	id serial,
	user_id bigint unsigned not null,
	media_id bigint unsigned not null,
	created_at datetime default now(),
	
	foreign key (user_id) references users(id),
	foreign key (media_id) references media_types(id)
);

create table photo_albums(
	id serial,
	name varchar(100),
	user_id bigint unsigned not null,
	
	foreign key (user_id) references users(id),
	primary key (id)
	
);

create table photos(
	id serial,
	album_id bigint unsigned not null,
	media_id bigint unsigned not null	
);

alter table photos add constraint fk_photos_album_id foreign key (album_id) references photo_albums(id);

alter table photos add constraint fk_phoyls_media_id foreign key (media_id) references media(id);

ALTER TABLE vk.profiles 
ADD CONSTRAINT profiles_fk_1 
FOREIGN KEY (photo_id) REFERENCES media(id);

-- =======================================
-- =======Homework========================
-- =======================================

create table cities(
	id serial,
	name varchar(50)
);

alter table profiles add city_id bigint unsigned not null;
alter table profiles add constraint fk_profiles_cities_id foreign key (city_id) references cities (id);

create table family_status(
	id serial,
	name varchar(50)
);

alter table profiles add family_status_id bigint unsigned not null;
alter table profiles add constraint fk_profiles_family_status_id foreign key (family_status_id) references family_status (id);

create table work_places(
	id serial,
	name varchar(50)
);

alter table profiles add work_place_id bigint unsigned not null;
alter table profiles add constraint fk_profiles_work_place_id foreign key (work_place_id) references work_places (id);

create table languages(
	id serial,
	name varchar(50)
);

create table user_language(
	user_id bigint unsigned not null,
	language_id bigint unsigned not null,
	
	primary key (user_id, language_id),
	foreign key (user_id) references users (id),
	foreign key (language_id) references languages (id)
);

create table brothers_sisters (
	user_id1 bigint unsigned not null,
	user_id2 bigint unsigned not null,
	primary key (user_id1, user_id2),
	check (user_id1 <> user_id2),
	foreign key (user_id1) references users (id),
	foreign key (user_id2) references users (id)
);



















