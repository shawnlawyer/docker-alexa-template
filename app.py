from flask import Flask, g, json, render_template
from flask_ask import Ask, statement, question, context, session, request, elicit_slot, confirm_slot, delegate
import logging
log = logging.getLogger('flask_ask').setLevel(logging.DEBUG)

def create_app():
    app = Flask(__name__)
    return app

app = create_app()
app.secret_key = 'HBJL66XPAAQ5T77M5ORNH6D5EHILXSJFAY7UVOTQOBBK6EYGSJUR5PHXGLUEVREU7'
ask = Ask(app, '/alexa')

@ask.launch
def launch():
    return statement("Hello")

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
