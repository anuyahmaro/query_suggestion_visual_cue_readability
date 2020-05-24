from flask import Flask, jsonify, request
from gingerit.gingerit import GingerIt

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return "hi webserver is working!!!"

@app.route('/gingerReqn')
def get_request_by_url():
    print(request.args.get('word'))
    term=request.args.get('word')
    parser = GingerIt()
    suggestions_json = parser.parse(term)
    print (suggestions_json)
    return jsonify(suggestions_json)

if __name__ == '__main__':
    app.run(host='0.0.0.0',port='4579')