from flask import Blueprint, abort, jsonify, Response

from domain.models import Alphabet
from domain.repository import Repository

import random
import json
import lxml.html
import re

blueprint = Blueprint('alphabet', __name__)


@blueprint.route('/alphabet/today', methods=['GET'])
def get_today_useful_message():
    title_of_the_page = lxml.html.parse('http://www.dictionary.com/wordoftheday/')
    word_of_the_day = title_of_the_page.find(".//title").text
    word_of_the_day = re.split("- |\|", word_of_the_day)
    return generate_image_list(word_of_the_day[1].strip())


@blueprint.route('/alphabet/text=<string:input>', methods=['GET'])
def generate_image_list(input):
    # 1. Convert unicodes or whatever!!! to string
    input = str(input)

    # 2. Check input, a word or sentence.
    if isinstance(input, str) == False:
        abort(400)
    # return 'Input is not string type. Please input as a word or a sentence.'

    # 3. Generate words list.
    words = list(input)
    if isinstance(words, list) == False:
        return "Splitting a sentence to characters was failed. Sorry."

    # 4. Generate image list which are matched to words.
    images = list()
    for item in words:
        found = search_alphabet_image(item)
        images.append(found)

    data = {
        "text": input,
        "cali": images
    }

    resp = Response(json.dumps(data), status=200, mimetype='application/json')
    return resp


# Search an image matched to input character. (Select image randomly? Character:Image = 1:N)
def search_alphabet_image(character):
    if isinstance(character, str) == False:
        return 'Input is not character. Sorry.'

    selected = Repository.db.session.query(Alphabet).filter_by(alphabet=character).all()

    if len(selected) <= 0:
        return "There is no matched words."

    choicedOne = random.choice(selected)

    return {
        "image": str(choicedOne.image_path),
        "geo": {
            "type": "Point",
            "geometry": {
                "type": "Point",
                "coordinates": [choicedOne.lat, choicedOne.long]
            },
            "properties": {
                "name": choicedOne.alphabet
            }
        },
        "zoom": choicedOne.zoom
    }


@blueprint.errorhandler(400)
def page_not_found(error):
    return "Sorry~~~"
    # TODO return render_template('page_not_found.html'), 400
