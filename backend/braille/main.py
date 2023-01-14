import braille
from flask import Flask
from flask import jsonify
from flask import request

app = Flask(__name__)

@app.route('/textToBraille/<string:text>', methods=['GET'])
def text_to_braille(text):
    text_to_braille = braille.textToBraille(text)
    return jsonify({'message' : text_to_braille})

@app.route('/brailleToText/<string:text>', methods=['GET'])
def braille_to_text(text):
    translated_text = braille.brailleToTextArray(text)
    return jsonify({'message' : translated_text})

@app.route('/brailleToText/<string:link>', methods=['GET'])
def get_image_text(link):
    text = braille.imageToText(link)
    return jsonify({'message' : text})

@app.route('/brailleToText/<string:link>', methods=['GET'])
def get_image_text(link):
    text = braille.imageToBraille(link)
    return jsonify({'message' : text})

@app.route('/', methods=['GET'])
def hello():
    return "Hello"

if __name__ == "__main__":
    app.run(debug=True)
