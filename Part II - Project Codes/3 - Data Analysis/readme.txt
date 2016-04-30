[Tableau Workbook] contains data explorations with Tableau to assess the importance of various features
                  - Delay by carrier
                  - Delay by time of day
                  - Delay by distance group
                  - Delay by month
                  - Popular routes
                  
[iPython and Postgres Setup] contains instructions to setup the iPython notebook environment in the AWS EC2 instance and to launch Postgres.

[Delay prediction - Postgres data source] contains a machine learning prediction model that uses features across different datasets to predict the "DepDel15" variable (whether or not there is a delay of 15 minutes or more). Data in this model was loaded in from Postgres database. However, we were only able load in a small subset of data due to the constraint of the iPython kernel (it crashes and restarts everytime we tried to load in more rows).

[Delay prediction - Local data source] same as above except that data was loaded in locally. We were able to load in more data and build a more generalizable model.
