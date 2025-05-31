<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('About Area')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
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
                        <h4 class="header-title"><?php echo e(__('About Area Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.charity.home.about.area')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="nav-item">
                                    <a class="nav-link <?php if($key == 0): ?> active <?php endif; ?>" data-toggle="tab" href="#tab_<?php echo e($key); ?>" role="tab"  aria-selected="true"><?php echo e($lang->name); ?></a>
                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                            <div class="tab-content margin-top-30" id="myTabContent">
                                <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tab-pane fade <?php if($key == 0): ?> show active <?php endif; ?>" id="tab_<?php echo e($key); ?>" role="tabpanel" >
                                    <div class="form-group">
                                        <label for="home_page_09_<?php echo e($lang->slug); ?>_about_area_title"><?php echo e(__('Title')); ?></label>
                                        <input type="text" name="home_page_09_<?php echo e($lang->slug); ?>_about_area_title" class="form-control" value="<?php echo e(get_static_option('home_page_09_'.$lang->slug.'_about_area_title')); ?>" id="home_page_09_<?php echo e($lang->slug); ?>_about_area_title">
                                    </div>
                                    <div class="form-group">
                                        <label for="home_page_09_<?php echo e($lang->slug); ?>_about_area_subtitle"><?php echo e(__('Subtitle')); ?></label>
                                        <input type="text" name="home_page_09_<?php echo e($lang->slug); ?>_about_area_subtitle" class="form-control" value="<?php echo e(get_static_option('home_page_09_'.$lang->slug.'_about_area_subtitle')); ?>" id="home_page_09_<?php echo e($lang->slug); ?>_about_area_subtitle">
                                    </div>
                                    <div class="form-group">
                                        <label><?php echo e(__('Description')); ?></label>
                                        <input type="hidden" name="home_page_09_<?php echo e($lang->slug); ?>_about_area_description" value="<?php echo e(get_static_option('home_page_09_'.$lang->slug.'_about_area_description')); ?>">
                                        <div class="summernote" data-content='<?php echo e(get_static_option('home_page_09_'.$lang->slug.'_about_area_description')); ?>'></div>
                                    </div>
                                    <div class="form-group">
                                        <label for="home_page_09_<?php echo e($lang->slug); ?>_about_area_btn_text"><?php echo e(__('Button Title')); ?></label>
                                        <input type="text" name="home_page_09_<?php echo e($lang->slug); ?>_about_area_btn_text" class="form-control" value="<?php echo e(get_static_option('home_page_09_'.$lang->slug.'_about_area_btn_text')); ?>" id="home_page_09_<?php echo e($lang->slug); ?>_about_area_btn_text">
                                    </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <div class="form-group">
                                <label for="home_page_09_about_area_btn_url"><?php echo e(__('Button URL')); ?></label>
                                <input type="text" name="home_page_09_about_area_btn_url" class="form-control" value="<?php echo e(get_static_option('home_page_09_about_area_btn_url')); ?>">
                            </div>
                            <div class="form-group">
                                <label><?php echo e(__('Left Image')); ?></label>
                                <?php $background_image_upload_btn_label = 'Upload Image'; ?>
                                <div class="media-upload-btn-wrapper">
                                    <div class="img-wrap">
                                        <?php
                                            $background_img = get_attachment_image_by_id(get_static_option('home_page_09_about_area_left_image'),null,false);
                                        ?>
                                        <?php if(!empty($background_img)): ?>
                                            <div class="attachment-preview">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <img class="avatar user-thumb" src="<?php echo e($background_img['img_url']); ?>" >
                                                    </div>
                                                </div>
                                            </div>
                                            <?php $background_image_upload_btn_label = 'Change Image'; ?>
                                        <?php endif; ?>
                                    </div>
                                    <input type="hidden" name="home_page_09_about_area_left_image" value="<?php echo e(get_static_option('home_page_09_about_area_left_image')); ?>">
                                    <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Image" data-modaltitle="Upload Image" data-imgid="<?php echo e(get_static_option('home_page_09_about_area_left_image')); ?>" data-toggle="modal" data-target="#media_upload_modal">
                                        <?php echo e(__($background_image_upload_btn_label)); ?>

                                    </button>
                                </div>
                                <small><?php echo e(__('recommended image size is 522x500 pixel')); ?></small>
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <script>
        $(document).ready(function (){
            $('.summernote').summernote({
                height: 200,   //set editable area's height
                codemirror: { // codemirror options
                    theme: 'monokai'
                },
                callbacks: {
                    onChange: function(contents, $editable) {
                        $(this).prev('input').val(contents);
                    }
                }
            });
            if($('.summernote').length > 0){
                $('.summernote').each(function(index,value){
                    $(this).summernote('code', $(this).data('content'));
                });
            }
        });
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/home/charity-home/about-area.blade.php ENDPATH**/ ?>