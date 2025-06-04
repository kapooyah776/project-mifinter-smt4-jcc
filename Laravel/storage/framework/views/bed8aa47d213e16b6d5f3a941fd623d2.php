

<?php $__env->startSection('content'); ?>
<div class="container py-5">
  <h2 class="text-white mb-4">Prediksi UFC Winner</h2>

  <?php if(session('result')): ?>
    <div class="alert alert-info"><?php echo e(session('result')); ?></div>
  <?php endif; ?>

  <form action="<?php echo e(route('predict.fight')); ?>" method="POST">
    <?php echo csrf_field(); ?>
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
        <?php $__currentLoopData = ['wins_total', 'losses_total', 'age', 'height', 'weight', 'reach']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="mb-2">
            <input name="r_<?php echo e($field); ?>" type="number" step="any" class="form-control bg-dark text-white" placeholder="Red <?php echo e(ucfirst(str_replace('_', ' ', $field))); ?>">
          </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <select name="r_stance" class="form-control bg-dark text-white mb-3">
          <option value="0">Orthodox</option>
          <option value="1">Southpaw</option>
          <option value="2">Switch</option>
        </select>
      </div>

      <div class="col-md-6">
        <h5 class="text-primary">Petarung Biru</h5>
        <?php $__currentLoopData = ['wins_total', 'losses_total', 'age', 'height', 'weight', 'reach']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <div class="mb-2">
            <input name="b_<?php echo e($field); ?>" type="number" step="any" class="form-control bg-dark text-white" placeholder="Blue <?php echo e(ucfirst(str_replace('_', ' ', $field))); ?>">
          </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.login-screens', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\xampp\htdocs\jcc\resources\views/frontend/pages/predict-fight.blade.php ENDPATH**/ ?>