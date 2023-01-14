
#!/usr/local/bin/python3
# -*- coding: utf8 -*-

# Written by Aadit Trivedi
# June 6, 2018
# Braille Library

# Modified by Jackson Lippert
# January 14, 2022
# Better braille library

# # Dependencies
# 1) pip3 install SpeechRecognition
# 2) pip3 install numpy
# 3) pip3 install pillow
# 4) sudo apt-get install pytesseract
# 5) sudo apt-get install opencv-python
# 6) pip3 install opencv

import numpy as np
import PIL
import PIL.Image as Image
import pytesseract as pt
from model import asciicodes, brailles

ascii_braille = {}
ascii_letters = {}

arrayLength = len(asciicodes)
counter = 0

while counter < arrayLength:
    ascii_braille[asciicodes[counter]] = brailles[counter]
    ascii_letters[brailles[counter]] = asciicodes[counter]
    counter = counter + 1

letterToImgPath = {
    "a": "images/a.png",
    "b": "images/b.png",
    "c": "images/c.png",
    "d": "images/d.png",
    "e": "images/e.png",
    "f": "images/f.png",
    "g": "images/g.png",
    "h": "images/h.png",
    "i": "images/i.png",
    "j": "images/j.png",
    "k": "images/k.png",
    "l": "images/l.png",
    "m": "images/m.png",
    "n": "images/n.png",
    "o": "images/o.png",
    "p": "images/p.png",
    "q": "images/q.png",
    "r": "images/r.png",
    "s": "images/s.png",
    "t": "images/t.png",
    "u": "images/u.png",
    "v": "images/v.png",
    "w": "images/w.png",
    "x": "images/x.png",
    "y": "images/y.png",
    "z": "images/z.png",
    " ": "images/void.png",
}

def addImages(list_im):
    imgs = [ PIL.Image.open(i) for i in list_im ]
    min_shape = sorted( [(np.sum(i.size), i.size ) for i in imgs])[0][1]
    imgs_comb = np.hstack( (np.asarray( i.resize(min_shape) ) for i in imgs ) )
    imgs_comb = PIL.Image.fromarray(imgs_comb)
    imgs_comb.save('output.jpg')  

def writeImage(b_string):
    images = []
    for letter in b_string:
        images.append(letterToImgPath[letter])
    addImages(images)    
    img = Image.open('output.jpg')
    img.show()

def writeText(b_string):
    final_string = ''
    for letters in b_string:
        final_string = final_string + ascii_braille[letters.lower()]
    return final_string

def textToBraille(text):
    final_string = ''
    for char in text:
        char = char.lower()
        final_string = final_string + ascii_braille[char]
    return final_string

def brailleToTextArray(array):
    new_chars = ''
    for key in array:
        new_chars = new_chars + str(ascii_letters[key])
    return new_chars

def imageToText(img):
    return pt.image_to_string(Image.open(img))

def imageToBraille(img):
    textToBraille(imageToText(img))

letters = "⠓⠑⠇⠇⠕⠀⠺⠕⠗⠇⠙⠮"

pt.pytesseract.tesseract_cmd = r'C:/Program Files/Tesseract-OCR/tesseract.exe'

print(textToBraille("Hello World!"))
print(brailleToTextArray(letters))
print(imageToText("Braille-Interpreter/backend/braille/images/Picture1.png"))
