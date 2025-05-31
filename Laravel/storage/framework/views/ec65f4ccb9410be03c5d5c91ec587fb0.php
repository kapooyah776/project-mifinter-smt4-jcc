<?php if(session()->has('msg')): ?>
    <div class="alert alert-<?php echo e(session('type')); ?>">
        <?php echo session('msg'); ?>

    </div>
<?php endif; ?>
<?php /**PATH C:\xampp8.2.12\htdocs\jcc\apt\resources\views/backend/partials/message.blade.php ENDPATH**/ ?>