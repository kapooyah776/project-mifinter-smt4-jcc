<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Page Settings')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/bootstrap-tagsinput.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-12 mt-5">
                <?php echo $__env->make('backend.partials.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__("Page Name & Slug Settings")); ?></h4>
                        <?php if($errors->any()): ?>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="alert alert-danger"><?php echo e($error); ?></div>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <form action="<?php echo e(route('admin.general.page.settings')); ?>" method="POST" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="from-group">
                                        <label for="about_page_slug"><?php echo e(__('About Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="about_page_slug" value="<?php echo e(get_static_option('about_page_slug')); ?>" name="about_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: about-page')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="service_page_slug"><?php echo e(__('Service Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="service_page_slug" value="<?php echo e(get_static_option('service_page_slug')); ?>" name="service_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: service-page')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="work_page_slug"><?php echo e(__('Works Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="work_page_slug" value="<?php echo e(get_static_option('work_page_slug')); ?>" name="work_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: works')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="team_page_slug"><?php echo e(__('Team Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="team_page_slug" value="<?php echo e(get_static_option('team_page_slug')); ?>" name="team_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: team')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="faq_page_slug"><?php echo e(__('Faq Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="faq_page_slug" value="<?php echo e(get_static_option('faq_page_slug')); ?>" name="faq_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: faq')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="price_plan_page_slug"><?php echo e(__('Price Plan Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="price_plan_page_slug" value="<?php echo e(get_static_option('price_plan_page_slug')); ?>" name="price_plan_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: price-plan')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="blog_page_slug"><?php echo e(__('Blog Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="blog_page_slug" value="<?php echo e(get_static_option('blog_page_slug')); ?>" name="blog_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: blog')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="contact_page_slug"><?php echo e(__('Contact Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="contact_page_slug" value="<?php echo e(get_static_option('contact_page_slug')); ?>" name="contact_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: contact')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="career_with_us_page_slug"><?php echo e(__('Career With Us Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="career_with_us_page_slug" value="<?php echo e(get_static_option('career_with_us_page_slug')); ?>" name="career_with_us_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: career')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="events_page_slug"><?php echo e(__('Events Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="events_page_slug" value="<?php echo e(get_static_option('events_page_slug')); ?>" name="events_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: events')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="knowledgebase_page_slug"><?php echo e(__('Knowledgebase Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="knowledgebase_page_slug" value="<?php echo e(get_static_option('knowledgebase_page_slug')); ?>" name="knowledgebase_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: knowledgebase')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="donation_page_slug"><?php echo e(__('Donation Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="donation_page_slug" value="<?php echo e(get_static_option('donation_page_slug')); ?>" name="donation_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: donation')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="donor_page_slug"><?php echo e(__('Donor List Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="donor_page_slug" value="<?php echo e(get_static_option('donor_page_slug')); ?>" name="donor_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: donor-list')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="product_page_slug"><?php echo e(__('Product Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="product_page_slug" value="<?php echo e(get_static_option('product_page_slug')); ?>" name="product_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: products')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="testimonial_page_slug"><?php echo e(__('Testimonial Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="testimonial_page_slug" value="<?php echo e(get_static_option('testimonial_page_slug')); ?>" name="testimonial_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: testimonial')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="feedback_page_slug"><?php echo e(__('Feedback Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="feedback_page_slug" value="<?php echo e(get_static_option('feedback_page_slug')); ?>" name="feedback_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: feedback')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="clients_feedback_page_slug"><?php echo e(__('Clients Feedback Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="clients_feedback_page_slug" value="<?php echo e(get_static_option('clients_feedback_page_slug')); ?>" name="clients_feedback_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: clients-feedback')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="image_gallery_page_slug"><?php echo e(__('Image Gallery Page Slug')); ?></label>
                                        <input type="text" class="form-control" id="image_gallery_page_slug" value="<?php echo e(get_static_option('image_gallery_page_slug')); ?>" name="image_gallery_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: image-gallery')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="gig_page_slug"><?php echo e(__('Gigs Page Slug')); ?></label>
                                        <input type="text" class="form-control" value="<?php echo e(get_static_option('gig_page_slug')); ?>" name="gig_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: gigs')); ?></small>
                                    </div>
                                    <div class="from-group">
                                        <label for="quote_page_slug"><?php echo e(__('Quote Page Slug')); ?></label>
                                        <input type="text" class="form-control" value="<?php echo e(get_static_option('quote_page_slug')); ?>" name="quote_page_slug" placeholder="<?php echo e(__('Slug')); ?>" >
                                        <small><?php echo e(__('slug example: quote')); ?></small>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <nav>
                                        <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                            <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <a class="nav-item nav-link <?php if($key == 0): ?> active <?php endif; ?>" id="nav-home-tab" data-toggle="tab" href="#nav-home-<?php echo e($lang->slug); ?>" role="tab" aria-controls="nav-home" aria-selected="true"><?php echo e($lang->name); ?></a>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </nav>
                                    <div class="tab-content margin-top-30" id="nav-tabContent">
                                        <?php $__currentLoopData = $all_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="tab-pane fade <?php if($key == 0): ?> show active <?php endif; ?>" id="nav-home-<?php echo e($lang->slug); ?>" role="tabpanel" aria-labelledby="nav-home-tab">
                                                <div class="accordion-wrapper">
                                                    <div id="accordion-<?php echo e($lang->slug); ?>">
                                                        <div class="card">
                                                            <div class="card-header" id="about_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#about_page_content_<?php echo e($lang->slug); ?>" aria-expanded="true" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('about_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('about_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('About')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="about_page_content_<?php echo e($lang->slug); ?>" class="collapse show"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="about_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control" name="about_page_<?php echo e($lang->slug); ?>_name" id="about_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('about_page_'.$lang->slug.'_name')); ?>"  placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="about_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="about_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('about_page_'.$lang->slug.'_meta_tags')); ?>" id="about_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="about_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="about_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="about_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('about_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="service_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#service_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('service_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('service_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Service')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="service_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="service_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control" name="service_page_<?php echo e($lang->slug); ?>_name" id="service_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('service_page_'.$lang->slug.'_name')); ?>"  placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="service_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="service_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('service_page_'.$lang->slug.'_meta_tags')); ?>" id="service_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="service_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="service_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="service_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('service_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="work_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#work_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('work_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('work_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Works')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="work_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="work_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="work_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('work_page_'.$lang->slug.'_name')); ?>" name="work_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="work_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="work_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('work_page_'.$lang->slug.'_meta_tags')); ?>" id="work_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="work_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="work_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="work_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('work_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="team_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#team_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('team_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('team_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Team')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="team_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="team_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="team_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('team_page_'.$lang->slug.'_name')); ?>" name="team_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="team_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="team_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('team_page_'.$lang->slug.'_meta_tags')); ?>" id="team_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="team_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="team_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="team_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('team_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="faq_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#faq_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('faq_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('faq_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Faq')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="faq_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="faq_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="faq_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('faq_page_'.$lang->slug.'_name')); ?>" name="faq_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="faq_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="faq_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('faq_page_'.$lang->slug.'_meta_tags')); ?>" id="faq_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="faq_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="faq_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="faq_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('faq_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="price_plan_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#price_plan_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('price_plan_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('price_plan_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Price Plan')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="price_plan_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="price_plan_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="price_plan_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('price_plan_page_'.$lang->slug.'_name')); ?>" name="price_plan_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="price_plan_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="price_plan_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('price_plan_page_'.$lang->slug.'_meta_tags')); ?>" id="price_plan_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="price_plan_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="price_plan_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="price_plan_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('price_plan_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="blog_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#blog_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('blog_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('blog_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Blog')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="blog_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="blog_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="blog_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('blog_page_'.$lang->slug.'_name')); ?>" name="blog_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="blog_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="blog_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('blog_page_'.$lang->slug.'_meta_tags')); ?>" id="blog_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="blog_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="blog_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="blog_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('blog_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="contact_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#contact_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('contact_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('contact_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Contact')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="contact_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="contact_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="contact_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('contact_page_'.$lang->slug.'_name')); ?>" name="contact_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="contact_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="contact_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('contact_page_'.$lang->slug.'_meta_tags')); ?>" id="contact_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="contact_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="contact_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="contact_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('contact_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="career_with_us_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#career_with_us_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('career_with_us_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('career_with_us_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Career With Us')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="career_with_us_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="career_with_us_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="career_with_us_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('career_with_us_page_'.$lang->slug.'_name')); ?>" name="career_with_us_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="career_with_us_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="career_with_us_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('career_with_us_page_'.$lang->slug.'_meta_tags')); ?>" id="career_with_us_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="career_with_us_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="career_with_us_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="career_with_us_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('career_with_us_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="events_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#events_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('events_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('events_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Events')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="events_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="events_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="events_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('events_page_'.$lang->slug.'_name')); ?>" name="events_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="events_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="events_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('events_page_'.$lang->slug.'_meta_tags')); ?>" id="events_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="events_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="events_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="events_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('events_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-header" id="knowledgebase_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#knowledgebase_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('knowledgebase_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('knowledgebase_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Knowledgebase')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="knowledgebase_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="knowledgebase_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="knowledgebase_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('knowledgebase_page_'.$lang->slug.'_name')); ?>" name="knowledgebase_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="knowledgebase_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="events_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('knowledgebase_page_'.$lang->slug.'_meta_tags')); ?>" id="knowledgebase_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="knowledgebase_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="knowledgebase_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="knowledgebase_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('knowledgebase_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="quote_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#quote_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('quote_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('quote_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Quote')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="quote_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="quote_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="quote_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('quote_page_'.$lang->slug.'_name')); ?>" name="quote_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="quote_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="quote_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('quote_page_'.$lang->slug.'_meta_tags')); ?>" id="quote_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="quote_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="quote_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="quote_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('quote_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-header" id="donation_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#donation_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('donation_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('donation_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Donation')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="donation_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="donation_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="donation_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('donation_page_'.$lang->slug.'_name')); ?>" name="donation_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="donation_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="donation_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('donation_page_'.$lang->slug.'_meta_tags')); ?>" id="donation_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="donation_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="donation_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="donation_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('donation_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-header" id="product_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#product_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('product_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('product_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Products')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="product_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="product_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="product_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('product_page_'.$lang->slug.'_name')); ?>" name="product_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="product_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="product_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('product_page_'.$lang->slug.'_meta_tags')); ?>" id="product_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="product_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="product_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="product_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('product_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="testimonial_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#testimonial_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('testimonial_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('testimonial_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Testimonials')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="testimonial_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="testimonial_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="testimonial_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('testimonial_page_'.$lang->slug.'_name')); ?>" name="testimonial_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="testimonial_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="testimonial_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('testimonial_page_'.$lang->slug.'_meta_tags')); ?>" id="testimonial_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="testimonial_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="testimonial_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="testimonial_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('testimonial_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="feedback_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#feedback_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('feedback_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('feedback_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Feedback')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="feedback_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="feedback_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="feedback_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('feedback_page_'.$lang->slug.'_name')); ?>" name="feedback_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="feedback_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="feedback_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('feedback_page_'.$lang->slug.'_meta_tags')); ?>" id="feedback_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="feedback_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="feedback_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="feedback_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('feedback_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="clients_feedback_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#clients_feedback_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('clients_feedback_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('clients_feedback_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Clients Feedback')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="clients_feedback_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="clients_feedback_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="clients_feedback_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('clients_feedback_page_'.$lang->slug.'_name')); ?>" name="clients_feedback_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="clients_feedback_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="clients_feedback_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('clients_feedback_page_'.$lang->slug.'_meta_tags')); ?>" id="clients_feedback_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="feedback_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="clients_feedback_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="clients_feedback_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('clients_feedback_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="image_gallery_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#image_gallery_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('image_gallery_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('image_gallery_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Image Gallery')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="image_gallery_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="image_gallery_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="image_gallery_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('image_gallery_page_'.$lang->slug.'_name')); ?>" name="image_gallery_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="image_gallery_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="image_gallery_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('image_gallery_page_'.$lang->slug.'_meta_tags')); ?>" id="image_gallery_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="image_gallery_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="image_gallery_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="image_gallery_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('image_gallery_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="donor_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#donor_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('donor_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('donor_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Donor List')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="donor_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="donor_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="donor_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('donor_page_'.$lang->slug.'_name')); ?>" name="donor_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="donor_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="donor_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('donor_page_'.$lang->slug.'_meta_tags')); ?>" id="donor_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="donor_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="donor_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="donor_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('donor_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="card">
                                                            <div class="card-header" id="gig_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#gig_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('gig_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('gig_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Gigs')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="gig_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="gig_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" id="gig_page_<?php echo e($lang->slug); ?>_name" value="<?php echo e(get_static_option('gig_page_'.$lang->slug.'_name')); ?>" name="gig_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="gig_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="gig_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('gig_page_'.$lang->slug.'_meta_tags')); ?>" id="gig_page_<?php echo e($lang->slug); ?>_meta_tags">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="gig_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="gig_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" id="gig_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(get_static_option('gig_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="card">
                                                            <div class="card-header" id="account_page_<?php echo e($lang->slug); ?>">
                                                                <h5 class="mb-0">
                                                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#account_page_content_<?php echo e($lang->slug); ?>" aria-expanded="false" >
                                                                        <span class="page-title"><?php if(!empty(get_static_option('account_page_'.$lang->slug.'_name'))): ?> <?php echo e(get_static_option('account_page_'.$lang->slug.'_name')); ?> <?php else: ?> <?php echo e(__('Account')); ?>  <?php endif; ?></span>
                                                                    </button>
                                                                </h5>
                                                            </div>
                                                            <div id="account_page_content_<?php echo e($lang->slug); ?>" class="collapse"  data-parent="#accordion-<?php echo e($lang->slug); ?>">
                                                                <div class="card-body">
                                                                    <div class="from-group">
                                                                        <label for="account_page_<?php echo e($lang->slug); ?>_name"><?php echo e(__('Name')); ?></label>
                                                                        <input type="text" class="form-control page-name" value="<?php echo e(get_static_option('account_page_'.$lang->slug.'_name')); ?>" name="account_page_<?php echo e($lang->slug); ?>_name" placeholder="<?php echo e(__('Name')); ?>" >
                                                                    </div>
                                                                    <div class="form-group margin-top-20">
                                                                        <label for="account_page_<?php echo e($lang->slug); ?>_meta_tags"><?php echo e(__('Meta Tags')); ?></label>
                                                                        <input type="text" name="account_page_<?php echo e($lang->slug); ?>_meta_tags"  class="form-control" data-role="tagsinput" value="<?php echo e(get_static_option('account_page_'.$lang->slug.'_meta_tags')); ?>" >
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label for="account_page_<?php echo e($lang->slug); ?>_meta_description"><?php echo e(__('Meta Description')); ?></label>
                                                                        <textarea name="account_page_<?php echo e($lang->slug); ?>_meta_description"  class="form-control" rows="5" ><?php echo e(get_static_option('account_page_'.$lang->slug.'_meta_description')); ?></textarea>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Changes')); ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('assets/backend/js/bootstrap-tagsinput.js')); ?>"></script>
    <script>
        $(document).ready(function (e) {
            $('.page-name').bind('change paste keyup',function (e) {
                $(this).parent().parent().parent().prev().find('.page-title').text($(this).val());
            })
        })
    </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\jcc\apt\resources\views/backend/general-settings/page-settings.blade.php ENDPATH**/ ?>