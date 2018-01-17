DROP TABLE IF EXISTS `weight`;
CREATE TABLE `weight` (
  food_id text REFERENCES food(id) NOT NULL,
  weight_id int NOT NULL,
  quantity float NOT NULL DEFAULT '',
  unit text NOT NULL DEFAULT '',
  eqv float NOT NULL DEFAULT '',
  unused_1 text,
  unused_2 text,
  PRIMARY KEY(food_id, weight_id)
);

.separator "^"
.import data/WEIGHT.txt weight
