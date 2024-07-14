# fleet-analysis
This project provides the realtime information of the driving pattern of the vehicles driven by the different drivers across the world. We will calculate the wages, distance driven etc in realtime joining with the batch data.

*Tools used - Hadoop, Spark, Nifi, elasic search, kibana*

*Project Flow*

● Data ingestion <br />
Data is in MySQL database which is sent to HDFS for primary staging using SQOOP <br />
● Linux shell script - breaks large data to smaller files and sends them after an interval of 10 seconds <br />
● Nifi data flow pushes these small files to Kafka <br />
● Spark program - reads HDFS & KAFKA DATA —> Creates df, temporary views, joins data <br />
● This data is put into elastic search indices<br />
● Kibana is used for visualisation<br />


*Architecture*

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/5f3c3521-8476-4a76-b5fd-50ea801e4bf6)

<br />
Nifi flow

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/298c9652-3a06-47ee-a3b5-5fb67991f880)

<br /> 
Kibana visualisation
<br />

![image](https://github.com/japn3et/fleet-analysis/assets/140784801/00270350-147e-43b0-8b67-f33d3285858a)

<br />



