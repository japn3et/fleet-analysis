# fleet-analysis
This project provides the realtime information of the driving pattern of the vehicles driven by the different drivers across the world. We will calculate the wages, distance driven etc in realtime joining with the batch data.

*Project Flow*

Batch:<br />

1. Spark JDBC for injecting the drivers, timesheet data from database.<br />

2. SCP source data into Linux file system of Ingestion node to HDFS for persisting the data in the raw
layer -> clean/curate and load into curated layer -> apply SCD and store into Dimension tables -> Apply
masking and load into trusted layer -> Data is available for consumption/discovery and Analytics
<br />
Realtime:<br />
4. Run a linux shell script to simulate the realtime vehicle movement by reading data from events file
and create smaller files.
<br />
5. NIFI data flow to read the data from the files created in step 3 and push the data to Kafka.
5.Spark Program to read the data from HDFS location where sqoop imported and read from Kafka,
create dataframes, temporary views in spark and join the sqoop data with the kafka data and persist
into Elastic search indices.<br />

6. Kibana visualizations and dashboards created for reporting.
<br />

*Prerequisites*
Ensure Hadoop, Spark, Eclipse IDE for scala, NIFI, Kafka, Elastic Search and Kibana are installed in the
node.

*Architecture*

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/ed66ebd2-a17c-482b-a4d8-8cc0b78c1688)
![image](https://github.com/japn3et/fleet-analysis/assets/140784801/5f3c3521-8476-4a76-b5fd-50ea801e4bf6)
