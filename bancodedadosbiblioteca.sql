/*https://dbdiagram.io/d/64c41ee202bd1c4a5ee1c451*/

CREATE DATABASE IF NOT EXISTS biblioteca; 

/*criação da tabela livro, que contém informações sobre todas as obras disponíveis para leitura na biblioteca*/ 
CREATE TABLE IF NOT EXISTS `livro` (
    `id` INT,
    `titulo` VARCHAR(55),
    `lancamento` DATE,
    `numExemplares` INT,
    `genero` VARCHAR(55),
    `id_localizacao_fk` INT,
    `id_autor_fk` INT,
    `id_editora_fk` INT
);

/*criação da tabela editora, que contém informações sobre as editoras que publicam os livros*/
CREATE TABLE IF NOT EXISTS`editora` (
    `id` INT,
    `nome` VARCHAR(55), 
    `cnpj` VARCHAR(14),
    `telefone` INT(55),
    `email` VARCHAR(255)
);

/*criação da tabela leitor, que contém informações dos usuários credenciados para utilizar a biblioteca*/
CREATE TABLE IF NOT EXISTS `leitor` (
    `id` INT,
    `nome` VARCHAR(55),
    `cpf` VARCHAR(11),
    `dataNascimento` DATE, 
    `email` VARCHAR(55)
);

CREATE TABLE IF NOT EXISTS `autor` (
    `id` INT,
    `nome` VARCHAR(55),
    `genero` VARCHAR(55),
    `livrosPublicados` INT,
    `nacionalidade` VARCHAR(55)
);

CREATE TABLE IF NOT EXISTS`localizacao` (
    `id` INT,
    `corredor` INT,
    `prateleira` INT,
    `sessao` INT,
    `andar` VARCHAR(55)
);
CREATE TABLE IF NOT EXISTS `emprestimo` (
    `id` INT,
    `data_emprestimo` DATE,
    `data_devolucao` DATE,
    `id_leitor_fk` INT,
    `id_livro_fk` INT
);

/*Chaves estrangeiras */

ALTER TABLE `livro` ADD FOREIGN KEY (`id_localizacao_fk`) REFERENCES `localizacao` (`id`);
ALTER TABLE `livro` ADD FOREIGN KEY (`id_autor_fk`) REFERENCES `autor` (`id`);
ALTER TABLE `livro` ADD FOREIGN KEY (`id_editora_fk`) REFERENCES `editora` (`id`);
ALTER TABLE `emprestimo` ADD FOREIGN KEY (`id_leitor_fk`) REFERENCES `leitor` (`id`);
ALTER TABLE `emprestimo` ADD FOREIGN KEY (`id_livro_fk`) REFERENCES `livro` (`id`);
