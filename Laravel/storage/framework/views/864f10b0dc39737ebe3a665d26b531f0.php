<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Icon Box Area')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
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
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Icon Box Area Settings')); ?></h4>
                        <form action="<?php echo e(route('admin.charity.home.icon.box.area')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <?php
                            $all_icon_fields =  get_static_option('home_page_09_icon_box_icon');
                            $all_icon_fields = !empty($all_icon_fields) ? unserialize($all_icon_fields) : ['fab fa-adn'];
                            $button_url_fields =  get_static_option('home_page_09_icon_box_button_url');
                            $button_url_fields = !empty($button_url_fields) ? unserialize($button_url_fields) : ['#'];
                            ?>
                            <?php $__currentLoopData = $all_icon_fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $icon_field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="iconbox-repeater-wrapper">
                                <div class="all-field-wrap">
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li class="nav-item">
                                                <a class="nav-link <?php if($key == 0): ?> active <?php endif; ?>" data-toggle="tab" href="#tab_<?php echo e($lang->slug); ?>_<?php echo e($key + $index); ?>" role="tab"  aria-selected="true"><?php echo e($lang->name); ?></a>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                    <div class="tab-content margin-top-30" id="myTabContent">
                                        <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php
                                                $all_title_fields = get_static_option('home_page_09_'.$lang->slug.'_icon_box_title');
                                                $all_title_fields = !empty($all_title_fields) ? unserialize($all_title_fields) : ['volunteers'];
                                                $all_button_text_fields = get_static_option('home_page_09_'.$lang->slug.'_icon_box_button_text');
                                                $all_button_text_fields = !empty($all_button_text_fields) ? unserialize($all_button_text_fields) : ['Donate Now'];
                                                $all_description_fields = get_static_option('home_page_09_'.$lang->slug.'_icon_box_description');
                                                $all_description_fields = !empty($all_description_fields) ? unserialize($all_description_fields) : ['Do so written as raising parlors spirits mr elderly. Made late in of high left hold.'];
                                            ?>

                                            <div class="tab-pane fade <?php if($key == 0): ?> show active <?php endif; ?>" id="tab_<?php echo e($lang->slug); ?>_<?php echo e($key + $index); ?>" role="tabpanel" >
                                                <div class="form-group">
                                                    <label for="home_page_09_<?php echo e($lang->slug); ?>_icon_box_title"><?php echo e(__('Title')); ?></label>
                                                    <input type="text" name="home_page_09_<?php echo e($lang->slug); ?>_icon_box_title[]" class="form-control" value="<?php echo e($all_title_fields[$index]); ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label for="home_page_09_<?php echo e($lang->slug); ?>_icon_box_description"><?php echo e(__('Description')); ?></label>
                                                    <textarea name="home_page_09_<?php echo e($lang->slug); ?>_icon_box_description[]" class="form-control max-height-120" rows="10" ><?php echo e($all_description_fields[$index]); ?></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="home_page_09_<?php echo e($lang->slug); ?>_icon_box_button_text"><?php echo e(__('Button Text')); ?></label>
                                                    <input type="text" name="home_page_09_<?php echo e($lang->slug); ?>_icon_box_button_text[]" class="form-control" value="<?php echo e(isset($all_button_text_fields[$index]) ? $all_button_text_fields[$index] : ''); ?>">
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <div class="form-group">
                                            <label for="home_page_09_icon_box_button_url"><?php echo e(__('Button URL')); ?></label>
                                            <input type="text" name="home_page_09_icon_box_button_url[]" class="form-control" value="<?php echo e($button_url_fields[$index]); ?>">
                                        </div>
                                        <div class="form-group">
                                            <label for="home_page_09_icon_box_icon" class="d-block"><?php echo e(__('Icon')); ?></label>
                                            <div class="btn-group ">
                                                <button type="button" class="btn btn-primary iconpicker-component">
                                                    <i class="<?php echo e($icon_field); ?>"></i>
                                                </button>
                                                <button type="button" class="icp icp-dd btn btn-primary dropdown-toggle"
                                                        data-selected="<?php echo e($icon_field); ?>" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                </button>
                                                <div class="dropdown-menu"></div>
                                            </div>
                                            <input type="hidden" class="form-control" value="<?php echo e($icon_field); ?>" name="home_page_09_icon_box_icon[]">
                                        </div>

                                    </div>
                                    <div class="action-wrap">
                                        <span class="add"><i class="ti-plus"></i></span>
                                        <span class="remove"><i class="ti-trash"></i></span>
                                    </div>
                                </div>
                            </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

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
    <script>
        $(document).ready(function ($){
           "use strict";

            $('.icp-dd').iconpicker();
            $('body').on('iconpickerSelected','.icp-dd', function (e) {
                var selectedIcon = e.iconpickerValue;
                console.log(selectedIcon)
                $(this).parent().parent().children('input').val(selectedIcon);
            });

            $(document).on('click','.all-field-wrap .action-wrap .add',function (e){
                e.preventDefault();

                var el = $(this);
                var parent = el.parent().parent();
                var container = $('.all-field-wrap');
                var clonedData = parent.clone();
                var containerLength = container.length;
                clonedData.find('#myTab').attr('id','mytab_'+containerLength);
                clonedData.find('#myTabContent').attr('id','myTabContent_'+containerLength);
                var allTab =  clonedData.find('.tab-pane');
                allTab.each(function (index,value){
                    var el = $(this);
                    var oldId = el.attr('id');
                    el.attr('id',oldId+containerLength);
                });
                var allTabNav =  clonedData.find('.nav-link');
                allTabNav.each(function (index,value){
                    var el = $(this);
                    var oldId = el.attr('href');
                    el.attr('href',oldId+containerLength);
                });

                parent.parent().append(clonedData);

                if (containerLength > 0){
                    parent.parent().find('.remove').show(300);
                }
                parent.parent().find('.icp-dd').iconpicker();

            });

            $(document).on('click','.all-field-wrap .action-wrap .remove',function (e){
                e.preventDefault();

                var el = $(this);
                var parent = el.parent().parent();
                var container = $('.all-field-wrap');

                if (container.length > 1){
                    el.show(300);
                    parent.hide(300);
                    parent.remove();
                }else{
                    el.hide(300);
                }
            });


        });
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/pages/home/charity-home/icon-box.blade.php ENDPATH**/ ?>