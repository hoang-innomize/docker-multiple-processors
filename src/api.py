import flask

app = flask.Flask(__name__)
app.config["DEBUG"] = True


@app.route('/', methods=['GET'])
def home():
    return "Helloworld!"

app.run(host='0.0.0.0', port=5000)