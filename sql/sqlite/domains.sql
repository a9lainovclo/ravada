CREATE TABLE `domains` (
  `id` integer primary key AUTOINCREMENT,
  `id_base` int(11) ,
  `name` char(80) NOT NULL,
  `created` char(1) NOT NULL DEFAULT 'n',
  `error` varchar(200) DEFAULT NULL,
  `uri` varchar(250) DEFAULT NULL,
  `is_base` char(1) NOT NULL DEFAULT 'n',
  `file_base_img` varchar(255) DEFAULT NULL,
  UNIQUE (`id_base`,`name`),
  UNIQUE (`name`)
);