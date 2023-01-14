import braille
from flask import Flask
from flask import jsonify
from flask import request



app = Flask(__name__)


@app.route('/textToBraille/<string:text>', methods=['GET'])
def text_to_braille(text):
    text_to_braille = braille.textToBraille(text)
    return jsonify({'message' : text_to_braille})

@app.route('/', methods=['GET'])
def braille_to_text(): # braille IMAGE to text
    return jsonify({'message' : text_to_braille})


if __name__ == "__main__":
    app.run(debug=True)
