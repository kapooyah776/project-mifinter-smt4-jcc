<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class FightPredictionController extends Controller
{
    public function showForm()
    {
        return view('frontend.pages.predict-fight');
    }

public function predict(Request $request)
{
    $data = $request->validate([
        'weight_class' => 'required|numeric',  // <-- Tambahkan ini
        'gender' => 'required|numeric',
        'r_wins_total' => 'required|numeric',
        'r_losses_total' => 'required|numeric',
        'r_age' => 'required|numeric',
        'r_height' => 'required|numeric',
        'r_weight' => 'required|numeric',
        'r_reach' => 'required|numeric',
        'r_stance' => 'required|numeric',  // <-- Tambahkan ini
        'b_wins_total' => 'required|numeric',
        'b_losses_total' => 'required|numeric',
        'b_age' => 'required|numeric',
        'b_height' => 'required|numeric',
        'b_weight' => 'required|numeric',
        'b_reach' => 'required|numeric',
        'b_stance' => 'required|numeric',  // <-- Tambahkan ini
    ]);

    $features = [
        (int) $data['weight_class'],
        (int) $data['gender'],
        (float) $data['r_wins_total'],
        (float) $data['r_losses_total'],
        (float) $data['r_age'],
        (float) $data['r_height'],
        (float) $data['r_weight'],
        (float) $data['r_reach'],
        (int) $data['r_stance'],
        (float) $data['b_wins_total'],
        (float) $data['b_losses_total'],
        (float) $data['b_age'],
        (float) $data['b_height'],
        (float) $data['b_weight'],
        (float) $data['b_reach'],
        (int) $data['b_stance'],
    ];
        try {
            $response = Http::timeout(5)->post('http://127.0.0.1:5000/predict', [
                'features' => $features
            ]);

            if ($response->successful()) {
                $prediction = $response->json('prediction');

                if (!in_array($prediction, ['Red', 'Blue', 'Draw'])) {
                    $prediction = 'Unknown';
                }

                return back()->with('result', "Predicted Winner: {$prediction} Fighter");
            }

            return back()->with('result', 'Prediction failed: ' . $response->body());
        } catch (\Exception $e) {
            return back()->with('result', 'Error connecting to prediction server: ' . $e->getMessage());
        }
    }
}