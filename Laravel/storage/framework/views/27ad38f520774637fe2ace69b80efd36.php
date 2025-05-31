<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Section Manage')); ?>

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
                        <h4 class="header-title"><?php echo e(__('Section Manage')); ?></h4>
                        <form action="<?php echo e(route('admin.charity.home.section.manage')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">

                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_key_feature_section_status"><strong><?php echo e(__('Key Feature Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_key_feature_section_status"  <?php if(!empty(get_static_option('charity_home_page_key_feature_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_about_section_status"><strong><?php echo e(__('About Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_about_section_status"  <?php if(!empty(get_static_option('charity_home_page_about_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_our_mission_section_status"><strong><?php echo e(__('Our Mission Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_our_mission_section_status"  <?php if(!empty(get_static_option('charity_home_page_our_mission_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_recent_cause_section_status"><strong><?php echo e(__('Recent Cause Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_recent_cause_section_status"  <?php if(!empty(get_static_option('charity_home_page_recent_cause_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_our_gallery_section_status"><strong><?php echo e(__('Our Gallery Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_our_gallery_section_status"  <?php if(!empty(get_static_option('charity_home_page_our_gallery_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_our_events_section_status"><strong><?php echo e(__('Our Events Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_our_events_section_status"  <?php if(!empty(get_static_option('charity_home_page_our_events_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_counterup_section_status"><strong><?php echo e(__('Counterup Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_counterup_section_status"  <?php if(!empty(get_static_option('charity_home_page_counterup_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_team_member_section_status"><strong><?php echo e(__('Team Member Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_team_member_section_status"  <?php if(!empty(get_static_option('charity_home_page_team_member_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_testimonial_section_status"><strong><?php echo e(__('Testimonial Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_testimonial_section_status"  <?php if(!empty(get_static_option('charity_home_page_testimonial_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_news_blog_section_status"><strong><?php echo e(__('News & Blog Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_news_blog_section_status"  <?php if(!empty(get_static_option('charity_home_page_news_blog_section_status'))): ?> checked <?php endif; ?> >
                                            <span class="slider"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="charity_home_page_brand_carousel_section_status"><strong><?php echo e(__('Brand Carousel Section Show/Hide')); ?></strong></label>
                                        <label class="switch">
                                            <input type="checkbox" name="charity_home_page_brand_carousel_section_status"  <?php if(!empty(get_static_option('charity_home_page_brand_carousel_section_status'))): ?> checked <?php endif; ?> >
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


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/home/charity-home/section-manage.blade.php ENDPATH**/ ?>