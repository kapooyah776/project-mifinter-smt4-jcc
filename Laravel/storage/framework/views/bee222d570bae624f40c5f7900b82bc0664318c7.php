<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Third Party Scripts Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Third Party Scripts Settings")); ?></h4>
                        <form action="<?php echo e(route('admin.general.scripts.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <label for="site_header_script"><?php echo e(__('Third Parity Scripts')); ?></label>
                                <textarea name="site_header_script" cols="30" rows="5" class="form-control"><?php echo get_static_option('site_header_script'); ?></textarea>
                                <p><?php echo e(__('all of above code will be load in above </head> tag.')); ?></p>
                            </div>
                            <div class="form-group">
                                <label for="site_google_analytics"><?php echo e(__('Google Analytics')); ?></label>
                                <input type="text" name="site_google_analytics"  class="form-control" value="<?php echo e(get_static_option('site_google_analytics')); ?>" id="site_google_analytics">
                            </div>
                            <div class="form-group">
                                <label for="site_google_captcha_v3_site_key"><?php echo e(__('Google Captcha V3 Site Key')); ?></label>
                                <input type="text" name="site_google_captcha_v3_site_key"  class="form-control" value="<?php echo e(get_static_option('site_google_captcha_v3_site_key')); ?>" id="site_google_captcha_v3_site_key">
                            </div>
                            <div class="form-group">
                                <label for="site_google_captcha_v3_secret_key"><?php echo e(__('Google Captcha V3 Secret Key')); ?></label>
                                <input type="text" name="site_google_captcha_v3_secret_key"  class="form-control" value="<?php echo e(get_static_option('site_google_captcha_v3_secret_key')); ?>" id="site_google_captcha_v3_secret_key">
                            </div>
                            <div class="form-group">
                                <label for="site_disqus_key"><?php echo e(__('Disqus')); ?></label>
                                <input type="text" name="site_disqus_key"  class="form-control" value="<?php echo e(get_static_option('site_disqus_key')); ?>" id="site_disqus_key">
                            </div>
                            <div class="form-group">
                                <label for="tawk_api_key"><?php echo e(__('Tawk.to API')); ?></label>
                                <input type="text" name="tawk_api_key"  class="form-control" value="<?php echo e(get_static_option('tawk_api_key')); ?>" id="site_disqus_key">
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\jcc\apt\resources\views/backend/general-settings/thid-party.blade.php ENDPATH**/ ?>