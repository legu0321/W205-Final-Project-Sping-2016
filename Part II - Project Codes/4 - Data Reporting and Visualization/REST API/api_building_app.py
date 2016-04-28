from flask import Flask, request
from flask_restful import Resource, Api
from sqlalchemy import create_engine
from json import dumps
import psycopg2

import os
SQLALCHEMY_DATABASE_URI = "postgresql+psycopg2://w205:MIDS@localhost/ontime"
e = create_engine(SQLALCHEMY_DATABASE_URI)
app = Flask(__name__)
api = Api(app)

class DelaysAirport(Resource):
    def get(self,airport):
        # connect to the db
        conn = e.connect()
        query = conn.execute("SELECT Year,Month,sum(case when DepDel15='1.00' then 1 else 0 end) as delays, cast(count(*) as float)  as pct FROM ontime_data WHERE Origin = '%s' Group by Year,Month Order by Year,Month;" % airport)
        result = {"Delays": [{"Year":i[0], "Month":i[1], "Count of Delays":i[2] , "Delay%":i[2]/i[3] }for i in query.cursor.fetchall()]}
        return result

class DelaysAircraft(Resource):
    def get(self,aircraft):
        # connect to the db
        conn = e.connect()
        query = conn.execute("SELECT a.Year,Month,sum(case when DepDel15='1.00' then 1 else 0 end) as delays, cast(count(*) as float)  as pct FROM ontime_data a        join airplane_data b on a.TailNum=b.tailnum WHERE manufacturer = '%s' Group by a.Year,Month Order by a.Year,Month;" % aircraft)
        result = {"Delays": [{"Year":i[0], "Month":i[1], "Count of Delays":i[2] , "Delay%":i[2]/i[3] }for i in query.cursor.fetchall()]}
        return result

class DelaysAirline(Resource):
    def get(self,airline):
        # connect to the db
        conn = e.connect()
        query = conn.execute("SELECT Year,Month,sum(case when DepDel15='1.00' then 1 else 0 end) as delays,cast(count(*) as float)  as pct FROM ontime_data WHERE Carrier = '%s' Group by Year,Month Order by Year,Month;" % airline)
        result = {"Delays": [{"Year":i[0], "Month":i[1], "Count of Delays":i[2] , "Delay%":i[2]/i[3] }for i in query.cursor.fetchall()]}
        return result

class WeatherAirport(Resource):
    def get(self,airport):
        # connect to the db
        conn = e.connect()
        query = conn.execute("SELECT weather_cond2,count(*) as c  FROM airport_weather WHERE airport = '%s' and weather_cond2 <>'' Group by weather_cond2 order by count(*) desc ;" % airport)
        result = {"Delays": [{"Weather":i[0], "Count":i[1] }for i in query.cursor.fetchall()]}
        return result

class Airport(Resource):
    def get(self,airport):
        # connect to the db
        conn = e.connect()
        query = conn.execute("SELECT Year,Month,count(*) as c FROM ontime_data WHERE Origin = '%s' and DepDel15='1.00' Group by Year,Month Order by Year,Month;" % airport)
        result = {"Number of Delays": [{"Year":i[0], "Month":i[1], "Count":i[2] }for i in query.cursor.fetchall()]}
        return result

api.add_resource(Airport, "/Airport/<string:airport>")
api.add_resource(DelaysAirport, "/DelaysAirport/<string:airport>")
api.add_resource(DelaysAircraft, "/DelaysAircraft/<string:aircraft>")
api.add_resource(DelaysAirline, "/DelaysAirline/<string:airline>")
api.add_resource(WeatherAirport, "/WeatherAirport/<string:airport>")


if __name__ == '__main__':
        test_con = e.connect()
        test_query = "SELECT * FROM ontime_data LIMIT 1;"
        test_result = test_con.execute(test_query)
        print test_result.cursor.fetchall()
        port = int(os.environ.get("PORT", 8080))
        app.run(host='0.0.0.0', port=port, debug=True)