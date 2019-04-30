from flask import Flask, request, jsonify
import json

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def home():
    return jsonify({"hello": "world"})

@app.route('/submit', methods=['POST', 'PUT'])
def submit():
    form_submission = json.loads(request.form['data'])
    return jsonify({
        "form_submission": form_submission,
        })

"""
Send a POST with form data:
curl -X POST http://localhost:5000/submit -F 'data={"key1":"val1"}'
"""
