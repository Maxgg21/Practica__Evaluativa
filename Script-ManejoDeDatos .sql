-- CREATE DATA BASE note_list_db--
create database `note_list_db`;

use `note_list_db`;

-- Table structure for table `USERS`

create table `Users`(
`id` int not null auto_increment,
`name` varchar(30) not null,
`email` varchar(50) unique not null,
`creation_date` date not null,
primary key(`id`));

-- Table structure for table `CATEGORIES`

create table `categories`(
`id` int not null auto_increment,
`name` varchar(30) not null,
primary key (`id`));

-- Table structure for table `NOTES`

create table `notes`(
`id` int not null auto_increment,
`title` varchar(100) not null,
`creation_date` datetime not null,
`update_date` date null,
`description` text not null,
`delete_note` tinyint null,
`id_user` int not null,
`id_category` int not null,
primary key(`id`),
foreign key (`id_user`) references `users`(`id`),
foreign key (`id_category`) references `categories`(`id`));


-- ENTER A RECORD


-- TABLE SELECT 

select * from `users`;
select * from `categories`;
select * from `note_list_db.notes`;

-- ENTER A RECORD

insert into `USers` values (1, "Lionel", "lionel.pepe@msn.com", now());
insert into `Users` values (default , "Messi", "user3@meil.com", now());

insert into `categories` values (default, "Usuario");

insert into `notes` values (default, "Scope JavaScript", now(), null,
" El scope puede definirse como el alcance que una variable tendrá en tu código. En otras palabras, el scope decide a qué variables tienes acceso en cada parte del código. Existen dos tipos de scope, el scope global y el scope local.",
null, 1, 2);



