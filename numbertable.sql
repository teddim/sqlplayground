-- this is a very contrived example just to show how to get the data we are looking for by using the different types of joins.

-- LEFT JOIN is equivalent to LEFT OUTER JOIN
-- RIGHT JOIN is equivalent to RIGHT OUTER JOIN
-- FULL JOIN is equivalent to FULL OUTER JOIN
-- JOIN is equivalent to INNER JOIN
-- http://stackoverflow.com/questions/406294/left-join-and-left-outer-join-in-sql-server

DROP TABLE IF EXISTS personA;
DROP TABLE IF EXISTS personB;

CREATE TABLE personA(
  idA INTEGER PRIMARY KEY,
  petnameA TEXT
);

CREATE TABLE personB(
  idB INTEGER PRIMARY KEY,
  petnameB TEXT
);


INSERT into personA(idA, petnameA) values (1,'A');
INSERT into personA(idA, petnameA) values (2,'B');
INSERT into personA(idA, petnameA) values (3,'C');
INSERT into personA(idA, petnameA) values (4,'D');

INSERT into personB(idB, petnameB) values (2,'B');
INSERT into personB(idB, petnameB) values (3,'C');
INSERT into personB(idB, petnameB) values (5,'E');

-- I want 1,2,3,4,5 (everything from both tables)

-- I want 1,2,3,4 (everything from personA table)

-- I want 1,4 (these items are only in personA table)

-- I want 2,3 (these are the items common to both tables)

-- I want 2,3,5 (these are in personB table and they may overlap with personA table)

-- I want 5 (the items that are only in the personB table)
