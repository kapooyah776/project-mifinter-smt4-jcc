<div class="modal fade" id="media_upload_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?php echo e(__('Media Uploads')); ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="upload_media_image" data-toggle="tab" href="#upload_files" role="tab" aria-selected="true"><?php echo e(__('Upload Files')); ?></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"  data-toggle="tab" href="#media_library" role="tab" id="load_all_media_images" aria-controls="media_library" aria-selected="false"><?php echo e(__('Media Library')); ?></a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="upload_files" role="tabpanel" >
                        <div class="dropzone-form-wrapper">
                            <form action="<?php echo e(route('admin.upload.media.file')); ?>" method="post" id="placeholderfForm" class="dropzone" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                            </form>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="media_library" role="tabpanel" >
                        <div class="all-uploaded-images">

                            <div class="main-content-area-wrap">
                                <div class="image-preloader-wrapper">
                                    <div class="lds-spinner"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                                </div>
                                <ul class="media-uploader-image-list">
                                </ul>
                                <div class="media-uploader-image-info">
                                    <div class="img-wrapper">
                                        <img src="" alt="">
                                    </div>
                                    <div class="img-info">
                                        <h5 class="img-title"></h5>
                                        <ul class="img-meta" style="display: none">
                                            <li class="date"></li>
                                            <li class="dimension"></li>
                                            <li class="size"></li>
                                            <li class="image_id" style="display:none;"></li>
                                            <li class="imgsrc"></li>
                                        </ul>
                                        <a tabindex="0" style="display: none" class=" btn btn-lg btn-danger btn-sm mb-3 mr-1" role="button" data-placement="right"  data-toggle="popover" data-trigger="focus" data-html="true" title="" data-content="
                                                       <h6>Are you sure to delete this image?</h6>
                                                       <br>
                                                        <input type='submit' class='btn btn-danger btn-sm media_library_image_delete_btn' value='Yes, Delete'>
                                                        </form>
                                                        " data-original-title="">
                                            <i class="ti-trash"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary media_upload_modal_submit_btn" style="display: none"><?php echo e(__('Set Image')); ?></button>
            </div>
        </div>
    </div>
</div><?php /**PATH C:\xampp8.2.12\htdocs\jcc\resources\views/backend/partials/media-upload/media-upload-markup.blade.php ENDPATH**/ ?>