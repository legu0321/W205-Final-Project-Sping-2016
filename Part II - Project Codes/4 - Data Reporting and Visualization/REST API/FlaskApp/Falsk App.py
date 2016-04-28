from flask import Flask, render_template, request,redirect
app = Flask(__name__)

@app.route("/")
def main():
    return render_template('result_new.html')

@app.route('/queryairport',methods=['POST'])
def queryairport():
	name = request.form['airport']
	a='http://ec2-XX-XX-XXX-XX.compute-1.amazonaws.com:8080/DelaysAirport/'+name #please replace the XX-XX part with your EC2 instance hostname
	print(a)
	return redirect(a)

@app.route('/querymanu',methods=['POST'])
def querymanu():
	name = request.form['manufacturer']
	a='http://ec2-XX-XX-XXX-XX.compute-1.amazonaws.com:8080/DelaysAircraft/'+name #please replace the XX-XX part with your EC2 instance hostname
	print(a)
	return redirect(a)

@app.route('/queryairline',methods=['POST'])
def queryairline():
	name = request.form['airline']
	a='http://ec2-XX-XX-XXX-XX.compute-1.amazonaws.com:8080/DelaysAirline/'+name #please replace the XX-XX part with your EC2 instance hostname
	print(a)
	return redirect(a)
@app.route('/queryweather',methods=['POST'])
def queryweather():
	name = request.form['air']
	a='http://ec2-XX-XX-XXX-XX.compute-1.amazonaws.com:8080/WeatherAirport/'+name #please replace the XX-XX part with your EC2 instance hostname
	print(a)
	return redirect(a)
    

 		
		
		
if __name__ == "__main__":
    app.run()