CREATE TABLE name_table (
  StudentId Text PRIMARY KEY,
  Name TEXT NOT NULL
);
CREATE TABLE mark_table (
  StudentId Text PRIMARY KEY,
  Total_marks INTEGER NOT NULL
);

INSERT INTO name_table VALUES ('V001', 'Abe');
INSERT INTO name_table VALUES ('V002', 'Abhay');
INSERT INTO name_table VALUES ('V003', 'Acelin');
INSERT INTO name_table VALUES ('V004', 'Adelphos');

INSERT INTO mark_table VALUES ('V001', 95);
INSERT INTO mark_table VALUES ('V002', 80);
INSERT INTO mark_table VALUES ('V003', 74);
INSERT INTO mark_table VALUES ('V004', 81);

SELECT name_table.StudentId, name_table.Name FROM name_table, mark_table
WHERE name_table.StudentId = mark_table.StudentId 
AND mark_table.Total_marks > (SELECT Total_marks from mark_table WHERE mark_table.StudentId = 'V002');