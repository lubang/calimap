from flask import Flask, jsonify, request
from models import Base, Alphabet
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////Users/changhokim/calimap_server/database/sqlite/calimap_main.db'
db = SQLAlchemy(app)

@app.route('/', methods=['GET'])
def main():
	allAlphabets = db.session.query(Alphabet).all()
	return u"<br>".join([u"{0}: {1}	{2}	{3}	{4}".
		format(item.alphabet, item.lat, item.long, item.zoom, item.image_path) 
		for item in allAlphabets])

@app.route('/api/v1/alphabet/text=<string:input>', methods=['GET'])
def search(input):
	return 'A'

if __name__ == '__main__':
	app.run(debug=True, port=5000)