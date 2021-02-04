CREATE TABLE companii (
  cod_com VARCHAR(3),
  denumire VARCHAR(30) DEFAULT NULL,
  infiintare VARCHAR(30) DEFAULT NULL,
  nr_trenuri INT DEFAULT NULL,
  nr_angajati INT DEFAULT NULL,
  sediu VARCHAR(30) DEFAULT NULL,
  telefon_callcenter VARCHAR(13) DEFAULT NULL,
  PRIMARY KEY (cod_com)
);
CREATE TABLE statii (
  cod_statie INT AUTO_INCREMENT,
  denumire VARCHAR(30) DEFAULT NULL,
  lungime_peron VARCHAR(30) DEFAULT NULL,
  parcare VARCHAR(30) DEFAULT NULL,
  nr_linii INT DEFAULT NULL,
  magazin VARCHAR(30) DEFAULT NULL,
  toaleta VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (cod_statie)
);
CREATE TABLE case_de_bilete (
  cod_cb INT AUTO_INCREMENT,
  cod_com VARCHAR(3) NOT NULL,
  telefon VARCHAR(13) DEFAULT NULL,
  program VARCHAR(255) DEFAULT NULL,
  nr_ghisee INT DEFAULT NULL,
  nr_angajati INT DEFAULT NULL,
  nr_reclamatii INT DEFAULT NULL,
  nr_posturi_libere INT DEFAULT NULL,
  PRIMARY KEY (cod_cb),
  FOREIGN KEY (cod_com) REFERENCES companii(cod_com) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE trenuri (
  cod_tren INT,
  cod_com VARCHAR(3) NOT NULL,
  nr_locuri INT DEFAULT NULL,
  nr_vagoane INT DEFAULT NULL,
  producator VARCHAR(30) DEFAULT NULL,
  culoare VARCHAR(30) DEFAULT NULL,
  an_fabricatie INT DEFAULT NULL,
  ani_utilizare INT DEFAULT NULL,
  PRIMARY KEY (cod_tren),
  FOREIGN KEY (cod_com) REFERENCES companii(cod_com) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE vehicule (
  cod_tren INT,
  viteza_maxima VARCHAR(30) NOT NULL,
  inaltime VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_tren),
  FOREIGN KEY (cod_tren) REFERENCES trenuri(cod_tren) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE specificatii_tren (
  cod_tren INT,
  tonaj VARCHAR(30) NOT NULL,
  tip_motor VARCHAR(30) NOT NULL,
  putere VARCHAR(30) NOT NULL,
  PRIMARY KEY (cod_tren),
  FOREIGN KEY (cod_tren) REFERENCES trenuri(cod_tren) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE rute (
  cod_ruta INT AUTO_INCREMENT,
  statie_plecare INT NOT NULL,
  statie_sosire INT NOT NULL,
  ora_plecarii TIME DEFAULT NULL,
  ora_sosirii TIME DEFAULT NULL,
  schimbari INT DEFAULT NULL,
  facilitati VARCHAR(255) DEFAULT NULL,
  observatii VARCHAR(255) DEFAULT NULL,
  lungime VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (cod_ruta),
  FOREIGN KEY (statie_plecare) REFERENCES statii(cod_statie) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (statie_sosire) REFERENCES statii(cod_statie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE lucreaza_cu (
  cod_com VARCHAR(3),
  cod_statie INT,
  PRIMARY KEY (cod_com, cod_statie),
  FOREIGN KEY (cod_com) REFERENCES companii(cod_com) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cod_statie) REFERENCES statii(cod_statie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE apartin (
  cod_statie INT NOT NULL,
  cod_cb INT,
  PRIMARY KEY (cod_cb),
  FOREIGN KEY (cod_cb) REFERENCES case_de_bilete(cod_cb) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cod_statie) REFERENCES statii(cod_statie) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE ofera_bilete_pentru (
  cod_ruta INT,
  cod_cb INT,
  PRIMARY KEY (cod_ruta, cod_cb),
  FOREIGN KEY (cod_ruta) REFERENCES rute(cod_ruta) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cod_cb) REFERENCES case_de_bilete(cod_cb) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE administreaza (
  cod_com VARCHAR(3) NOT NULL,
  cod_tren INT,
  PRIMARY KEY (cod_tren),
  FOREIGN KEY (cod_tren) REFERENCES trenuri(cod_tren) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cod_com) REFERENCES companii(cod_com) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE parcurg (
  cod_tren INT,
  cod_ruta INT,
  PRIMARY KEY (cod_tren, cod_ruta),
  FOREIGN KEY (cod_ruta) REFERENCES rute(cod_ruta) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cod_tren) REFERENCES trenuri(cod_tren) ON DELETE CASCADE ON UPDATE CASCADE
);