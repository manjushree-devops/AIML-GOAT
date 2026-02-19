from flask import Flask, render_template
import pandas as pd

app = Flask(__name__)

# Load dataset
data = pd.read_csv("disease_diagnosis.csv")

@app.route("/")
def home():
    # Convert dataframe to HTML table
    table = data.head(50).to_html(classes='data', header="true", index=False)
    return render_template("index.html", table=table)

if __name__ == "__main__":
    app.run(debug=True)

