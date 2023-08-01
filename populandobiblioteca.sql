USE `biblioteca`

/*populando tabela livros*/
INSERT INTO biblioteca.livro VALUES
(1,'O silêncio dos amantes','2008-08-21',3,`romance`,2,1,1),
(2,'O castelo dos alquimistas','196-03-12',2,'ficção',5,2,2),
(3,'Jurassic Park','1990-11-20',5,'ficção',4,3,3),
(4,'O silêncio dos inocentes','1988-05-19','suspense',3,4,4),
(5,'Alien','1978-03-02',4,'terror',1,5,5);

INSERT INTO biblioteca.editora VALUES
(1,'Record','20548932841294','1199443312','editorarecord@gmail.com'),
(2,'Geração Editorial','29347249301245','123345679','editorageração@hotmail.com'),
(3,'Aleph','11235813213455','1123581321','editoraaleph@yahoo.com'),
(4,'Rocco','39482834712549','41998823454','roccoeditora@rocco.com'),
(5,'Darkside','43904523521457','21993450544','darkside@editora.com');

INSERT INTO biblioteca.leitor VALUES
(1,'Yule Carvalho','05582558524','1998-03-20','yulecar@hotmail.com'),
(2,'Yuri da Silva','29345813212','2001-05-02','yurisilva@gmail.com'),
(3,'Jurema Romero','23459103029','1950-03-20','ju-re-ma@yahoo.com'),
(4,'Romário Junior','22394567814','1998-11-11','romarinho@sasasa.com'),
(5,'Carla Teixeira','11238405942','1995-09-03','carlahtinha@hotmail.com');

INSERT INTO biblioteca.autor VALUES
(1,'Lya Luft','romance',3,'brasileira'),
(2,'Peter Bartschat','ficção',1,'escocês'),
(2,'Michael Crichton','ficção',10,'americano'),
(4,'Thomas Harris','terror',4,'inglês'),
(5,'Alan Dean','terror',4,'americano');

INSERT INTO biblioteca.localizacao VALUES
(1,3,4,1,'térreo'),
(2,4,2,4,'1°'),
(3,2,7,2,'térreo'),
(4,2,9,3,'1°'),
(5,4,1,3,'térreo');


INSERT INTO biblioteca.emprestimo VALUES
(1,'2023-08-01','2023-08-15',2,4),
(2,'2023-07-15','2023-07-31',1,5),
(3,'2023-07-01','2023-07-15',3,1),
(4,'2023-06-15','2023-06-30',4,2),
(5,'2023-06-01','2023-06-15',5,3);


