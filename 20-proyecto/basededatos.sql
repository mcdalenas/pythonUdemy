CREATE DATABASE IF NOT EXISTS masterPython;
use masterPython;

CREATE TABLE usuarios(
    id          int(255)        auto_increment      not null,
    nombre      varchar(100),
    apellidos   varchar(255),
    email       varchar(255)    not null,
    password     varchar(255)    not null,
    CONSTRAINT pk_usuarios  PRIMARY KEY(id),
    CONSTRAINT uq_email     UNIQUE(email)
)ENGINE=InnoDb;

CREATE TABLE notas(
    id          int(25)         auto_increment          not null,
    usuario_id  int(25)         not null,
    titulo      varchar(255)    not null,
    descripcion MEDIUMTEXT,

    CONSTRAINT pk_notas PRIMARY KEY(id),
    CONSTRAINT fk_nota_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
)ENGINE=InnoDb;