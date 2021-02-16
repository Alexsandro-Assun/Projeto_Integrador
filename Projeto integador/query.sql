INSERT INTO db_educadin.tb_usuario (nome, email, senha)
VALUES
("Peixoto", "vereador@peixoto.com", "admver01");

INSERT INTO db_educadin.tb_temas (tema, categoria, cursos)
VALUES 
("Educação", "Programação", "JavaGEN");

INSERT INTO db_educadin.tb_postagem (postdate, visualizacao, curtida, comentario, descricao, midia, tb_usuario_id_usuario, tb_temas_id_tema)
VALUES
('20120618', 145696,12348596,"LINDOS(A) DO(A) TIA!","Mais um dia abençoado!",null,1,1);
