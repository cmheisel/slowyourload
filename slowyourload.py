import time

from flask import Flask, redirect
app = Flask(__name__)


@app.route("/<int:delay>/<path:url>")
def hello(delay, url):
    time.sleep(delay)
    return redirect(url, code=302)

if __name__ == "__main__":
    app.run()
