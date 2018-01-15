DROP TABLE IF EXISTS `weight`;
CREATE TABLE `weight` (
  food_id int PRIMARY KEY REFERENCES food(id) NOT NULL,
  weight_id int PRIMARY KEY NOT NULL,
  quantity float NOT NULL DEFAULT '',
  unit text NOT NULL DEFAULT '',
  eqv float NOT NULL DEFAULT '',
  manufac_name text NOT NULL DEFAULT '',
  refuse int NOT NULL,
  PRIMARY KEY (food_id, weight_id)
);

.separator "^"
.import data/WEIGHT.txt weight
