DROP TABLE IF EXISTS `weight`;
CREATE TABLE `weight` (
  food_id int REFERENCES food(id) NOT NULL,
  weight_id int NOT NULL,
  quantity float NOT NULL DEFAULT '',
  unit text NOT NULL DEFAULT '',
  eqv float NOT NULL DEFAULT '',
  manufac_name text NOT NULL DEFAULT '',
  refuse int NOT NULL,
  PRIMARY KEY (food_id, weight_id)
);

.separator "^"
.import data/WEIGHT.txt weight
