# fleet-analysis
This project provides the realtime information of the driving pattern of the vehicles driven by the different drivers across the world. We will calculate the wages, distance driven etc in realtime joining with the batch data.

*Project Flow*

Batch:<br />

1. Spark JDBC for injecting the drivers, timesheet data from database.<br />

2. SCP source data into Linux file system of Ingestion node to HDFS for persisting the data in the raw
layer -> clean/curate and load into curated layer -> apply SCD and store into Dimension tables -> Apply
masking and load into trusted layer -> Data is available for consumption/discovery and Analytics<br />

Realtime:<br />

4. Run a linux shell script to simulate the realtime vehicle movement by reading data from events file
and create smaller files.<br />

5. NIFI data flow to read the data from the files created in step 3 and push the data to Kafka.<br />

6. Spark Program to read the data from HDFS location where sqoop imported and read from Kafka,
create dataframes, temporary views in spark and join the sqoop data with the kafka data and perist
into Elastic search indices.<br />

7. Kibana visualizations and dashboards created for reporting.<br />

*Prerequisites*<br />

Ensure Hadoop, Spark, Eclipse IDE for scala, NIFI, Kafka, Elastic Search and Kibana are installed in the
node.

*Architecture*

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/ed66ebd2-a17c-482b-a4d8-8cc0b78c1688)
<br />

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/5f3c3521-8476-4a76-b5fd-50ea801e4bf6)
<br />


<br />
Nifi flow
![image](https://github.com/japn3et/fleet-analysis/assets/140784801/298c9652-3a06-47ee-a3b5-5fb67991f880)

<br /> 
Kibana visualisation
<br />

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/00270350-147e-43b0-8b67-f33d3285858a)

<br />
![image](https://github.com/japn3et/fleet-analysis/assets/140784801/c26164da-6cfa-4b2f-b0ea-2c432f569394)

<br />
![image](https://github.com/japn3et/fleet-analysis/assets/140784801/e7867afe-f072-4a82-a8ba-007d7a16b792)

