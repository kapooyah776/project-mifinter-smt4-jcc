<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FightPredictionController extends Controller
{
    public function showForm()
    {
        return view('predict-fight');
    }

    public function predict(Request $request)
    {
        $data = $request->all();

        // Dummy logic for now (you can replace this with your ML model later)
        $winner = rand(0, 2) == 0 ? 'Red' : (rand(0, 1) ? 'Blue' : 'Draw');

        return back()->with('result', "Predicted Winner: $winner");
    }
}