spark-submit --verbose --class org.inceptez.fleet.fleetbatchscd --master yarn /home/hduser/fleet/realtime-0.0.1-SNAPSHOT-jar-with-dependencies.jar --deploy-mode client --queue default --driver-memory 512m --num-executors 1 --executor-cores 2 --executor-memory 512m --spark-shuffle-compress true --spark-speculation true --spark-dynamicAllocation-enabled true --spark-dynamicAllocation-initialExecutors 1 --spark-dynamicAllocation-minExecutors 1 --spark-dynamicAllocation-maxExecutors 2 --spark-dynamicAllocation-executorIdleTimeout 30s --conf spark.shuffle.service.enabled true --conf spark.sql.shuffle.partitions=4

