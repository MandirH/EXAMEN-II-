CREATE DATABASE idiomas_bd;
USE idiomas_bd;

CREATE TABLE Profesor (
  id_prof int(6) NOT NULL,
  nombre varchar(20) NOT NULL,
  idioma varchar(50) NOT NULL,
  constraint pk_id_pro primary key(id_prof),
  constraint chk_idioma check (idioma in ('ingles','español'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Estudiante (
  id_es int(6) NOT NULL,
  nombre varchar(20) NOT NULL,
  email varchar(20) NOT NULL,
  constraint pk_id_es primary key(id_es)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Programacion (
  id_pro int(6) NOT NULL,
  id_prof int(6) NOT NULL,
  Inicio varchar(20) NOT NULL,
  tipo varchar(7) NOT NULL,
  constraint pk_id_pro primary key(id_pro),
  constraint chk_tipo check (tipo in ('normal','premium')),
  constraint fk_id_prof foreign key (id_prof) REFERENCES Profesor (id_prof)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Leccion (
  id_lec int(6) NOT NULL,
  id_es int(6) NOT NULL,
  id_pro int(6) NOT NULL,
  numero int(6) NOT NULL,
  estatus varchar(20) NOT NULL,
  comentario_profesor varchar(200) NOT NULL,
  comentario_estudiante varchar(200) NOT NULL,
  constraint chk_estatus check (estatus in ('Programado','Terminado','Cancelado')),
  constraint pk_id_lec primary key(id_lec),
  constraint fk_id_es foreign key (id_es) REFERENCES Estudiante (id_es),
  constraint fk_id_pro foreign key (id_pro) REFERENCES Programacion (id_pro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





