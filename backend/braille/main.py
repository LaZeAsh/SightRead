import braille
from flask import Flask
from flask import jsonify
from flask import request
from brailleImage import Image_Translate

app = Flask(__name__)

# Convert TEXT -> Braille String
@app.route('/textToBraille', methods=['POST'])
def text_to_braille():
    text = request.get_json()
    text_to_braille = braille.textToBraille(text['message'])
    return jsonify({'message' : text_to_braille})

# Convert Braille STRING -> TEXT
@app.route('/brailleTextToText', methods=['POST'])
def braille_text_to_text():
    text = request.get_json()
    translated_text = braille.brailleToTextArray(text['message'])
    return jsonify({'message' : translated_text})

# # any ImageLink -> TEXT
@app.route('/imageToText', methods=['POST'])
def get_image_text():
    text = request.get_json()
    text = braille.imageToText(text['message'])
    return jsonify({'message' : text})

# # Braille Image -> TEXT
@app.route('/brailleImageToText', methods=['POST'])
def braille_image_to_text():
    text = request.get_json()
    translator = Image_Translate(text['message'])
    text_returned = translator.main()
    return jsonify({'message' : text_returned})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=6000, threaded=True, debug=True)
