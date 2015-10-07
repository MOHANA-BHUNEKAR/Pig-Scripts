IMPORT 'pig/script/countRecords.macro';
EMP = LOAD 'pig/input/Employees.txt';
B = COUNTTEST(EMP);
dump B;
