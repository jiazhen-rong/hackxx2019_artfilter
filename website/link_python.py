from flask import Flask
import subprocess as sp
app = Flask(__name__)

@app.route('/')
def single_training():
    single_train_cmd="sh ./pipeline.sh"
    sp.call(single_train_cmd,shell=True)
    return redirect(url_for('index'))