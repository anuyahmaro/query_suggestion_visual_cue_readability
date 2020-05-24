import requests
import sys
import re, json
from urllib.parse import urlparse
from urllib.request import urlopen
from bs4 import BeautifulSoup
from flask import Flask, jsonify, request
from flask_cors import CORS, cross_origin

def get_kidzsearch_suggestions(q):
    q = "+".join(q.split())
    r = requests.get("https://www.kidzsearch.com/searchac.php?term=" + q)

    s = r.text
    all_suggestions = re.findall('\{.*?\}', s)
    all_suggestions = [x.replace('{"value":"', "").replace('"}',"") for x in all_suggestions]
    final_data = {"data": all_suggestions}
    return final_data

app = Flask(__name__)
app.config['SECRET_KEY'] = 'mini mimi'
app.config['CORS_HEADERS'] = 'Content-Type'

cors = CORS(app, resources={r"/foo": {"origins": 'http://localhost:8888'}})

@app.route('/', methods=['GET'])
def home():
    return "hi webserver is working!!!"

@app.route('/kidzsearch_api')
def get_request_by_url():
    term=request.args.get('queryterm')
#     parser = get_kidzsearch_suggestions()
    suggestions_json = get_kidzsearch_suggestions(term)
    response = jsonify(suggestions_json)
    # response.headers.add('Access-Control-Allow-Origin', http://localhost:8888')
    response.headers.add('Access-Control-Allow-Origin', 'http://localhost:8888')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='4571')