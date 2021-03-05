USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_motodealer','Concessionnaire moto',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_motodealer','Concesionnaire moto',1)
;

INSERT INTO `jobs` (name, label) VALUES
	('motodealer','Concessionnaire moto')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('motodealer',0,'recruit','Recrue',10,'{}','{}'),
	('motodealer',1,'novice','Novice',25,'{}','{}'),
	('motodealer',2,'experienced','Experimente',40,'{}','{}'),
	('motodealer',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE `motodealer_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `moto_sold` (
	`client` VARCHAR(50) NOT NULL,
	`model` VARCHAR(50) NOT NULL,
	`plate` VARCHAR(50) NOT NULL,
	`soldby` VARCHAR(50) NOT NULL,
	`date` VARCHAR(50) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `owned_vehicles` (
	`owner` varchar(40) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`vehicle` longtext,
	`type` VARCHAR(20) NOT NULL DEFAULT 'car',
	`job` VARCHAR(20) NULL DEFAULT NULL,
	`stored` TINYINT(1) NOT NULL DEFAULT '0',

	PRIMARY KEY (`plate`)
);

CREATE TABLE `rented_moto` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(22) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `categories_moto` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `categories_moto` (name, label) VALUES
	('compacts','Compacts'),
	('coupes','Coupés'),
	('sedans','Sedans'),
	('sports','Sports'),
	('sportsclassics','Sports Classics'),
	('super','Super'),
	('muscle','Muscle'),
	('offroad','Off Road'),
	('suvs','SUVs'),
	('vans','Vans'),
	('motorcycles','Motos')
;

CREATE TABLE `vehicles_moto` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL;
	PRIMARY KEY (`model`)
);

INSERT INTO `vehicles_moto` (name, model, price, category) VALUES
    ('Akuma','akuma', 27500,'motorcycles'),
    ('Avarus','avarus', 25750,'motorcycles'),
    ('Bagger','bagger', 17000,'motorcycles'),
    ('Bati','bati', 47000,'motorcycles'),
    ('BF400','bf400', 65000,'motorcycles'),
    ('CarbonRS','carbonrs', 60000,'motorcycles'),
    ('Chimera','chimera', 18750,'motorcycles'),
    ('Cliffhanger','cliffhanger', 22000,'motorcycles'),
    ('Deamon','deamon', 12000,'motorcycles'),
    ('Deamon 2','deamon2', 15000,'motorcycles'),
    ('Defiler','defiler', 30000,'motorcycles'),
    ('DeathBiker','deathbiker', 26000,'motorcycles'),
    ('Diablous','diablous', 50000,'motorcycles'),
    ('Diablous 2','diablous2', 65000,'motorcycles'),
    ('Double T','double', 70000,'motorcycles'),
    ('Enduro','enduro', 5000,'motorcycles'),
    ('Esskey','esskey', 7500,'motorcycles'),
    ('Faggio','faggio', 1000,'motorcycles'),
    ('Gargoyle','Gargoyle', 55000,'motorcycles'),
    ('Hakuchou','hakuchou', 68000,'motorcycles'),
    ('Hakuchou Drag','hakuchou2', 78000,'motorcycles'),
    ('Hexer','hexer', 9000,'motorcycles'),
    ('Innovation','innovation', 13000,'motorcycles'),
    ('Lectro','lectro', 30000,'motorcycles'),
    ('Manchez','manchez', 24000,'motorcycles'),
    ('Nightblade','nightblade', 70000,'motorcycles'),
    ('Ratbike','ratbike', 2000,'motorcycles'),
    ('Ruffian','ruffian', 38000,'motorcycles'),
    ('Sanchez','sanchez', 13000,'motorcycles'),
    ('Sanchez2','sanchez2', 13500,'motorcycles'),
    ('Sanctus','sanctus', 80000,'motorcycles'),
    ('Thrust','thrust', 25000,'motorcycles'),
    ('Wolfsbane','wolfsbane', 17000,'motorcycles'),
    ('Zombie A','zombiea', 18000,'motorcycles'),
    ('Zombie B','zombieb', 20000,'motorcycles'),
    ('Manchez 2','manchez2', 50000,'motorcycles'),
    ('Blazer','blazer', 6000,'motorcycles'),
    ('Blazer 4','blazer4', 55000,'motorcycles')
;