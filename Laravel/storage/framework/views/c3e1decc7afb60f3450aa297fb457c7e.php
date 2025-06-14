<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Maintain Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/dropzone.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/media-uploader.css')); ?>">
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
            <div class="col-lg-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Maintain Page Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.maintains.page.settings')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <a class="nav-item nav-link <?php if($key == 0): ?> active <?php endif; ?>"  data-toggle="tab" href="#nav-home-<?php echo e($lang->slug); ?>" role="tab" aria-selected="true"><?php echo e($lang->name); ?></a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </nav>
                            <div class="tab-content margin-top-30" id="nav-tabContent">
                                <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="tab-pane fade <?php if($key == 0): ?> show active <?php endif; ?>" id="nav-home-<?php echo e($lang->slug); ?>" role="tabpanel" >
                                        <div class="form-group">
                                            <label for="maintain_page_<?php echo e($lang->slug); ?>_title"><?php echo e(__( 'Title')); ?></label>
                                            <input type="text" class="form-control"  id="maintain_page_<?php echo e($lang->slug); ?>_title" value="<?php echo e(get_static_option('maintain_page_'.$lang->slug.'_title')); ?>" name="maintain_page_<?php echo e($lang->slug); ?>_title" placeholder="<?php echo e(__('Title')); ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="maintain_page_<?php echo e($lang->slug); ?>_description"><?php echo e(__( 'Description')); ?></label>
                                            <textarea name="maintain_page_<?php echo e($lang->slug); ?>_description" id="maintain_page_<?php echo e($lang->slug); ?>_description" class="form-control max-height-150" cols="30" rows="10"><?php echo e(get_static_option('maintain_page_'.$lang->slug.'_description')); ?></textarea>
                                        </div>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <div class="form-group">
                                    <label for="maintain_page_logo"><strong><?php echo e(__('Logo')); ?></strong></label>
                                    <div class="media-upload-btn-wrapper">
                                        <div class="img-wrap">
                                            <?php
                                                $blog_img = get_attachment_image_by_id(get_static_option('maintain_page_logo'),null,true);
                                                $blog_image_btn_label = 'Upload Image';
                                            ?>
                                            <?php if(!empty($blog_img)): ?>
                                                <div class="attachment-preview">
                                                    <div class="thumbnail">
                                                        <div class="centered">
                                                            <img class="avatar user-thumb" src="<?php echo e($blog_img['img_url']); ?>" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php  $blog_image_btn_label = 'Change Image'; ?>
                                            <?php endif; ?>
                                        </div>
                                        <input type="hidden" id="maintain_page_logo" name="maintain_page_logo" value="">
                                        <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Maintains Logo Image" data-modaltitle="Upload Maintains Logo Image" data-toggle="modal" data-target="#media_upload_modal">
                                            <?php echo e(__($blog_image_btn_label)); ?>

                                        </button>
                                    </div>
                                    <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 300x100')); ?></small>
                                </div>
                                <div class="form-group">
                                    <label for="maintain_page_background_image"><strong><?php echo e(__('Background Image')); ?></strong></label>
                                    <div class="media-upload-btn-wrapper">
                                        <div class="img-wrap">
                                            <?php
                                                $maintain_page_background_image = get_attachment_image_by_id(get_static_option('maintain_page_background_image'),null,true);
                                                $maintain_page_background_image_btn_label = 'Upload Image';
                                            ?>
                                            <?php if(!empty($maintain_page_background_image)): ?>
                                                <div class="attachment-preview">
                                                    <div class="thumbnail">
                                                        <div class="centered">
                                                            <img class="avatar user-thumb" src="<?php echo e($maintain_page_background_image['img_url']); ?>" alt="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <?php  $maintain_page_background_image_btn_label = 'Change Image'; ?>
                                            <?php endif; ?>
                                        </div>
                                        <input type="hidden" id="maintain_page_background_image" name="maintain_page_background_image" value="">
                                        <button type="button" class="btn btn-info media_upload_form_btn" data-btntitle="Select Background Image" data-modaltitle="Upload Background Image" data-toggle="modal" data-target="#media_upload_modal">
                                            <?php echo e(__($maintain_page_background_image_btn_label)); ?>

                                        </button>
                                    </div>
                                    <small class="form-text text-muted"><?php echo e(__('allowed image format: jpg,jpeg,png. Recommended image size 1920x1000')); ?></small>
                                </div>
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
    <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
    <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/maintain-page/index.blade.php ENDPATH**/ ?>