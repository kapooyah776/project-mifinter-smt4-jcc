from flask import Flask, request, jsonify
import pickle
import numpy as np
import joblib

app = Flask(__name__)

# Load the SVM model
model = joblib.load("svm_final_model.pkl")

@app.route("/predict", methods=["POST"])
def predict():
    try:
        data = request.get_json()
        features = np.array([data["features"]])  # list of numbers
        prediction = model.predict(features)
        return jsonify({"prediction": str(prediction[0])})
    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)