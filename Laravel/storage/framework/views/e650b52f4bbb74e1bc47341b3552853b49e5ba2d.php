
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo e(get_static_option('site_meta_'.get_user_lang().'_description')); ?>">
    <meta name="tags" content="<?php echo e(get_static_option('site_meta_'.get_user_lang().'_tags')); ?>">

    <title><?php echo e(get_static_option('site_'.get_user_lang().'_title')); ?> - <?php echo e(get_static_option('site_'.get_user_lang().'_tag_line')); ?></title>

    <link href="https://fonts.googleapis.com/css?family=Montserrat:500" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:700,900" rel="stylesheet">
    <?php echo render_favicon_by_id(get_static_option('site_favicon')); ?>

    <?php if(!empty(get_static_option('custom_css_area'))): ?>
        <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/dynamic-style.css')); ?>">
    <?php endif; ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/frontend/css/jquery.ihavecookies.css')); ?>">
    <style>
        :root {
            --main-color-one: <?php echo e(get_static_option('site_color')); ?>;
            --secondary-color: <?php echo e(get_static_option('site_main_color_two')); ?>;
            --heading-color: <?php echo e(get_static_option('site_heading_color')); ?>;
            --paragraph-color: <?php echo e(get_static_option('site_paragraph_color')); ?>;
        }
    </style>
    <style>
        * {
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            padding: 0;
            margin: 0;
        }

        #notfound {
            position: relative;
            height: 100vh;
        }

        #notfound .notfound {
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        .notfound {
            max-width: 767px;
            width: 100%;
            line-height: 1.4;
            padding: 0px 15px;
        }

        .notfound .notfound-404 {
            position: relative;
            height: 150px;
            line-height: 150px;
            margin-bottom: 25px;
        }

        .notfound .notfound-404 h1 {
            font-family: 'Titillium Web', sans-serif;
            font-size: 186px;
            font-weight: 900;
            margin: 0px;
            text-transform: uppercase;
            color: var(--main-color-one);
        }

        .notfound h3 {
            font-family: 'Montserrat', sans-serif;
            font-size: 26px;
            line-height: 36px;
            color: var(--heading-color);
        }
        .notfound h2 {
            font-family: 'Titillium Web', sans-serif;
            font-size: 26px;
            font-weight: 700;
            margin: 0;
            color: var(--heading-color);
        }

        .notfound p {
            font-family: 'Montserrat', sans-serif;
            font-size: 14px;
            font-weight: 500;
            margin-bottom: 0px;
            color: var(--paragraph-color);
            line-height: 29px;
        }

        .notfound a {
            font-family: 'Titillium Web', sans-serif;
            font-size: 14px;
            font-weight: 700;
            margin-top: 15px;
            -webkit-transition: 0.2s all;
            transition: 0.2s all;
        }

        .notfound a:hover {
            background: var(--main-color-one);
        }

        @media  only screen and (max-width: 767px) {
            .notfound .notfound-404 {
                height: 110px;
                line-height: 110px;
            }
            .notfound .notfound-404 h1 {
                font-size: 120px;
            }
        }
    </style>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
    <body>
        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h1><?php echo e(__('500')); ?></h1>
                    <h3><?php echo e(__('Server Errors')); ?></h3>
                    <p><?php echo e(__('Please contact support ')); ?> <a href="http://xgenious.com/">xgenious</a></p>
                </div>
            </div>
        </div>
    </body>
</html>
<?php /**PATH C:\xampp\htdocs\jcc\apt\resources\views/errors/500.blade.php ENDPATH**/ ?>