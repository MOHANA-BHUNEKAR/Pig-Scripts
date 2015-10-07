A = LOAD '/user/MohanaKrsihna/inputFiles/WordCountTest.txt'; 

 B = MAPREDUCE '/var/hdfs-input/HadoopDev-0.0.1-SNAPSHOT.jar' STORE A into '/user/MohanaKrishna/inputFiles/pigwc' LOAD '/user/MohanaKrishna/pigoutwc' as (word:chararray,count:int) `com.cloudwick.hadoop.HadoopDev.WordCount /user/MohanaKrishna/inputFiles/pigwc /user/MohanaKrishna/pigoutwc`;

dump B;
