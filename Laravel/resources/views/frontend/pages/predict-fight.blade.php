@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4 text-center text-danger fw-bold">Fight Outcome Predictor</h2>

    @if(session('result'))
        <div class="alert alert-info text-center fw-bold">{{ session('result') }}</div>
    @endif

    <form action="{{ route('predict.fight') }}" method="POST">
        @csrf

        {{-- Fight Info --}}
        <div class="card mb-4 border-danger">
            <div class="card-body">
                <h4 class="text-danger">Fight Info</h4>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Weight Class</label>
                        <input type="text" name="weight_class" class="form-control" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label class="form-label">Gender</label>
                        <select name="gender" class="form-control" required>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        {{-- Fighter Stats --}}
        <div class="row">
            {{-- Red Fighter --}}
            <div class="col-md-6">
                <div class="card border-danger mb-3">
                    <div class="card-body">
                        <h4 class="text-white bg-danger p-2 rounded">Red Fighter</h4>
                        <input type="number" name="r_wins_total" class="form-control mb-2" placeholder="Wins Total" required>
                        <input type="number" name="r_losses_total" class="form-control mb-2" placeholder="Losses Total" required>
                        <input type="number" name="r_age" class="form-control mb-2" placeholder="Age" required>
                        <input type="number" name="r_height" class="form-control mb-2" placeholder="Height (cm)" required>
                        <input type="number" name="r_weight" class="form-control mb-2" placeholder="Weight (kg)" required>
                        <input type="number" name="r_reach" class="form-control mb-2" placeholder="Reach (cm)" required>
                        <input type="text" name="r_stance" class="form-control mb-2" placeholder="Stance" required>
                    </div>
                </div>
            </div>

            {{-- Blue Fighter --}}
            <div class="col-md-6">
                <div class="card border-primary mb-3">
                    <div class="card-body">
                        <h4 class="text-white bg-primary p-2 rounded">Blue Fighter</h4>
                        <input type="number" name="b_wins_total" class="form-control mb-2" placeholder="Wins Total" required>
                        <input type="number" name="b_losses_total" class="form-control mb-2" placeholder="Losses Total" required>
                        <input type="number" name="b_age" class="form-control mb-2" placeholder="Age" required>
                        <input type="number" name="b_height" class="form-control mb-2" placeholder="Height (cm)" required>
                        <input type="number" name="b_weight" class="form-control mb-2" placeholder="Weight (kg)" required>
                        <input type="number" name="b_reach" class="form-control mb-2" placeholder="Reach (cm)" required>
                        <input type="text" name="b_stance" class="form-control mb-2" placeholder="Stance" required>
                    </div>
                </div>
            </div>
        </div>

        {{-- Submit --}}
        <div class="text-center">
            <button type="submit" class="btn btn-danger px-5 fw-bold">Predict Winner</button>
        </div>
    </form>
</div>
@endsection
