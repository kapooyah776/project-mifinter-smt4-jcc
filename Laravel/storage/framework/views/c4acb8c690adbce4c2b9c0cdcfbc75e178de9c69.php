<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('About Page Section Manage')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php if($errors->any()): ?>
                    <div class="alert alert-danger">
                        <ul>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li><?php echo e($error); ?></li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    </div>
                <?php endif; ?>
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('About Page Section Manage')); ?></h4>
                        <form action="<?php echo e(route('admin.about.page.section.manage')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_about_us_section_status"><strong><?php echo e(__('About Us Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_about_us_section_status"  <?php if(!empty(get_static_option('about_page_about_us_section_status'))): ?> checked <?php endif; ?> id="about_page_about_us_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_know_about_section_status"><strong><?php echo e(__('Know About Us Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_know_about_section_status"  <?php if(!empty(get_static_option('about_page_know_about_section_status'))): ?> checked <?php endif; ?> id="about_page_know_about_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_call_to_action_section_status"><strong><?php echo e(__('Call To Action Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_call_to_action_section_status"  <?php if(!empty(get_static_option('about_page_call_to_action_section_status'))): ?> checked <?php endif; ?> id="about_page_call_to_action_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_testimonial_section_status"><strong><?php echo e(__('Testimonial Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_testimonial_section_status"  <?php if(!empty(get_static_option('about_page_testimonial_section_status'))): ?> checked <?php endif; ?> id="about_page_testimonial_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_latest_news_section_status"><strong><?php echo e(__('Latest News Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_latest_news_section_status"  <?php if(!empty(get_static_option('about_page_latest_news_section_status'))): ?> checked <?php endif; ?> id="about_page_latest_news_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_brand_logo_section_status"><strong><?php echo e(__('Brand Logo Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_brand_logo_section_status"  <?php if(!empty(get_static_option('about_page_brand_logo_section_status'))): ?> checked <?php endif; ?> id="about_page_brand_logo_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="about_page_team_member_section_status"><strong><?php echo e(__('Team Member Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="about_page_team_member_section_status" <?php if(!empty(get_static_option('about_page_team_member_section_status'))): ?> checked <?php endif; ?> id="about_page_team_member_section_status">
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\jcc\apt\resources\views/backend/pages/about/section-manage.blade.php ENDPATH**/ ?>