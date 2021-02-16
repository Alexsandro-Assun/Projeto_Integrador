CREATE SCHEMA IF NOT EXISTS `db_educadin` DEFAULT CHARACTER SET utf8 ;
USE `db_educadin` ;

CREATE TABLE `tb_usuario` (
	`id_usuario` INT NOT NULL AUTO_INCREMENT UNIQUE,
	`nome` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `tb_temas` (
	`id_tema` INT NOT NULL AUTO_INCREMENT,
	`tema` varchar(255) NOT NULL,
	`categoria` varchar(255) NOT NULL,
	`cursos` varchar(255) NOT NULL,
	PRIMARY KEY (`id_tema`)
);

CREATE TABLE `tb_postagem` (
	`id_postagem` INT NOT NULL AUTO_INCREMENT,
	`postdate` DATETIME NOT NULL,
	`visualizacao` INT NOT NULL,
	`curtida` INT NOT NULL,
	`comentario` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`midia` longblob,
	`tb_usuario_id_usuario` INT NOT NULL,
	`tb_temas_id_tema` INT NOT NULL,
	PRIMARY KEY (`id_postagem`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tb_usuario_id_usuario`) REFERENCES `tb_usuario`(`id_usuario`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`tb_temas_id_tema`) REFERENCES `tb_temas`(`id_tema`);

