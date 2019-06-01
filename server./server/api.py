from flask import Flask, jsonify, request, abort
from models import Base, Alphabet
from flask_sqlalchemy import SQLAlchemy
import random

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:////Users/changhokim/calimap/calimap_server/database/sqlite/calimap_main.db'
db = SQLAlchemy(app)

@app.route('/', methods=['GET'])
def main():
	allAlphabets = db.session.query(Alphabet).all()
	return u"<br>".join([u"{0}: {1}	{2}	{3}	{4}".
		format(item.alphabet, item.lat, item.long, item.zoom, item.image_path) 
		for item in allAlphabets])

@app.route('/api/v1/alphabet/text=<string:input>', methods=['GET'])
def generate_image_list(input):
	# 1. Convert unicodes or whatever!!! to string
	input = str(input)

	# 2. Check input, a word or sentence.
	if isinstance(input, str) == False:
		abort(400)
		#return 'Input is not string type. Please input as a word or a sentence.'

	# 3. Generate words list.
	words = list(input)
	if isinstance(words, list) == False:
		return "Splitting a sentence to characters was failed. Sorry."
	
	# TODO 4. Generate image list which are matched to words.
	return search_alphabet_image('A')

	# TODO 5. Generate return value
	#resp = Response(js, status=200, mimetype='application/json')
	# resp.headers['Link'] = 'http://127.0.0.1:5000'
	
	#return input

# Search an image matched to input character. (Select image randomly? Character:Image = 1:N)
def search_alphabet_image(character):
	if isinstance(character, str) == False:
		return 'Input is not character. Sorry.'

	selected = 	db.session.query(Alphabet).filter_by(alphabet=character).all()
	print(selected)

	choicedOne = random.choice(selected)
	print(choicedOne)
	
	temp = u"<br>".join([u"{0}: {1}	{2}	{3}	{4}".
		format(item.alphabet, item.lat, item.long, item.zoom, item.image_path) 
		for item in selected])

	print(type(temp))
	print(temp)

	return u"{0}: {1} {2} {3} {4}".format(choicedOne.alphabet, choicedOne.lat, choicedOne.long, choicedOne.zoom, choicedOne.image_path)

@app.errorhandler(400)
def page_not_found(error):
	return "Sorry~~~"
    # TODO return render_template('page_not_found.html'), 400

if __name__ == '__main__':
	app.run(debug=True, port=5000)