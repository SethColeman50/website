from flask import Flask
from flask import render_template

def create_app():
	app =  Flask(__name__)

	@app.route("/")
	def index():
		return render_template("index.html")

	return app

def launch():
	return create_app()

if __name__ == "__main__":
	create_app().run(host='0.0.0.0', port=5000)
