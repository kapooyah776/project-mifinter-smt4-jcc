@extends('layouts.login-screens')

@section('content')
<div class="container py-5">
  <h2 class="text-white mb-4">Prediksi UFC Winner</h2>

  @if(session('result'))
    <div class="alert alert-info">{{ session('result') }}</div>
  @endif

  <form action="{{ route('predict.fight') }}" method="POST">
    @csrf
    <div class="row mb-4">
      <div class="col-md-6">
        <label class="text-white">Weight Class</label>
        <select name="weight_class" class="form-control bg-dark text-white">
          <option value="Lightweight">Lightweight</option>
          <option value="Middleweight">Middleweight</option>
          <option value="Heavyweight">Heavyweight</option>
        </select>
      </div>
      <div class="col-md-6">
        <label class="text-white">Gender</label>
        <select name="gender" class="form-control bg-dark text-white">
          <option value="1">Male</option>
          <option value="0">Female</option>
        </select>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        <h5 class="text-danger">Petarung Merah</h5>
        @foreach(['wins_total', 'losses_total', 'age', 'height', 'weight', 'reach'] as $field)
          <div class="mb-2">
            <input name="r_{{ $field }}" type="number" step="any" class="form-control bg-dark text-white" placeholder="Red {{ ucfirst(str_replace('_', ' ', $field)) }}">
          </div>
        @endforeach
        <select name="r_stance" class="form-control bg-dark text-white mb-3">
          <option value="0">Orthodox</option>
          <option value="1">Southpaw</option>
          <option value="2">Switch</option>
        </select>
      </div>

      <div class="col-md-6">
        <h5 class="text-primary">Petarung Biru</h5>
        @foreach(['wins_total', 'losses_total', 'age', 'height', 'weight', 'reach'] as $field)
          <div class="mb-2">
            <input name="b_{{ $field }}" type="number" step="any" class="form-control bg-dark text-white" placeholder="Blue {{ ucfirst(str_replace('_', ' ', $field)) }}">
          </div>
        @endforeach
        <select name="b_stance" class="form-control bg-dark text-white mb-3">
          <option value="0">Orthodox</option>
          <option value="1">Southpaw</option>
          <option value="2">Switch</option>
        </select>
      </div>
    </div>

    <div class="text-center mt-4">
      <button type="submit" class="btn btn-danger px-4 py-2">Prediksi</button>
    </div>
  </form>
</div>
@endsection
