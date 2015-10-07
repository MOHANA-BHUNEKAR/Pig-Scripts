DEFINE UPPERUDF com.cloudwick.pig.EvalFuncTest.SampleEval();
EVALTEST = Load 'pig/input/eval.txt' using PigStorage(',')  as (f1:chararray,f2:chararray);
UPPERTEST = FOREACH EVALTEST GENERATE UPPERUDF(f1),f2;
dump UPPERTEST;
EXPLAIN UPPERTEST;
