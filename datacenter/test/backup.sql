DROP TABLE user;

CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `sid` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cyear` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO user VALUES("1","1","SUJATHA. S","2014");
INSERT INTO user VALUES("2","2","ram","2015");



