DEPT = Load '~/pig/input/dept.txt' using PigStorage(',') AS (id:int,name:chararray);
A = Load '/tmp/emp.txt' using PigStorage(',') AS (id,name,dept);
B = DISTINCT A;
dump B;



