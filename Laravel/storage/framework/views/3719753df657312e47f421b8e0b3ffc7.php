<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Home Variant Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <!-- basic form start -->
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
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Home Variant')); ?></h4>
                       <div class="alert alert-warning text-capitalize"> <?php echo e(__('whenever you change any home page variant make sure you give permission to your for home page manage settings form "Admin Role Manage > All Role Manage > Your Role (if you are super admin then edit super admin permission), click on "add/edit permission > Home Page Manage" check settings. now you can see menu to manage home page content "')); ?></div>
                        <form action="<?php echo e(route('admin.home.variant')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="form-group">
                                <input type="hidden" class="form-control"  id="home_page_variant" value="<?php echo e(get_static_option('home_page_variant')); ?>" name="home_page_variant">
                            </div>
                            <div class="row">
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select selected">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-01.jpg')); ?>" data-home_id="01" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-02.jpg')); ?>" data-home_id="02" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-03.jpg')); ?>" data-home_id="03" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-04.jpg')); ?>" data-home_id="04" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-05.jpg')); ?>" data-home_id="05" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-06.jpg')); ?>" data-home_id="06" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-07.jpg')); ?>" data-home_id="07" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-08.jpg')); ?>" data-home_id="08" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-09.jpg')); ?>" data-home_id="09" alt="">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="img-select">
                                        <div class="img-wrap">
                                            <img src="<?php echo e(asset('assets/frontend/home-variant/home-10.jpg')); ?>" data-home_id="10" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Home Variant')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
        (function($){
            "use strict";

            $(document).ready(function () {

                var imgSelect = $('.img-select');
                var id = $('#home_page_variant').val();
                imgSelect.removeClass('selected');
                $('img[data-home_id="'+id+'"]').parent().parent().addClass('selected');
                $(document).on('click','.img-select img',function (e) {
                    e.preventDefault();
                    imgSelect.removeClass('selected');
                    $(this).parent().parent().addClass('selected').siblings();
                    $('#home_page_variant').val($(this).data('home_id'));
                })
            })

        })(jQuery);
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/home/home-variant.blade.php ENDPATH**/ ?>