raw = LOAD '/home/cloudera/db/user/HiveDemo' USING PigStorage(',') AS (id, name);
DUMP raw;
rawgr = GROUP raw BY (name);
grcount = FOREACH rawgr GENERATE COUNT(raw.id);
DUMP grcount;
