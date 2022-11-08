from flask import Flask, render_template
from flask_bootstrap import Bootstrap5

app = Flask(__name__)
bootstrap = Bootstrap5(app)

@app.route("/introduction")
def introduction():
    return render_template('introduction.html')

@app.route("/education")
def education():
    return render_template('education.html')

@app.route("/experiences")
def experiences():
    return render_template('experiences.html')

@app.route("/projets")
def projets():
    return render_template('projets.html')