from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.ext.declarative import declarative_base

# References
# 1. https://github.com/mitsuhiko/flask-sqlalchemy/issues/98

Base = declarative_base()

class Alphabet(Base):
    __tablename__ = 'alphabet'

    id = Column(Integer, primary_key=True)
    alphabet = Column(String(1))
    lat = Column(Float)
    long = Column(Float)
    zoom = Column(Integer)
    image_path = Column(String(50))

    def __init__(self, alphabet=None, lat=None, long=None, zoom=None, image_path=None):
        self.alphabet = alphabet
        self.lat = lat
        self.long = long
        self.zoom = zoom
        self.image_path = image_path

    def __repr__(self):
        return '<Alphabet %r>' % (self.alphabet)

    def as_dict(self):
        return {c.name: getattr(self, c.name) for c in self.__table__.columns}