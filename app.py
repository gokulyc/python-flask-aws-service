from flask import Flask, jsonify

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello, world!"


@app.route("/health")
def health():
    return jsonify({"message": "Ok", "status": 200})


if __name__ == "__main__":
    app.run(port=5000, host="0.0.0.0")
