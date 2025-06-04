from flask import Flask, request, jsonify
import joblib
import numpy as np

app = Flask(__name__)

# Load model
model = joblib.load('besto.pkl')

@app.route('/')
def home():
    return "🔥 UFC Prediction API is running!"

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()

    try:
        # Daftar fitur wajib
        required_features = [
            'weight_class', 'gender',
            'r_wins_total', 'r_losses_total', 'r_age', 'r_height', 'r_weight', 'r_reach', 'r_stance',
            'b_wins_total', 'b_losses_total', 'b_age', 'b_height', 'b_weight', 'b_reach', 'b_stance'
        ]

        # Validasi fitur input
        for f in required_features:
            if f not in data:
                return jsonify({'error': f'Missing feature: {f}'}), 400

        # Konversi tipe data (pastikan sesuai)
        # Bisa sesuaikan tergantung model (misal stance dan class adalah int, usia/berat/tinggi float)
        weight_class = int(data['weight_class'])
        gender = int(data['gender'])
        r_wins_total = int(data['r_wins_total'])
        r_losses_total = int(data['r_losses_total'])
        r_age = float(data['r_age'])
        r_height = float(data['r_height'])
        r_weight = float(data['r_weight'])
        r_reach = float(data['r_reach'])
        r_stance = int(data['r_stance'])
        b_wins_total = int(data['b_wins_total'])
        b_losses_total = int(data['b_losses_total'])
        b_age = float(data['b_age'])
        b_height = float(data['b_height'])
        b_weight = float(data['b_weight'])
        b_reach = float(data['b_reach'])
        b_stance = int(data['b_stance'])

        # Hitung fitur turunan
        wins_total_diff = r_wins_total - b_wins_total
        losses_total_diff = r_losses_total - b_losses_total
        age_diff = r_age - b_age
        height_diff = r_height - b_height
        weight_diff = r_weight - b_weight
        reach_diff = r_reach - b_reach

        # Siapkan fitur urut untuk model
        input_features = [
            weight_class, gender,
            r_wins_total, r_losses_total, r_age, r_height, r_weight, r_reach, r_stance,
            b_wins_total, b_losses_total, b_age, b_height, b_weight, b_reach, b_stance,
            wins_total_diff, losses_total_diff, age_diff, height_diff, weight_diff, reach_diff
        ]

        input_array = np.array(input_features).reshape(1, -1)

        # Prediksi kelas
        prediction = model.predict(input_array)[0]
        label_map = {0: 'Red', 1: 'Blue'}
        result = label_map.get(prediction, "Unknown")

        # Prediksi probabilitas jika tersedia
        if hasattr(model, "predict_proba"):
            proba = model.predict_proba(input_array)[0]
            prob_red = round(proba[0] * 100, 2)
            prob_blue = round(proba[1] * 100, 2)
        else:
            prob_red = None
            prob_blue = None

        differences = {
            "wins_total_diff": wins_total_diff,
            "losses_total_diff": losses_total_diff,
            "age_diff": age_diff,
            "height_diff": height_diff,
            "weight_diff": weight_diff,
            "reach_diff": reach_diff
        }

        return jsonify({
            'prediction': result,
            'prob_red': prob_red,
            'prob_blue': prob_blue,
            'differences': differences
        })

    except Exception as e:
        return jsonify({'error': f'Exception: {str(e)}'}), 500


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)