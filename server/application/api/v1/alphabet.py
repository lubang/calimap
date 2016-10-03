from flask import Blueprint, abort, jsonify, Response, request

from domain.alphabet_models import Alphabet
from domain.history_models import SearchHistory
from domain.repository import Repository

import random
import json
import lxml.html
import re
import datetime, time

blueprint = Blueprint('alphabet', __name__)


@blueprint.route('/alphabet/today', methods=['GET'])
def get_today_useful_message():
    title_of_the_page = lxml.html.parse('http://www.dictionary.com/wordoftheday/')
    word_of_the_day = title_of_the_page.find(".//title").text
    word_of_the_day = re.split("- |\|", word_of_the_day)
    return generate_image_list(word_of_the_day[1].strip())


@blueprint.route('/alphabet/text=<string:input>', methods=['GET'])
def generate_image_list(input):
    input = str(input)
    if isinstance(input, str) == False:
        abort(400)

    words = list(input)
    if isinstance(words, list) == False:
        return "Splitting a sentence to characters was failed. Sorry."

    images = list()
    for item in words:
        found = search_alphabet_image(item)
        images.append(found)

    data = {
        "text": input,
        "cali": images
    }

    save_history(request, input)
    Repository.db.session.close()

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


def save_history(request, input):
    searched_keyword = input
    ip = request.remote_addr
    searched_time = datetime.datetime.fromtimestamp(time.time())
    client_platform = request.user_agent.platform
    client_browser = request.user_agent.browser

    t = SearchHistory(searched_keyword, ip, searched_time, client_platform, client_browser)

    Repository.db.session.add(t)
    Repository.db.session.commit()


@blueprint.errorhandler(400)
def page_not_found(error):
    return "Sorry~~~"
    # TODO return render_template('page_not_found.html'), 400
