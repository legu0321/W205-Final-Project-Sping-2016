
##tranfer files into /data/finalproject/datafiles
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_1.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_2.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_3.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_4.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_5.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_6.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_7.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_8.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_9.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_10.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_11.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2015_12.zip -d /data/finalproject/datafiles/unzipped

unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_1.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_2.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_3.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_4.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_5.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_6.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_7.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_8.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_9.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_10.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_11.zip -d /data/finalproject/datafiles/unzipped
unzip /data/finalproject/datafiles/On_Time_On_Time_Performance_2014_12.zip -d /data/finalproject/datafiles/unzipped

#transfer into hdfs system
su - w205

hdfs dfs -mkdir /user/w205/finalproject/

hdfs dfs -mkdir /user/w205/finalproject/ontime_data

hdfs dfs -put /data/finalproject/datafiles/unzipped /user/w205/finalproject/ontime_data
