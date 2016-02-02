import os
import time

from flask import Flask, redirect
app = Flask("slowyourload")


@app.route("/health/")
def health():
    return "OK"


@app.route("/<int:delay>/<path:url>")
def hello(delay, url):
    time.sleep(delay)
    return redirect(url, code=302)


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=os.environ.get("DEBUG", False))
