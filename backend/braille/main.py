import braille
from flask import Flask
from flask import jsonify
from flask import request
from .brailleImage import Image_Translate

app = Flask(__name__)

# Convert TEXT -> Braille String
@app.route('/textToBraille/<string:text>', methods=['GET'])
def text_to_braille(text):
    text_to_braille = braille.textToBraille(text)
    return jsonify({'message' : text_to_braille})

# Convert Braille STRING -> TEXT
@app.route('/brailleTextToText/<string:text>', methods=['GET'])
def braille_text_to_text(text):
    translated_text = braille.brailleToTextArray(text)
    return jsonify({'message' : translated_text})

# any ImageLink -> TEXT
@app.route('/imageToText/<string:url>', methods=['GET'])
def get_image_text(url):
    text = braille.imageToText(url)
    return jsonify({'message' : text})

# # Braille Image -> TEXT
@app.route('/brailleImageToText/<string:url>', methods=['GET'])
def braille_image_to_text(url):
    translator = Image_Translate(url)
    text = translator.main()
    return jsonify({'message' : text})


if __name__ == "__main__":
    app.run(debug=True)
