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
SELECT * FROM "workers" WHERE extract(year from age("birthday"))  BETWEEN 23 AND 27 AND "salary" BETWEEN 400 AND 1000;
SELECT * FROM "workers" WHERE extract(year from age("birthday")) = 27 AND "salary" != 400;

DELETE FROM "workers" WHERE "id" = 7 RETURNING "id", "name";
DELETE FROM "workers" WHERE "name" = 'Kolya' RETURNING "id", "name";
DELETE FROM "workers" WHERE extract(year from age("birthday")) = 23 RETURNING "id", "name";

CREATE TABLE "hogwarts_position_list" (
  "id" serial PRIMARY KEY,
  "position" VARCHAR(68) NOT NULL,
 )

CREATE TABLE ""