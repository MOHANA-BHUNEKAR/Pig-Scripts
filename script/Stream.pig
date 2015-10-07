DEFINE FILTERAGE `pig/script/python.py`;
A = LOAD 'pig/input/inputPython.txt' using PigStorage('|') AS (id:int,name:chararray,age:int,location:chararray);
B = STREAM A through FILTERAGE;
dump B; 