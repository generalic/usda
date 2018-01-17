#!/usr/bin/env python

import json
import sqlite3

# if len(sys.argv) != 2:
#   sys.exit('Must provide food id to get nutrition for')

NDB_NUMBER = 1005

conn = sqlite3.connect('../usda.sql3')
c = conn.cursor()
c.execute("""
  SELECT
    unit, 
    eqv
  FROM weight
  WHERE food_id = ?
""", (NDB_NUMBER,))
vals = {}
for row in c:
    vals[row[0]] = row[1]

print json.dumps(vals, sort_keys=True, indent=4)

for k in vals:
    print k
