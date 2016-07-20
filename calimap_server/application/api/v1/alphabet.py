from flask import Blueprint

from domain.models import Alphabet
from domain.repository import Repository

blueprint = Blueprint('alphabet', __name__)


@blueprint.route('/alphabet/today', methods=['GET'])
def getTodayAlphabet():
    allAlphabets = Repository.db.session.query(Alphabet).all()
    return u"<br>".join([u"{0}: {1}	{2}	{3}	{4}".
                        format(item.alphabet, item.lat, item.long, item.zoom, item.image_path)
                         for item in allAlphabets])


@blueprint.route('/alphabet/text=<string:input>', methods=['GET'])
def search(input):
    return 'A'
