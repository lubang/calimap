from flask import Flask
from flask_sqlalchemy import SQLAlchemy

from domain.repository import Repository
from application.api.v1 import alphabet
from ui import controller

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///db/calimap.sqlite'

Repository.db = SQLAlchemy(app)

app.register_blueprint(controller.blueprint)
app.register_blueprint(alphabet.blueprint, url_prefix='/api/v1')

if __name__ == '__main__':
    app.run()
