from flask import Flask, request, jsonify
import datetime

app = Flask(__name__)

@app.route("/")
def index():
    return "Welcome to the Enhanced DevOps Flask App!"

@app.route("/health")
def health_check():
    return jsonify(status="UP", timestamp=str(datetime.datetime.now()))

@app.route("/echo", methods=["POST"])
def echo():
    data = request.json
    return jsonify(received=data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
