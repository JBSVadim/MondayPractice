DROP TABLE "workers";
CREATE TABLE "workers" (
  "id" serial PRIMARY KEY,
  "birthday" date NOT NULL,
  "name" VARCHAR(36),
  "salary" DECIMAL(10,2)  NOT NULL
);
SELECT *
FROM "workers"
INSERT INTO "workers" ("birthday", "name", "salary")
VALUES ('1990-1-1', 'Nikita', 300),
('1991-1-1', 'Svetlana', 1200),
('1980-1-1', 'Yaroslav', 1200),
('1993-1-1', 'Petr', 1000),
('1998-1-1', 'Vasya', 200),
('1994-1-1', 'Vadim', 1000)

UPDATE "workers" SET "salary" = 200 WHERE "name" = 'Vasya';
UPDATE "workers" SET "birthday" = '1987-1-1' WHERE "id" = 4;
UPDATE "workers" SET "salary" = 700 WHERE "salary" < 500;
UPDATE "workers" SET "birthday" = '1999-1-1' WHERE "id" BETWEEN 2 AND 5;
UPDATE "workers" SET "name" = 'Jenya', "salary" = 900 WHERE "name" = 'Vasya';

SELECT * FROM "workers" WHERE "id" = 3;
SELECT * FROM "workers" WHERE "salary" > 400;
SELECT * FROM "workers" WHERE "salary" != 500;
SELECT "birthday", "salary" FROM "workers" WHERE "name" = 'Jenya';
SELECT * FROM "workers" WHERE "name" = 'Petr';
SELECT * FROM "workers" WHERE "name" != 'Petr';
SELECT * FROM "workers" Where extract(year from age("birthday")) = 27 AND "salary" = 1000;
SELECT * FROM "workers" WHERE extract(year from age("birthday")) BETWEEN 26 AND 28;
SELECT * FROM "workers" WHERE extract(year from age("birthday"))  BETWEEN 23 AND 27 OR "salary" BETWEEN 400 AND 1000;
SELECT * FROM "workers" WHERE extract(year from age("birthday")) = 27 AND "salary" != 400;

DELETE FROM "workers" WHERE "id" = 7 RETURNING "id", "name";
DELETE FROM "workers" WHERE "name" = 'Kolya' RETURNING "id", "name";
DELETE FROM "workers" WHERE extract(year from age("birthday")) = 23 RETURNING "id", "name";
DROP TABLE "hogwarts_position_list"


CREATE TABLE "hogwarts_position_list" (
  "id" serial PRIMARY KEY,
  "position" VARCHAR(68) NOT NULL CHECK ("position" != '')
);
INSERT INTO "hogwarts_position_list" ("position") VALUES ('Coach'),('Strip Dancer'), ('Black Jack Diller'),('Slut');
SELECT * FROM "hogwarts_position_list";

CREATE TABLE "workers_to_position" (
  "worker_id" int REFERENCES "workers"("id"),
  "position" int REFERENCES "hogwarts_position_list" ("id")
)
INSERT INTO "workers_to_position" VALUES (1,1), (2,2), (4,3),(5,4)
SELECT * FROM "workers_to_position"


SELECT avg("height") AS "Avarange height" FROM "users";
SELECT avg("height"), "is_male" AS "Avarange height" FROM "users" GROUP BY "is_male";
SELECT min("height"), "is_male" FROm "users" GROUP BY "is_male";
SELECT min("height"), max("height"), avg("height"), "is_male" FROm "users" GROUP BY "is_male";
SELECT COUNT(*) FROM "users" WHERE "birthday" = '1970-1-1';
SELECT COUNT(*) FROM "users" WHERE "first_name" = 'William';
SELECT COUNT(*) FROm "users" WHERE extract(year from age("birthday")) BETWEEN 20 AND 30;
