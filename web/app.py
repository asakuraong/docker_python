import os

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    provider = str(os.environ.get('PROVIDER', 'world'))
    return 'Hello '+ provider+ ' na ja!'

if __name__ == '__main__':
    # Bind to PORT if defined, otherwise default to 8888.
    port = int(os.environ.get('PORT', 8888))
    app.run(host='0.0.0.0', port=port)
