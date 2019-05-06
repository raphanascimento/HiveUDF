export PATH=${PATH}:/usr/java/jdk1.7.0_67-cloudera/bin
rm -f ./IsNullOrEmpty.jar
rm -f ./IsNullOrEmpty.class
javac -classpath .:/opt/cloudera/parcels/CDH-5.15.1-1.cdh5.15.1.p0.4/lib/hive/lib/hive-exec.jar IsNullOrEmpty.java
jar cf IsNullOrEmpty.jar IsNullOrEmpty.class
chmod 775 ./IsNullOrEmpty.jar
chmod 775 ./IsNullOrEmpty.class
hdfs dfs -put -f ./IsNullOrEmpty.jar /udf/IsNullOrEmpty
hdfs dfs -put -f ./IsNullOrEmpty.class /udf/IsNullOrEmpty
hdfs dfs -chmod 777 /udf/IsNullOrEmpty/*
