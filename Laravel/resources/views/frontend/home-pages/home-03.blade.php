<section class="fight-predict-area padding-120">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="title text-center">Fight Prediction</h2>
                <form action="{{ route('predict.fight') }}" method="POST">
                    @csrf

                    <div class="row">
                        <!-- RED FIGHTER -->
                        <div class="col-md-6">
                            <h4 class="text-danger">Red Fighter</h4>
                            <div class="form-group">
                                <label>Select Fighter</label>
                                <select class="form-control" id="red-fighter" name="red_id">
                                    <option value="">-- Choose Fighter --</option>
                                    @foreach($fighters as $fighter)
                                        <option value="{{ $fighter->id }}">{{ $fighter->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="text" name="r_age" id="r_age" class="form-control mt-2" placeholder="Age">
                            <input type="text" name="r_height" id="r_height" class="form-control mt-2" placeholder="Height">
                            <input type="text" name="r_weight" id="r_weight" class="form-control mt-2" placeholder="Weight">
                            <input type="text" name="r_reach" id="r_reach" class="form-control mt-2" placeholder="Reach">
                            <input type="text" name="r_stance" id="r_stance" class="form-control mt-2" placeholder="Stance">
                        </div>

                        <!-- BLUE FIGHTER -->
                        <div class="col-md-6">
                            <h4 class="text-primary">Blue Fighter</h4>
                            <div class="form-group">
                                <label>Select Fighter</label>
                                <select class="form-control" id="blue-fighter" name="blue_id">
                                    <option value="">-- Choose Fighter --</option>
                                    @foreach($fighters as $fighter)
                                        <option value="{{ $fighter->id }}">{{ $fighter->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="text" name="b_age" id="b_age" class="form-control mt-2" placeholder="Age">
                            <input type="text" name="b_height" id="b_height" class="form-control mt-2" placeholder="Height">
                            <input type="text" name="b_weight" id="b_weight" class="form-control mt-2" placeholder="Weight">
                            <input type="text" name="b_reach" id="b_reach" class="form-control mt-2" placeholder="Reach">
                            <input type="text" name="b_stance" id="b_stance" class="form-control mt-2" placeholder="Stance">
                        </div>
                    </div>

                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-danger">Predict</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
document.getElementById('red-fighter').addEventListener('change', function () {
    fetch(`/api/fighter/${this.value}`)
        .then(res => res.json())
        .then(data => {
            document.getElementById('r_age').value = data.age;
            document.getElementById('r_height').value = data.height;
            document.getElementById('r_weight').value = data.weight;
            document.getElementById('r_reach').value = data.reach;
            document.getElementById('r_stance').value = data.stance;
        });
});

document.getElementById('blue-fighter').addEventListener('change', function () {
    fetch(`/api/fighter/${this.value}`)
        .then(res => res.json())
        .then(data => {
            document.getElementById('b_age').value = data.age;
            document.getElementById('b_height').value = data.height;
            document.getElementById('b_weight').value = data.weight;
            document.getElementById('b_reach').value = data.reach;
            document.getElementById('b_stance').value = data.stance;
        });
});
</script>
