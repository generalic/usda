DROP TABLE IF EXISTS `food_group`;
CREATE TABLE `food_group` (
  id text PRIMARY KEY NOT NULL,
  name text NOT NULL
);

.separator "^"
.import data/FD_GROUP.txt food_group
