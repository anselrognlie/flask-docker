from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/')
def hello_docker():
    return jsonify('Hello from Flask & Docker')


if __name__ == "__main__":
    app.run(debug=True)
