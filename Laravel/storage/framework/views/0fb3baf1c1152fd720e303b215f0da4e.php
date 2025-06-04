<div class="preloader" id="preloader">
    <div class="preloader-inner">
        <button class="cancel-preloader" onclick="disablePreloader()"><?php echo e(__('Cancel Preloader')); ?></button>
        <?php echo render_image_markup_by_attachment_id(get_static_option('preloader_custom_image')); ?>

    </div>
</div>
<script>
    function disablePreloader() {
        document.querySelector('#preloader').remove();
    }
</script>
<?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/frontend/partials/preloader/preloader-custom.blade.php ENDPATH**/ ?>