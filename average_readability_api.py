import requests
import sys
import re, json
import numpy as np
from urllib.parse import urlparse
from urllib.request import urlopen
from bs4 import BeautifulSoup
from flask import Flask, jsonify, request
import textstat
from flask_cors import CORS, cross_origin


def bing_search(query, num = 10):
    res_data_l, res_data_d = [], {}

    url = 'https://irlab-bsu.cognitiveservices.azure.com/bing/v7.0/search'
    # query string parameters
    payload = {'q': query, 'count': num}
    # custom headers
    headers = {'Ocp-Apim-Subscription-Key': '3c4133998b124ae19137b6ac3937a031'}
    # make GET request
    r = requests.get(url, params = payload, headers = headers)
    result = r.json()
    try:
        for s in result["webPages"]["value"]:
            res_data_d["url"] = s["url"]
            res_data_d["title"] = s["name"]
            res_data_d["snippet"] = s["snippet"]
            res_data_l.append(res_data_d.copy())
    except Exception:
        pass
    return res_data_l

def average_readability(q):
    readability_score = []
    results = bing_search(q)
    for x in results:
        try:
            score = textstat.flesch_kincaid_grade(x["snippet"])

            readability_score.append(score)
        except Exception:
            readability_score.append(-70)
            pass
    return round(np.mean(readability_score))


app = Flask(__name__)
app.config['SECRET_KEY'] = 'mini mimi'
app.config['CORS_HEADERS'] = 'Content-Type'

cors = CORS(app, resources={r"/foo": {"origins": 'http://localhost:8888'}})

@app.route('/', methods=['GET'])
def home():
    return "hi webserver is working!!!"

@app.route('/average_readability_api')
def get_request_by_url():
    print(request.args.get('queryterm'))
    term=request.args.get('queryterm')
    suggestions_json = average_readability(term)
    response = jsonify(suggestions_json)
    response.headers.add('Access-Control-Allow-Origin', 'http://localhost:8888')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type,Authorization')
    response.headers.add('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE')
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='4600')