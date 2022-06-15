CREATE SCHEMA `notas_db` ;

CREATE TABLE `notas_db`.`new_table` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `fecha_creacion` DATE NOT NULL,
  `fecha_modif` DATE NOT NULL,
  `description` TEXT NOT NULL,
  `verifi_elimin` TINYINT NOT NULL,
  `user_id` INT UNSIGNED NOT NULL);

CREATE TABLE `notas_db`.`category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL);category
  
  
CREATE TABLE `nota_db`.`users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL);
  
  
  CREATE TABLE `notas_db`.`category_notas` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nota_id` INT UNSIGNED NOT NULL,
  `category_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`));




ALTER TABLE `notas_db`.`notas` 
ADD INDEX `FK_notas_users_idx` (`user_id` ASC) VISIBLE;
;
ALTER TABLE `notas_db`.`notas` 
ADD CONSTRAINT `FK_notas_users`
  FOREIGN KEY (`user_id`)
  REFERENCES `notas_db`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `notas_db`.`category_notas` 
ADD INDEX `FK_notas_category_idx` (`nota_id` ASC) VISIBLE,
ADD INDEX `FK_category_notas_idx` (`category_id` ASC) VISIBLE;
;
ALTER TABLE `notas_db`.`category_notas` 
ADD CONSTRAINT `FK_notas_category`
  FOREIGN KEY (`nota_id`)
  REFERENCES `notas_db`.`notas` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_category_notas`
  FOREIGN KEY (`category_id`)
  REFERENCES `notas_db`.`category` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  
INSERT INTO `notas_db`.`category` (`name`) VALUES ('musica');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('politica');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('social');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('historico');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('economico');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('romantico');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('ecologico');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('tecnologico');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('salud');
INSERT INTO `notas_db`.`category` (`name`) VALUES ('famosos');

INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Roberto', 'Roberto@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Juana', 'Juana@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Eric', 'Eric@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Pedro', 'Pedro@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Ana', 'Ana@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Roco', 'Roco@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Fernando', 'Fernando@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Ciro', 'Ciro@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Nadia', 'Nadia@gmail.com');
INSERT INTO `notas_db`.`users` (`name`, `email`) VALUES ('Augusto', 'Augusto@gmail.com');

INSERT INTO `notas_db`.`notas` (`title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('not_1', '2010-01-05', '2010-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '4');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('2', 'not_2', '2014-05-05', '2015-07-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '0', '7');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('3', 'not_3', '2013-01-12', '2014-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '0', '1');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('4', 'not_4', '2016-04-23', '2018-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '5');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('5', 'not_5', '2009-01-02', '2009-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '0', '2');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('6', 'not_6', '2021-01-29', '2021-04-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '4');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('7', 'not_7', '2005-01-03', '2003-01-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '4');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('8', 'not_8', '2010-12-05', '2013-01-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '4');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('9', 'not_9', '2013-01-12', '2014-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '0', '1');
INSERT INTO `notas_db`.`notas` (`id`, `title`, `fecha_creacion`, `fecha_modif`, `description`, `verifi_elimin`, `user_id`) VALUES ('10', 'not_10', '2016-04-23', '2018-02-01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nunc justo, tincidu', '1', '5');

INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('3', '2');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('5', '2');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('5', '1');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('5', '2');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('3', '6');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('10', '1');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('10', '4');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('1', '2');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('2', '7');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('4', '9');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('9', '6');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('8', '10');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('3', '4');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('6', '7');
INSERT INTO `notas_db`.`category_notas` (`nota_id`, `category_id`) VALUES ('1', '8');

