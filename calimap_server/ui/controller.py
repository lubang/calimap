from flask import Blueprint, send_from_directory

blueprint = Blueprint('controller', __name__, static_folder='static')


@blueprint.route('/')
def root():
    return blueprint.send_static_file('index.html')


@blueprint.route('/<path:path>')
def static_proxy(path):
    print path
    return send_from_directory('static', path)
