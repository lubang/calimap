from sqlalchemy import Column, Integer, String, TIMESTAMP
from sqlalchemy.ext.declarative import declarative_base

# References
# 1. https://github.com/mitsuhiko/flask-sqlalchemy/issues/98

Base = declarative_base()

class SearchHistory(Base):
    __tablename__ = 'search_history'

    id = Column(Integer, primary_key=True)
    searched_keyword = Column(String(50))
    ip = Column(String(50))
    searched_time = Column(TIMESTAMP)
    client_platform = Column(String(50))
    client_browser = Column(String(50))

    def __init__(self, searched_keyword=None, ip=None, searched_time=None, client_platform=None, client_browser=None):
        self.searched_keyword = searched_keyword
        self.ip = ip
        self.searched_time = searched_time
        self.client_platform = client_platform
        self.client_browser = client_browser