<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Quote Page Settings')); ?>

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
                        <h4 class="header-title"><?php echo e(__('Quote Page Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.quote.page')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <a class="nav-item nav-link <?php if($key == 0): ?> active <?php endif; ?>" data-toggle="tab" href="#nav-home-<?php echo e($lang->slug); ?>" role="tab" aria-selected="true"><?php echo e($lang->name); ?></a>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </nav>
                            <div class="tab-content margin-top-30" id="nav-tabContent">
                                <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="tab-pane fade <?php if($key == 0): ?> show active <?php endif; ?>" id="nav-home-<?php echo e($lang->slug); ?>" role="tabpanel" >
                                    <div class="form-group">
                                        <label for="quote_page_<?php echo e($lang->slug); ?>_page_title"><?php echo e(__('Quote Page Title')); ?></label>
                                        <input type="text" name="quote_page_<?php echo e($lang->slug); ?>_page_title" value="<?php echo e(get_static_option('quote_page_'.$lang->slug.'_page_title')); ?>" class="form-control" id="quote_page_<?php echo e($lang->slug); ?>_page_title">
                                    </div>
                                    <div class="form-group">
                                        <label for="quote_page_<?php echo e($lang->slug); ?>_form_title"><?php echo e(__('Quote Form Title')); ?></label>
                                        <input type="text" name="quote_page_<?php echo e($lang->slug); ?>_form_title" value="<?php echo e(get_static_option('quote_page_'.$lang->slug.'_form_title')); ?>" class="form-control" id="quote_page_<?php echo e($lang->slug); ?>_form_title">
                                    </div>
                                </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                            <div class="form-group">
                                <label for="quote_page_form_mail"><?php echo e(__('Email Address For Quote Message')); ?></label>
                                <input type="text" name="quote_page_form_mail" value="<?php echo e(get_static_option('quote_page_form_mail')); ?>" class="form-control" id="quote_page_form_mail">
                            </div>
                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/quote-page/form-section.blade.php ENDPATH**/ ?>