from flask import Blueprint, send_from_directory
from os.path import dirname, join

blueprint = Blueprint('controller', __name__)
rootDir = join(dirname(dirname(__file__)), 'web')
dbDir = join(dirname(dirname(__file__)), 'db')

@blueprint.route('/')
def root():
    return send_from_directory(rootDir, 'index.html')


@blueprint.route('/<path:filename>')
def serve(filename):
    return send_from_directory(rootDir, filename)


@blueprint.route('/db/<path:filename>')
def serve_image(filename):
    return send_from_directory(dbDir, filename)
