/*
 Navicat Premium Data Transfer

 Source Server         : Local  XAMPP
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : jcc

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 19/02/2025 18:20:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Super Admin', '{\"admin_role_manage\":{\"\'all_admin\'\":\"admin.all.user\",\"\'add_new_admin\'\":\"admin.new.user\",\"\'all_admin_role\'\":\"admin.all.user.role\"},\"user_manage\":{\"\'all_users\'\":\"admin.all.frontend.user\",\"\'add_new_user\'\":\"admin.frontend.new.user\"},\"widgets_manage\":{\"\'all_widgets\'\":\"admin.widgets\"},\"menus_manage\":{\"\'all_menus\'\":\"admin.menu\"},\"form_builder\":{\"\'quote_form\'\":\"admin.form.builder.quote\",\"\'contact_form\'\":\"admin.form.builder.contact\",\"\'order_form\'\":\"admin.form.builder.order\",\"\'request_call_back_form\'\":\"admin.form.builder.call.back\",\"\'job_apply_form\'\":\"admin.form.builder.job.apply\",\"\'event_booking_form\'\":\"admin.form.builder.event.booking\"},\"newsletter_manage\":{\"\'all_subscriber\'\":\"admin.newsletter\",\"\'send_mail_to_all\'\":\"admin.newsletter.mail\"},\"quote_manage\":{\"\'all_quote\'\":\"admin.quote.manage.all\",\"\'pending_quote\'\":\"admin.quote.manage.pending\",\"\'complete_quote\'\":\"admin.quote.manage.completed\",\"\'quote_page_manage\'\":\"admin.quote.page\"},\"package_order_manage\":{\"\'all_order\'\":\"admin.order.manage.all\",\"\'pending_order\'\":\"admin.order.manage.pending\",\"\'in_progress_order\'\":\"admin.order.manage.in.progress\",\"\'completed_order\'\":\"admin.order.manage.completed\",\"\'success_order_page\'\":\"admin.order.success.page\",\"\'cancel_order_page\'\":\"admin.order.cancel.page\",\"\'all_payment_logs\'\":\"admin.payment.logs\",\"\'order_page_manage\'\":\"admin.order.page\"},\"pages_manage\":{\"\'all_pages\'\":\"admin.page\",\"\'add_new_page\'\":\"admin.page.new\"},\"gallery_manage\":{\"\'gallery_items\'\":\"admin.gallery.all\",\"\'category\'\":\"admin.gallery.category\"},\"about_page_manage\":{\"\'about_us_section\'\":\"admin.about.page.about\",\"\'know_us_section\'\":\"admin.about.know\",\"\'section_manage\'\":\"admin.about.page.section.manage\"},\"contact_page_manage\":{\"\'contact_info\'\":\"admin.contact.info\",\"\'form_area\'\":\"admin.contact.page.form.area\",\"\'google_map_area\'\":\"admin.contact.page.map\",\"\'section_manage\'\":\"admin.contact.section.manage\"},\"404_page_manage\":{\"\'404_page_manage\'\":\"admin.404.page.settings\"},\"faq\":{\"\'faq\'\":\"admin.faq\"},\"brand_logos\":{\"\'brand_logos\'\":\"admin.brands\"},\"price_plan\":{\"\'price_plan\'\":\"admin.price.plan\",\"\'price_plan_page_manage\'\":\"admin.price.plan.page.settings\"},\"testimonial\":{\"\'testimonial\'\":\"admin.testimonial\"},\"team_members\":{\"\'team_members\'\":\"admin.team.member\"},\"counterup\":{\"\'counterup\'\":\"admin.counterup\"},\"site_maintenance_mode\":{\"\'site_maintenance_mode\'\":\"admin.maintains.page.settings\"},\"popup_builder\":{\"\'all_popup\'\":\"admin.popup.builder.all\",\"\'new_popup\'\":\"admin.popup.builder.new\"},\"feedback_page_manage\":{\"\'page_settings\'\":\"admin.feedback.page.settings\",\"\'form_builder\'\":\"admin.feedback.page.form.builder\",\"\'all_feedback\'\":\"admin.feedback.all\"},\"home_page_manage\":{\"\'header_area\'\":\"admin.header\",\"\'icon_box_area\'\":\"admin.charity.home.icon.box.area\",\"\'about_us_area\'\":\"admin.charity.home.about.area\",\"\'service_area\'\":\"admin.charity.home.service.area\",\"\'recent_cause_area\'\":\"admin.charity.home.recent.cause\",\"\'our_gallery_area\'\":\"admin.charity.home.our.gallery\",\"\'event_area\'\":\"admin.charity.home.event.area\",\"\'counterup_area\'\":\"admin.charity.home.counterup.area\",\"\'team_member_area\'\":\"admin.charity.home.team.member.area\",\"\'testimonial_area\'\":\"admin.charity.home.testimonial.area\",\"\'news_&_blog_area\'\":\"admin.charity.home.news.blog.area\",\"\'section_manage\'\":\"admin.homeone.section.manage\"},\"home_variant\":{\"\'home_variant\'\":\"admin.home.variant\"},\"navbar_settings\":{\"\'navbar_settings\'\":\"admin.navbar.settings\"},\"top_bar_settings\":{\"\'top_bar_settings\'\":\"admin.topbar\"},\"blogs_manage\":{\"\'all_blog\'\":\"admin.blog\",\"\'category\'\":\"admin.blog.category\",\"\'add_new_post\'\":\"admin.blog.new\",\"\'blog_page_settings\'\":\"admin.blog.page\",\"\'blog_single_page_settings\'\":\"admin.blog.single.page\"},\"job_post_manage\":{\"\'all_jobs\'\":\"admin.jobs.all\",\"\'category\'\":\"admin.jobs.category.all\",\"\'add_new_job\'\":\"admin.jobs.new\",\"\'job_page_settings\'\":\"admin.jobs.page.settings\",\"\'all_applicant\'\":\"admin.jobs.applicant\",\"\'applicant_report\'\":\"admin.jobs.applicant.report\"},\"events_manage\":{\"\'all_events\'\":\"admin.events.all\",\"\'category\'\":\"admin.events.category.all\",\"\'add_new_event\'\":\"admin.events.new\",\"\'event_page_settings\'\":\"admin.events.page.settings\",\"\'event_single_settings\'\":\"admin.events.single.page.settings\",\"\'event_attendance\'\":\"admin.events.attendance\",\"\'event_attendance_logs\'\":\"admin.event.attendance.logs\",\"\'event_payment_logs\'\":\"admin.event.payment.logs\",\"\'payment_success_page_settings\'\":\"admin.events.payment.success.page.settings\",\"\'payment_cancel_page_settings\'\":\"admin.events.payment.cancel.page.settings\",\"\'attendance_report\'\":\"admin.event.attendance.report\",\"\'payment_log_report\'\":\"admin.event.payment.report\"},\"products_manage\":{\"\'all_products\'\":\"admin.products.all\",\"\'add_new_product\'\":\"admin.products.new\",\"\'category\'\":\"admin.products.category.all\",\"\'shipping\'\":\"admin.products.shipping.all\",\"\'coupon\'\":\"admin.products.coupon.all\",\"\'product_page_settings\'\":\"admin.products.page.settings\",\"\'product_single_page_settings\'\":\"admin.products.single.page.settings\",\"\'order_success_page_settings\'\":\"admin.products.success.page.settings\",\"\'order_cancel_page_settings\'\":\"admin.products.cancel.page.settings\",\"\'orders\'\":\"admin.products.order.logs\",\"\'ratings\'\":\"admin.products.ratings\",\"\'order_report\'\":\"admin.products.order.report\",\"\'tax_settings\'\":\"admin.products.tax.settings\"},\"donations_manage\":{\"\'all_donations\'\":\"admin.donations.all\",\"\'add_new_donation\'\":\"admin.donations.new\",\"\'donation_page_settings\'\":\"admin.donations.page.settings\",\"\'donation_single_settings\'\":\"admin.donations.single.page.settings\",\"\'donation_payment_logs\'\":\"admin.donations.payment.logs\",\"\'payment_success_page_settings\'\":\"admin.donations.payment.success.page.settings\",\"\'payment_cancel_page_settings\'\":\"admin.donations.payment.cancel.page.settings\",\"\'donation_report\'\":\"admin.donations.report\"},\"knowledgebase_manage\":{\"\'all_articles\'\":\"admin.knowledge.all\",\"\'topics\'\":\"admin.knowledge.category.all\",\"\'add_new_article\'\":\"admin.knowledge.new\",\"\'knowledgebase_page_settings\'\":\"admin.knowledge.page.settings\"},\"gigs_manage\":{\"\'all_gigs\'\":\"admin.gigs.all\",\"\'new_gig\'\":\"admin.gigs.new\",\"\'category\'\":\"admin.gigs.category\",\"\'gigs_page_settings\'\":\"admin.gigs.page.settings\",\"\'gigs_single_page_settings\'\":\"admin.gigs.single.page.settings\",\"\'order_success_settings\'\":\"admin.gigs.success.page.settings\",\"\'order_cancel_settings\'\":\"admin.gigs.cancel.page.settings\",\"\'gigs_order_manage\'\":\"admin.gigs.orders\"},\"services\":{\"\'all_services\'\":\"admin.services\",\"\'new_services\'\":\"admin.services.new\",\"\'category\'\":\"admin.service.category\",\"\'service_single_settings\'\":\"admin.services.single.page.settings\"},\"works\":{\"\'all_works\'\":\"admin.work\",\"\'new_works\'\":\"admin.work.new\",\"\'category\'\":\"admin.work.category\",\"\'work_page_manage\'\":\"admin.work.page.settings\",\"\'work_single_page_manage\'\":\"admin.work.single.page.settings\"},\"languages\":{\"\'languages\'\":\"admin.languages\"},\"general_settings\":{\"\'site_identity\'\":\"admin.general.site.identity\",\"\'basic_settings\'\":\"admin.general.basic.settings\",\"\'typography_settings\'\":\"admin.general.typography.settings\",\"\'seo_settings\'\":\"admin.general.seo.settings\",\"\'third_party_scripts\'\":\"admin.general.scripts.settings\",\"\'email_template\'\":\"admin.general.email.template\",\"\'email_settings\'\":\"admin.general.email.settings\",\"\'smtp_settings\'\":\"admin.general.smtp.settings\",\"\'regenerate_media_image\'\":\"admin.general.regenerate.thumbnail\",\"\'permalink_flush\'\":\"admin.general.permalink.flush\",\"\'page_settings\'\":\"admin.general.page.settings\",\"\'payment_gateway_settings\'\":\"admin.general.payment.settings\",\"\'custom_css\'\":\"admin.general.custom.css\",\"\'custom_js\'\":\"admin.general.custom.js\",\"\'cache_settings\'\":\"admin.general.cache.settings\",\"\'gdpr_compliant_cookies_settings\'\":\"admin.general.gdpr.settings\",\"\'preloader_settings\'\":\"admin.general.preloader.settings\",\"\'popup_settings\'\":\"admin.general.popup.settings\",\"\'module_settings\'\":\"admin.general.module.settings\",\"\'sitemap_settings\'\":\"admin.general.sitemap.settings\",\"\'rss_feed_settings\'\":\"admin.general.rss.feed.settings\",\"\'licence_settings\'\":\"admin.general.license.settings\"}}', '2020-03-29 15:39:42', '2025-01-22 11:27:13');
INSERT INTO `admin_roles` VALUES (2, 'Admin', '{\"admin_role_manage\":{\"\'all_admin\'\":\"admin.all.user\"},\"user_manage\":{\"\'add_new_user\'\":\"admin.frontend.new.user\"},\"form_builder\":{\"\'contact_form\'\":\"admin.form.builder.contact\"},\"newsletter_manage\":{\"\'all_subscriber\'\":\"admin.newsletter\",\"\'send_mail_to_all\'\":\"admin.newsletter.mail\"},\"pages_manage\":{\"\'all_pages\'\":\"admin.page\",\"\'add_new_page\'\":\"admin.page.new\"},\"gallery_manage\":{\"\'gallery_items\'\":\"admin.gallery.all\",\"\'category\'\":\"admin.gallery.category\"},\"about_page_manage\":{\"\'about_us_section\'\":\"admin.about.page.about\",\"\'know_us_section\'\":\"admin.about.know\",\"\'section_manage\'\":\"admin.about.page.section.manage\"},\"contact_page_manage\":{\"\'contact_info\'\":\"admin.contact.info\",\"\'form_area\'\":\"admin.contact.page.form.area\",\"\'google_map_area\'\":\"admin.contact.page.map\"},\"404_page_manage\":{\"\'404_page_manage\'\":\"admin.404.page.settings\"},\"faq\":{\"\'faq\'\":\"admin.faq\"},\"brand_logos\":{\"\'brand_logos\'\":\"admin.brands\"},\"team_members\":{\"\'team_members\'\":\"admin.team.member\"},\"site_maintenance_mode\":{\"\'site_maintenance_mode\'\":\"admin.maintains.page.settings\"},\"blogs_manage\":{\"\'all_blog\'\":\"admin.blog\",\"\'category\'\":\"admin.blog.category\",\"\'add_new_post\'\":\"admin.blog.new\",\"\'blog_page_settings\'\":\"admin.blog.page\",\"\'blog_single_page_settings\'\":\"admin.blog.single.page\"},\"events_manage\":{\"\'all_events\'\":\"admin.events.all\",\"\'category\'\":\"admin.events.category.all\",\"\'add_new_event\'\":\"admin.events.new\",\"\'event_page_settings\'\":\"admin.events.page.settings\",\"\'event_single_settings\'\":\"admin.events.single.page.settings\",\"\'event_attendance\'\":\"admin.events.attendance\",\"\'event_attendance_logs\'\":\"admin.event.attendance.logs\",\"\'attendance_report\'\":\"admin.event.attendance.report\",\"\'payment_log_report\'\":\"admin.event.payment.report\"},\"products_manage\":{\"\'order_report\'\":\"admin.products.order.report\"},\"knowledgebase_manage\":{\"\'all_articles\'\":\"admin.knowledge.all\",\"\'topics\'\":\"admin.knowledge.category.all\",\"\'add_new_article\'\":\"admin.knowledge.new\",\"\'knowledgebase_page_settings\'\":\"admin.knowledge.page.settings\"},\"services\":{\"\'all_services\'\":\"admin.services\",\"\'new_services\'\":\"admin.services.new\",\"\'category\'\":\"admin.service.category\",\"\'service_single_settings\'\":\"admin.services.single.page.settings\"},\"general_settings\":{\"\'email_template\'\":\"admin.general.email.template\",\"\'email_settings\'\":\"admin.general.email.settings\",\"\'smtp_settings\'\":\"admin.general.smtp.settings\",\"\'page_settings\'\":\"admin.general.page.settings\",\"\'cache_settings\'\":\"admin.general.cache.settings\",\"\'gdpr_compliant_cookies_settings\'\":\"admin.general.gdpr.settings\",\"\'preloader_settings\'\":\"admin.general.preloader.settings\",\"\'popup_settings\'\":\"admin.general.popup.settings\"}}', '2020-03-29 15:54:23', '2025-02-03 08:39:14');
INSERT INTO `admin_roles` VALUES (3, 'Editor', '{\"form_builder\":{\"\'contact_form\'\":\"admin.form.builder.contact\",\"\'event_booking_form\'\":\"admin.form.builder.event.booking\"},\"newsletter_manage\":{\"\'all_subscriber\'\":\"admin.newsletter\",\"\'send_mail_to_all\'\":\"admin.newsletter.mail\"},\"gallery_manage\":{\"\'gallery_items\'\":\"admin.gallery.all\",\"\'category\'\":\"admin.gallery.category\"},\"contact_page_manage\":{\"\'contact_info\'\":\"admin.contact.info\",\"\'form_area\'\":\"admin.contact.page.form.area\",\"\'google_map_area\'\":\"admin.contact.page.map\"},\"faq\":{\"\'faq\'\":\"admin.faq\"},\"testimonial\":{\"\'testimonial\'\":\"admin.testimonial\"},\"popup_builder\":{\"\'all_popup\'\":\"admin.popup.builder.all\",\"\'new_popup\'\":\"admin.popup.builder.new\"},\"blogs_manage\":{\"\'all_blog\'\":\"admin.blog\",\"\'category\'\":\"admin.blog.category\",\"\'add_new_post\'\":\"admin.blog.new\",\"\'blog_page_settings\'\":\"admin.blog.page\",\"\'blog_single_page_settings\'\":\"admin.blog.single.page\"},\"events_manage\":{\"\'all_events\'\":\"admin.events.all\",\"\'category\'\":\"admin.events.category.all\",\"\'add_new_event\'\":\"admin.events.new\",\"\'event_page_settings\'\":\"admin.events.page.settings\",\"\'event_single_settings\'\":\"admin.events.single.page.settings\",\"\'event_attendance\'\":\"admin.events.attendance\"},\"knowledgebase_manage\":{\"\'all_articles\'\":\"admin.knowledge.all\",\"\'topics\'\":\"admin.knowledge.category.all\",\"\'add_new_article\'\":\"admin.knowledge.new\",\"\'knowledgebase_page_settings\'\":\"admin.knowledge.page.settings\"}}', '2020-03-29 15:55:54', '2025-01-22 09:40:30');

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int UNSIGNED NOT NULL DEFAULT 0,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admins_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'Wahyu K', 'super_admin', 'why.bagas@gmail.com', 0, '1', '141', '$2y$10$YfrP1EhhJK/EefcnLEdBJ.7FaoWMJVkSAcYgi.92qf7SRRbi/3ZGq', 'S17jAZegSQIhJ11FNNYvbqunApE2ySrKlsSf4Uq7AtbXDohQWi2yX90T0a7G', '2020-01-29 17:44:57', '2025-02-15 15:34:14');
INSERT INTO `admins` VALUES (2, 'Bardi', 'admin', 'why.bagas@gmail.com', 0, '2', '129', '$2y$10$JE/nGLrFZ9zikgwxFtnQY./Y1DEzp8xEypxPJEvmAwzSNUIoNI3r.', 'La2NJpOl1TkiA01eiMLXt1yDkSJ5yIY7uiFHjj4c4s1RWh3GdAFRwehkooLm', '2020-01-29 17:53:10', '2025-02-04 09:01:47');
INSERT INTO `admins` VALUES (3, 'Joyo', 'editor', 'why.bagas@gmail.com', 0, '3', '131', '$2y$10$DbjExcnruN82cdSBaobVnuHbKMB7m2B2XYQtZR6l4cqvr4JjZouei', 'tW4u01mk4GMTCnvVF7PXDq2FULc58LjqOqkXYR39ahtnts1jJGyhkPQ9cnvH', '2020-01-29 17:50:01', '2025-02-04 09:01:59');

-- ----------------------------
-- Table structure for blog_categories
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `blog_categories_name_unique`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------
INSERT INTO `blog_categories` VALUES (1, 'Boxing', 'publish', 'en', '2020-01-25 18:54:07', '2025-02-04 07:25:11');
INSERT INTO `blog_categories` VALUES (2, 'Karate', 'publish', 'en', '2020-01-25 18:56:06', '2025-02-04 07:25:00');
INSERT INTO `blog_categories` VALUES (3, 'Jiu Jitsu', 'publish', 'en', '2020-01-25 18:56:17', '2025-02-04 07:24:50');
INSERT INTO `blog_categories` VALUES (4, 'Muay-Thai', 'publish', 'en', '2025-02-04 07:25:35', '2025-02-04 07:25:35');

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` blob NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int UNSIGNED NOT NULL,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `excerpt` blob NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_tags` blob NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of blogs
-- ----------------------------

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of brands
-- ----------------------------

-- ----------------------------
-- Table structure for contact_info_items
-- ----------------------------
DROP TABLE IF EXISTS `contact_info_items`;
CREATE TABLE `contact_info_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contact_info_items
-- ----------------------------
INSERT INTO `contact_info_items` VALUES (1, 'Location', 'en', 'fas fa-map-marker-alt', 'Jl. KH Shiddiq No.83-85, Kelurahan Jember Kidu, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131', '2020-01-28 15:05:43', '2025-01-20 07:54:18');
INSERT INTO `contact_info_items` VALUES (2, 'Email', 'en', 'fas fa-envelope', 'jcombatclub@gmail.com', '2020-01-28 15:06:16', '2025-02-04 07:13:58');
INSERT INTO `contact_info_items` VALUES (3, 'Phone', 'en', 'fas fa-phone', '+62 111 222 333;\r\n+62 111 222 333', '2020-01-28 15:06:32', '2025-01-16 08:33:51');

-- ----------------------------
-- Table structure for counterups
-- ----------------------------
DROP TABLE IF EXISTS `counterups`;
CREATE TABLE `counterups`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of counterups
-- ----------------------------

-- ----------------------------
-- Table structure for donation_logs
-- ----------------------------
DROP TABLE IF EXISTS `donation_logs`;
CREATE TABLE `donation_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `donation_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `donation_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of donation_logs
-- ----------------------------

-- ----------------------------
-- Table structure for donations
-- ----------------------------
DROP TABLE IF EXISTS `donations`;
CREATE TABLE `donations`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of donations
-- ----------------------------

-- ----------------------------
-- Table structure for event_attendances
-- ----------------------------
DROP TABLE IF EXISTS `event_attendances`;
CREATE TABLE `event_attendances`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `checkout_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `event_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `event_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `quantity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of event_attendances
-- ----------------------------

-- ----------------------------
-- Table structure for event_payment_logs
-- ----------------------------
DROP TABLE IF EXISTS `event_payment_logs`;
CREATE TABLE `event_payment_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `event_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `event_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `event_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `package_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attendance_id` int UNSIGNED NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of event_payment_logs
-- ----------------------------

-- ----------------------------
-- Table structure for events
-- ----------------------------
DROP TABLE IF EXISTS `events`;
CREATE TABLE `events`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `time` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cost` decimal(11, 0) NULL DEFAULT NULL,
  `available_tickets` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `organizer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `organizer_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `organizer_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `organizer_website` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `venue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `venue_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `venue_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of events
-- ----------------------------

-- ----------------------------
-- Table structure for events_categories
-- ----------------------------
DROP TABLE IF EXISTS `events_categories`;
CREATE TABLE `events_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of events_categories
-- ----------------------------
INSERT INTO `events_categories` VALUES (1, 'Event Local', 'publish', 'en', '2020-04-23 22:14:59', '2025-01-22 09:27:13');
INSERT INTO `events_categories` VALUES (2, 'Event Nasional', 'publish', 'en', '2020-04-23 22:15:22', '2025-01-22 09:27:27');
INSERT INTO `events_categories` VALUES (3, 'Evemt International', 'publish', 'en', '2020-04-23 22:24:36', '2025-01-22 09:27:40');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for faqs
-- ----------------------------
DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_open` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of faqs
-- ----------------------------
INSERT INTO `faqs` VALUES (1, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:31:47', '2020-02-27 01:41:13');
INSERT INTO `faqs` VALUES (2, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:36:58', '2020-02-27 01:41:19');
INSERT INTO `faqs` VALUES (3, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:51:21', '2020-02-27 01:41:23');
INSERT INTO `faqs` VALUES (4, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:51:34', '2020-02-27 01:41:27');
INSERT INTO `faqs` VALUES (5, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:51:55', '2020-02-27 01:41:32');
INSERT INTO `faqs` VALUES (6, 'Turned it up should no valley cousin he', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:52:10', '2020-02-27 01:41:36');
INSERT INTO `faqs` VALUES (7, 'All having but you edward genius though go', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:52:23', '2020-02-27 01:41:40');
INSERT INTO `faqs` VALUES (8, 'You sudden nay elinor thirty esteem temper', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:52:36', '2020-02-27 01:41:44');
INSERT INTO `faqs` VALUES (9, 'Quiet leave shy you gay off asked large style', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:52:51', '2020-09-02 08:18:08');
INSERT INTO `faqs` VALUES (10, 'New the her nor case that lady paid read', 'publish', '', 'en', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', '2020-01-28 13:53:14', '2020-11-01 12:39:35');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for gig_messages
-- ----------------------------
DROP TABLE IF EXISTS `gig_messages`;
CREATE TABLE `gig_messages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `notify_mail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int UNSIGNED NULL DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gig_order_id` int UNSIGNED NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gig_messages
-- ----------------------------

-- ----------------------------
-- Table structure for gig_orders
-- ----------------------------
DROP TABLE IF EXISTS `gig_orders`;
CREATE TABLE `gig_orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `additional_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `selected_payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gig_id` int UNSIGNED NULL DEFAULT NULL,
  `selected_plan_index` int UNSIGNED NULL DEFAULT NULL,
  `selected_plan_revisions` int UNSIGNED NULL DEFAULT NULL,
  `selected_plan_delivery_days` int UNSIGNED NULL DEFAULT NULL,
  `selected_plan_price` decimal(8, 2) NULL DEFAULT NULL,
  `selected_plan_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `seen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gig_orders
-- ----------------------------

-- ----------------------------
-- Table structure for gigs
-- ----------------------------
DROP TABLE IF EXISTS `gigs`;
CREATE TABLE `gigs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gallery` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `faqs_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `plan_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `plan_price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `plan_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `category_id` int UNSIGNED NULL DEFAULT NULL,
  `delivery_time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `revisions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `faqs_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gigs
-- ----------------------------
INSERT INTO `gigs` VALUES (1, 'I will be your social media marketing manager and content creator', 'i-will-be-your-social-media-marketing-manager-and-content-creator', 'en', 'publish', '154', '154|153|152|151', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">If you are here now, sure you are looking for a professional&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Social Media Manager</span></b>!<br></span><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">Why you will need to continually grow your&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">SM presence</span></b>:</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">1- The number of active&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">social media</span></b>&nbsp;users worldwide is 2.78 billion, out of the world’s population of 7.47 billion. (we are social)</span></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">·2-&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">More than 2 million advertisers regularly use&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Facebook&nbsp;marketing&nbsp;</span></b>to market their business.</span></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">3- 85% of people rely on&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Twitter and Facebook</span></b>&nbsp;for their morning news.</span></p><br></div><p><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">What you will get from my service:</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Create + Optimize your social media accounts ( If you don\'t have them already)</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Content creation with high-quality images and branded with your logo or website URL</span></b><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">.</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Trending Hash-Tags&nbsp;</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Increased engagement.</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Increase your brand awareness</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Organic Followers + BONUS&nbsp;</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">- Drive traffic to your website or e-shop</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">and much more!&nbsp;</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Highlights:</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">* 100% Genuine and Manual work.</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">* 100% Legal work.</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">* 100% Satisfaction Guarantee</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Platforms:</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">* Facebook Business Page/ Profile</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">* Twitter</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">* Linkedin</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">* Instagram</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">* Pinterest</span></b><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">There will always be a great&nbsp;</span><b style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">BONUS</span></b><span style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">&nbsp;for you!</span><br style=\"color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"></p>', 'a:4:{i:0;s:49:\"What’s included in your social content posting?\";i:1;s:41:\"Is your service suitable for my business?\";i:2;s:54:\"What if I have not build my Social media presence yet?\";i:3;s:36:\"Can you provide additional audience?\";}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"49\";i:1;s:2:\"99\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:96:\"Manage of ONE Social Media for one month with one post/day (Facebook/Twitter/LinkedIn,Pin,Insta)\";i:1;s:89:\"Manage TWO Social Media for 30 days with 1 post/day (Facebook/Twitter/LinkedIn,Pin,Insta)\";i:2;s:100:\"Manage THREE Social Media Accounts for 1 Month with 1 post/day (Facebook/Twitter/LinkedIn,Pin,Insta)\";}', 'meta tags', 'meta description', 2, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:61:\"Page/Channel Evaluation\r\n30 Days\r\nSchedule Posts\r\nAction Plan\";i:1;s:61:\"Page/Channel Evaluation\r\n30 Days\r\nSchedule Posts\r\nAction Plan\";i:2;s:61:\"Page/Channel Evaluation\r\n30 Days\r\nSchedule Posts\r\nAction Plan\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"5\";i:2;s:2:\"10\";}', 'a:4:{i:0;s:271:\"Content crafted for your business by a content specialist - Engaging content including graphics, curated links, videos, GIFs - Daily content sharing - Promoting your products and services - Share posts on many facebook groups or personal Profiles - Grow your audience etc\";i:1;s:274:\"No matter what your business provides, a strong social media presence builds brand loyalty. We will do our best to Increase your brand awareness and help you grow quickly your business online! You will get personalized content and post types suitable to your business niche!\";i:2;s:171:\"It is not a problem. I will be glad to create, optimize and manage your Social media pages! You just have to contact me before if their creation is not included in my gig!\";i:3;s:208:\"I can provide you additional audience according to the social media accounts you will need it! Please contact me in advance to discuss about this topic if interested as this service is not included on my gig.\";}', '2020-09-15 12:15:00', '2020-10-14 12:55:39');
INSERT INTO `gigs` VALUES (2, 'I will fix wordpress issues, wordpress errors or wordpress problem', 'i-will-fix-wordpress-issues-wordpress-errors-or-wordpress-problem', 'en', 'publish', '159', '158|157|156|155', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Looking for WordPress&nbsp;Problem Fixing Expert? WooHoo!! You are on 100% Right GIG.<br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">6 Years* of&nbsp;working&nbsp;experience with WordPress Development &amp; WordPress Problem Fixing</span></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">I am proficient in fixing any type of word press issues, problem, and bugs. I also clean dirty codes and make them SEO optimized.</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"background: rgb(255, 236, 209);\">I work closely with the buyer to make sure he didn’t face any issue with their website ;-)</span></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Why Hire Me?</b></p><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Have done more than 1000 projects on Fiverr</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">6 Year Professional Development Experience</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Professional Services at Economical Cost</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">24/7 Support and Consultancy</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">100% money-back guarantee</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">100% Satisfactory services with 100% Refund</li></ul><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Services include fixing:</b></span></p><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Fix your WordPress errors<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Fix WordPress<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Fix your WordPress problems quickly<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Configuration of theme or plugins</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">CSS and responsive design issues</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Database issues</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Theme customization</li></ul><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">There is absolutely nothing that we can\'t fix it in WordPress.</b></p></div>', 'a:1:{i:0;N;}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"39\";i:1;s:2:\"99\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:34:\"i will find out your WordPress bug\";i:1;s:34:\"i will find out your WordPress bug\";i:2;s:34:\"i will find out your WordPress bug\";}', 'meta tags', 'meta description', 3, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:9:\"1 bug fix\";i:1;s:9:\"3 gub fix\";i:2;s:9:\"5 bug fix\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"5\";i:2;s:2:\"10\";}', 'a:1:{i:0;N;}', '2020-09-15 14:42:38', '2020-10-14 13:01:22');
INSERT INTO `gigs` VALUES (3, 'I will design wordpress website or landing page using elementor pro', 'i-will-design-wordpress-website-or-landing-page-using-elementor-pro', 'en', 'publish', '156', '158|157|156|155', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">I will design a WordPress website or landing page using elementor pro.<br><br></b>Are You Looking for a WordPress elementor expert? Then You are in Right Place. I have developed more than<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;200+ WordPress websites</b>&nbsp;for my local clients. I can design&nbsp;<span style=\"background: rgb(255, 236, 209);\">Modern beautiful Responsive WordPress</span>&nbsp;website or landing page using&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">elemetor &amp; elementor pro.<br><br></b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">What You Will Get&nbsp;</b>⧪<br><br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">✶ Premium theme&nbsp;<span style=\"background: rgb(255, 236, 209);\">&amp; premium Plugins</span><br>✶&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Responsive</b>&nbsp;Design<br>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Super-Fast Website<br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Pop Up Form<br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Elementor Multi-Step Form</span><br></span>✶ M<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">ultilingual</b>&nbsp;support&nbsp;<br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Custom Post Types Creation</span><br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Advanced Custom Field Creation<br></span>✶<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">&nbsp;<span style=\"background: rgb(255, 236, 209);\">Autoresponder</span>&nbsp;integration</span><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><br></span>✶<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">&nbsp;Mailchimp Automation<br></span>✶<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">E-commerce Integration</span></b><br></span>✶<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">&nbsp;<span style=\"background: rgb(255, 236, 209);\">Payment gateway Setup</span><br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Website Security<br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Cross-Browser Compatibility<br></span>✶&nbsp;<span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Facebook Pixel / Google Analytics Setup<br></span>✶ Elementor&nbsp;<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Single Product Page Design</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><br><b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><u style=\"background: rgb(255, 236, 209); text-decoration: none;\">Why Me?<br><br></u></b><br>✔&nbsp;<b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">100% satisfaction guaranteed</b><br>✔&nbsp;100%<span>&nbsp;</span><u style=\"background: rgb(255, 236, 209); text-decoration: none;\">refund guaranteed</u><br>✔&nbsp;Best<span>&nbsp;</span><u style=\"background: rgb(255, 236, 209); text-decoration: none;\">communication</u><span>&nbsp;</span>skills<br>✔&nbsp;100% On Time Delivery<br>✔&nbsp;<span>&nbsp;</span><b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">24/7 Support</b><br><b style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><u style=\"background: rgb(255, 236, 209); text-decoration: none;\"><br></u></b><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\"><p style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px;\">If you are confused and don\'t know what to do, just knock me and sit comfortably. I Will do the rest of the work and give you a<span>&nbsp;</span><u style=\"background: rgb(255, 236, 209); text-decoration: none;\">perfect solution.</u><br></p></span></div></div>', 'a:3:{i:0;s:46:\"Why do I need to be contacted before ordering?\";i:1;s:43:\"Do You Have Elementor pro or Premium theme?\";i:2;s:32:\"Do You Provide Domain + hosting?\";}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"49\";i:1;s:2:\"99\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:50:\"Install Wp & Elementor ➨ 1 Page ➨ 1-4 sections\";i:1;s:64:\"Basic ➨ 4 Pages ➨ Custom Header & Footer ➨ upto 6 sections\";i:2;s:84:\"Standard ➨ 10 pages ➨ Ecommerce integration ➨ opt in form ➨ upto 10 sections\";}', 'meta tags', 'meta description', 3, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:124:\"1 Page\r\nDesign Customization\r\nContent Upload\r\nResponsive Design\r\n3 Plugins/Extensions\r\nE-Commerce Functionality\r\n15 Products\";i:1;s:125:\"4 Pages\r\nDesign Customization\r\nContent Upload\r\nResponsive Design\r\n6 Plugins/Extensions\r\nE-Commerce Functionality\r\n15 Products\";i:2;s:127:\"10 Pages\r\nDesign Customization\r\nContent Upload\r\nResponsive Design\r\n10 Plugins/Extensions\r\nE-Commerce Functionality\r\n15 Products\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:235:\"It\'s essential to contact me before ordering because there is much information needed to make a website, and the most important thing to go through is whether I can do the job correctly or whether you are interested in working with me.\";i:1;s:79:\"Yes, I can provide You Elementor Pro (license) and a variety of premium themes.\";i:2;s:56:\"Yes, I can provide World class Domain & Hosting Service.\";}', '2020-09-15 15:42:05', '2020-10-14 13:01:50');
INSERT INTO `gigs` VALUES (4, 'I will create and setup your new youtube channel', 'i-will-create-and-setup-your-new-youtube-channel', 'en', 'publish', '158', '157|155|153|152|151', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Please contact me before ordering</span></b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Who am I?</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Hi, I\'m Sari and&nbsp;<span style=\"background: rgb(255, 236, 209);\">I manage YouTube channels</span>. I have opened and operated some of the largest channels in Israel and I am here to help you with everything related to managing a successful channel!</p><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Who is this gig perfect for?</b><br><br><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Small/mid-sized&nbsp;<span style=\"background: rgb(255, 236, 209);\">businesses owners</span></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><span style=\"background: rgb(255, 236, 209);\">Entrepreneurs&nbsp;</span>looking to expand brand awareness</span><br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\"><span style=\"background: rgb(255, 236, 209);\">Influencers&nbsp;</span>who are looking to start out on YouTube</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Future influencers ;)</li></ul><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Silver Pack includes:</b><br><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creation and setup of channel</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">writing a channel description<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Adding channel tags</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Adding an existing profile picture/logo</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Adding an existing cover art<br></li></ul><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Gold Pack&nbsp;</b></span><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">includes</b><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">:</b><br></span><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creation and setup of channel</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">writing a channel description<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Adding channel tags<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creating a professional&nbsp;profile picture/logo</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creating a professional&nbsp;cover art</li></ul><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Diamond Pack&nbsp;</b></span><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">includes</b><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">:</b><br></span><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creation and setup of channel</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">writing a channel description<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Adding channel tags<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creating a professional&nbsp;profile picture/logo</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Creating a professional&nbsp;cover art</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Eye-catchy thumbnail templates<br></li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Tips &amp; Resources<br></li></ul><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"></b></span><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Why me?<br></b><br><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">9 years experience on the field</li></ul><ul style=\"margin-right: 5px; margin-left: 5px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; list-style-position: initial; list-style-image: none;\"><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">100% organic based work</li><li style=\"margin-left: 24px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; list-style: outside none disc;\">Unique channel branding</li></ul><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></b>Feel free to contact me if you have any question!<br></div></div>', 'a:3:{i:0;s:27:\"What is the cover art size?\";i:1;s:38:\"What is the profile picture/logo size?\";i:2;s:28:\"What makes you a Pro seller?\";}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"10\";i:1;s:2:\"20\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:99:\"YouTube channel setup including enabling features, Tags, and adding sent profile picture and cover.\";i:1;s:100:\"YouTube channel setup including enabling features, Tags, and creating a profile picture and a cover.\";i:2;s:93:\"YouTube channel setup including all the gold package and creating a grid for your thumbnails.\";}', 'meta tags', 'meta description', 6, 'a:3:{i:0;s:1:\"5\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:23:\"Page Setup\r\nAction Plan\";i:1;s:23:\"Page Setup\r\nAction Plan\";i:2;s:23:\"Page Setup\r\nAction Plan\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:2:\"12\";}', 'a:3:{i:0;s:125:\"Ideal Dimensions: 2560 x 1440 pixels Minumum: 2048 x 1152 pixels Safe Zone: 1540 x 427 pixels, centered Maximum: 6MB filesize\";i:1;s:16:\"800 x 800 pixels\";i:2;s:168:\"I have been managing YouTube channels and opened and operated at least 30 different channels throughout my career - some of them are largest YouTube channels in Israel!\";}', '2020-09-15 15:52:53', '2020-10-14 13:11:30');
INSERT INTO `gigs` VALUES (5, 'I will design an outstanding logo for you', 'i-will-design-an-outstanding-logo-for-you2', 'en', 'publish', '155', '156|155|153|152', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">I have followed up graphic design with business strategies and 8+ years of experience creating brand identities for small to large scale businesses. I specialize in brand building.</div><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></div><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">WORKFLOW</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Discovery</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">This will make identifying the goals, challenges, brand attributes and decide the direction to follow.</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\"><br></b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Research</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Research about your target market, business, industry and competition.</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Sketching</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Sketches-up a bunch of concepts, pick out a perfect concept(s) and design the initial logotype.</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Review</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">Present you the designed logo concept(s) and get feedback to refine or finalize the design.&nbsp;</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">Finalize</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">After refining the logo design, deliver the finalized, Appropriate, Memorable and Simple logo concept(s).</p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><br></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px;\">YOU\'LL GET</b></p><p style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><span style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"></span></p><ul style=\"margin: 0px 5px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style: none none; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">Web and print versions of the logo</li><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">Black and white versions of the logo</li><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">High-resolution JPG and PNG</li><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">Vector and source files (in The Best Package and The Ultimate&nbsp; Package)</li><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">Stationery and Social Media Kit (in The Ultimate&nbsp; Package)<br></li><li style=\"margin: 0px 0px 0px 24px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px; display: list-item; list-style: outside none disc;\">Color palette and Fonts info.</li></ul></div>', 'a:3:{i:0;s:46:\"Why do I need to be contacted before ordering?\";i:1;s:43:\"Do You Have Elementor pro or Premium theme?\";i:2;s:32:\"Do You Provide Domain + hosting?\";}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"20\";i:1;s:2:\"40\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:14:\"1 Logo Concept\";i:1;s:64:\"Basic ➨ 4 Pages ➨ Custom Header & Footer ➨ upto 6 sections\";i:2;s:84:\"Standard ➨ 10 pages ➨ Ecommerce integration ➨ opt in form ➨ upto 10 sections\";}', 'meta tags', 'meta description', 5, 'a:3:{i:0;s:1:\"7\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:126:\"1 Initial Concept Included\r\nSource File\r\nLogo Transparency\r\nHigh Resolution\r\nStationery Designs\r\nSocial Media Kit\r\nVector File\";i:1;s:125:\"4 Pages\r\nDesign Customization\r\nContent Upload\r\nResponsive Design\r\n6 Plugins/Extensions\r\nE-Commerce Functionality\r\n15 Products\";i:2;s:127:\"10 Pages\r\nDesign Customization\r\nContent Upload\r\nResponsive Design\r\n10 Plugins/Extensions\r\nE-Commerce Functionality\r\n15 Products\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:235:\"It\'s essential to contact me before ordering because there is much information needed to make a website, and the most important thing to go through is whether I can do the job correctly or whether you are interested in working with me.\";i:1;s:79:\"Yes, I can provide You Elementor Pro (license) and a variety of premium themes.\";i:2;s:56:\"Yes, I can provide World class Domain & Hosting Service.\";}', '2020-09-15 16:51:39', '2020-10-14 13:12:20');
INSERT INTO `gigs` VALUES (6, 'I will design an elegant wedding invitation', 'i-will-design-an-elegant-wedding-invitation', 'en', 'publish', '157', '156|155|153|152', '<div style=\"border: 0px; outline: 0px; font-size: 16px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(98, 100, 106); font-family: Macan, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><div style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">I will create beautiful, elegant cards for your special day. You can expect a professional design and satisfying results, I pay close attention to details.<br><br>For the basic and standard packages, you can choose from five unique double-sided layouts which I will tailor to suit your needs. You can choose different sides from different layouts, I can also suggest different floral options to use. The standard package also has save the date cards, menu and RSVP cards that you can choose from.&nbsp;<br><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">If you wish to make a custom invitation:<br><br></b>If you want a thematic design made just for you, you can choose the premium package and I will make a new design along with save the date cards, menu and RSVP cards according to your vision. I can also make a custom line drawing like the ones on the layouts.<b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br><br></b>You can send me your inspirations for your wedding, the style you want, certain elements you want to include on the invitation and other details. Then we can discuss the design and make as many revisions as you need.&nbsp;<br><br><b style=\"border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Feel free to contact me with any questions and requests!&nbsp;</b><br></div></div>', 'a:1:{i:0;N;}', 'a:3:{i:0;s:5:\"BASIC\";i:1;s:8:\"STANDARD\";i:2;s:7:\"PREMIUM\";}', 'a:3:{i:0;s:2:\"49\";i:1;s:2:\"69\";i:2;s:3:\"199\";}', 'a:3:{i:0;s:51:\"An elegant double-sided invitation of your choosing\";i:1;s:88:\"An elegant double-sided invitation of your choosing + save the date, menu and RSVP cards\";i:2;s:83:\"A custom double-sided invitation + save the date, menu and RSVP cards + source file\";}', 'meta tags', 'meta description', 1, 'a:3:{i:0;s:1:\"2\";i:1;s:2:\"10\";i:2;s:2:\"15\";}', 'a:3:{i:0;s:42:\"Double-Sided\r\nHigh Resolution\r\nSource File\";i:1;s:42:\"Double-Sided\r\nHigh Resolution\r\nSource File\";i:2;s:42:\"Double-Sided\r\nHigh Resolution\r\nSource File\";}', 'a:3:{i:0;s:1:\"3\";i:1;s:1:\"6\";i:2;s:2:\"15\";}', 'a:1:{i:0;N;}', '2020-09-15 17:01:18', '2020-10-14 13:12:41');

-- ----------------------------
-- Table structure for gigs_categories
-- ----------------------------
DROP TABLE IF EXISTS `gigs_categories`;
CREATE TABLE `gigs_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gigs_categories
-- ----------------------------
INSERT INTO `gigs_categories` VALUES (1, 'App Design & Develop', 'en', 'publish', 'icon', 'xg-flaticon-app-development', NULL, '2020-09-14 08:00:33', '2020-09-14 08:52:40');
INSERT INTO `gigs_categories` VALUES (2, 'Web UI Design & Develop', 'en', 'publish', 'icon', 'xg-flaticon-app', NULL, '2020-09-14 08:00:58', '2020-09-14 08:52:05');
INSERT INTO `gigs_categories` VALUES (3, 'WordPress Website Design', 'en', 'publish', 'icon', 'xg-flaticon-coding-2', NULL, '2020-09-14 08:02:00', '2020-09-14 08:15:00');
INSERT INTO `gigs_categories` VALUES (4, 'Website Development', 'en', 'publish', 'icon', 'xg-flaticon-tools', NULL, '2020-09-14 08:02:17', '2020-09-14 08:53:57');
INSERT INTO `gigs_categories` VALUES (5, 'Social Media Marketing', 'en', 'publish', 'icon', 'xg-flaticon-social-media', NULL, '2020-09-14 08:02:40', '2020-09-14 08:15:00');
INSERT INTO `gigs_categories` VALUES (6, 'Search Engine Optimization', 'en', 'publish', 'icon', 'xg-flaticon-search-engine', NULL, '2020-09-14 08:03:49', '2020-09-14 08:15:00');
INSERT INTO `gigs_categories` VALUES (7, 'Ecommerce Website', 'en', 'publish', 'icon', 'xg-flaticon-browser-2', NULL, '2020-09-14 08:04:15', '2020-09-14 08:55:28');

-- ----------------------------
-- Table structure for header_sliders
-- ----------------------------
DROP TABLE IF EXISTS `header_sliders`;
CREATE TABLE `header_sliders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `btn_01_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `btn_01_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `btn_01_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'en',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of header_sliders
-- ----------------------------
INSERT INTO `header_sliders` VALUES (1, NULL, NULL, NULL, 'Know More', '#', 'en', '127', '2020-01-21 21:23:14', '2025-02-19 10:23:22');
INSERT INTO `header_sliders` VALUES (2, NULL, NULL, NULL, 'Know More', '#', 'en', '126', '2020-01-22 00:20:57', '2025-02-19 10:23:07');

-- ----------------------------
-- Table structure for image_galleries
-- ----------------------------
DROP TABLE IF EXISTS `image_galleries`;
CREATE TABLE `image_galleries`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of image_galleries
-- ----------------------------

-- ----------------------------
-- Table structure for image_gallery_categories
-- ----------------------------
DROP TABLE IF EXISTS `image_gallery_categories`;
CREATE TABLE `image_gallery_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of image_gallery_categories
-- ----------------------------
INSERT INTO `image_gallery_categories` VALUES (1, 'Karate', 'en', 'publish', '2020-09-05 05:44:53', '2025-01-21 07:23:51');
INSERT INTO `image_gallery_categories` VALUES (2, 'Boxing', 'en', 'publish', '2020-09-05 05:48:53', '2025-01-21 07:24:01');
INSERT INTO `image_gallery_categories` VALUES (3, 'Jiu Jitsu', 'en', 'publish', '2020-09-05 05:48:58', '2025-01-21 07:24:11');
INSERT INTO `image_gallery_categories` VALUES (4, 'Muay Thai', 'en', 'publish', '2020-09-05 05:49:04', '2025-01-21 07:24:22');

-- ----------------------------
-- Table structure for job_applicants
-- ----------------------------
DROP TABLE IF EXISTS `job_applicants`;
CREATE TABLE `job_applicants`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `jobs_id` int UNSIGNED NOT NULL,
  `form_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_applicants
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vacancy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `job_responsibility` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `employment_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `education_requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `experience_requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `additional_requirement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `job_location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `salary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `job_context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `other_benefits` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deadline` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jobs_categories
-- ----------------------------
DROP TABLE IF EXISTS `jobs_categories`;
CREATE TABLE `jobs_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jobs_categories
-- ----------------------------

-- ----------------------------
-- Table structure for key_features
-- ----------------------------
DROP TABLE IF EXISTS `key_features`;
CREATE TABLE `key_features`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of key_features
-- ----------------------------
INSERT INTO `key_features` VALUES (1, 'Financial Analaysis', 'flaticon-analytics', 'en', '31', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 18:25:39', '2020-04-15 22:46:32');
INSERT INTO `key_features` VALUES (2, 'Global Partnership', 'flaticon-internet', 'en', '30', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 18:26:03', '2020-04-15 22:46:44');
INSERT INTO `key_features` VALUES (3, 'Trusted Partnership', 'flaticon-handshake', 'en', '29', 'Blessing welcomed ladyship she met humoured sir breeding her. Six curiosity day assurance .', '2020-01-22 18:26:27', '2020-04-15 22:48:21');

-- ----------------------------
-- Table structure for know_abouts
-- ----------------------------
DROP TABLE IF EXISTS `know_abouts`;
CREATE TABLE `know_abouts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of know_abouts
-- ----------------------------
INSERT INTO `know_abouts` VALUES (1, 'Akira', '152', '#', 'en', 'Akira memulai Jiu-jitsu sejak 7 tahun lalu dan mendalaminya di Singapura. \r\nRasa ingin tahunya yang tinggi membuat ia terus belajar untuk menyelesaikan sesuatu yang sedikit lebih besar dan besar dalam Jiu-jitsu setiap harinya.\r\nAkira  saat mengajar memberikan struktur dan tujuan yang jelas pada setiap teknik atau gerakan yang ia ajarkan. \r\nSehingga, murid dapat mengembangkan skill-nya dalam waktu singkat. Ia berharap murid dapat berprestasi dan meraskan efek positif yang sama dengan yang Akira rasakan  dari Jiu-jitsu.', '2020-03-09 20:53:28', '2025-02-19 07:27:19');
INSERT INTO `know_abouts` VALUES (2, 'Nyo', '153', '#', 'en', 'Dalam mengajar, Budi atau yang akrab disapa Nyo memiliki prinsip mengajar karate dimulai dari seribu hari dan dikuasai 10.000 hari. Prinsip tersebut dapat diibaratkan dengan air dalam teko yang dipanasi , ketika api dimatikan jelas akan kembali mengulang dari awal. Jadi, air harus selalu dipanasi dan ditambah agar tetap menjadi air panas. Karate adalah perjalanan seumur hidup.\r\nPengalamannya dalam mengajar menemui berbagai macam murid. Terdapat murid yang cepat menerima dan sebaliknya. Nyo beranggapan bahwa tidak ada murid yang tidak memiliki bakat. Semua bisa jika berlatih dan belajar dengan tekun', '2020-03-09 21:54:12', '2025-02-19 07:23:50');
INSERT INTO `know_abouts` VALUES (3, 'Satria', '154', '#', 'en', 'Memulai karirnya di muaythai pada 2010. Menjuarai kejuaraan tingkat nasional sejak 2013 dan berlatih di pelatnas. Kini menjadi trainer muaythai dengan motivasi menyalurkan dan mengembangkan bakatnya.', '2020-03-09 21:54:34', '2025-02-19 07:55:11');

-- ----------------------------
-- Table structure for knowledgebase_topics
-- ----------------------------
DROP TABLE IF EXISTS `knowledgebase_topics`;
CREATE TABLE `knowledgebase_topics`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of knowledgebase_topics
-- ----------------------------
INSERT INTO `knowledgebase_topics` VALUES (1, 'Jiu Jitsu', 'publish', 'en', '2020-04-25 00:10:42', '2025-02-04 07:31:26');
INSERT INTO `knowledgebase_topics` VALUES (2, 'Karate', 'publish', 'en', '2020-04-25 00:10:49', '2025-02-04 07:31:36');
INSERT INTO `knowledgebase_topics` VALUES (3, 'Boxing', 'publish', 'en', '2020-04-25 00:10:54', '2025-02-04 07:31:52');
INSERT INTO `knowledgebase_topics` VALUES (4, 'Muay Thai', 'publish', 'en', '2020-04-25 00:11:21', '2025-02-04 07:32:06');

-- ----------------------------
-- Table structure for knowledgebases
-- ----------------------------
DROP TABLE IF EXISTS `knowledgebases`;
CREATE TABLE `knowledgebases`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `topic_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `views` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of knowledgebases
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `default` int UNSIGNED NULL DEFAULT NULL,
  `direction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES (1, 'English', 'en', 'publish', 1, 'ltr', '2020-01-19 23:36:37', '2020-11-10 09:52:42');

-- ----------------------------
-- Table structure for media_uploads
-- ----------------------------
DROP TABLE IF EXISTS `media_uploads`;
CREATE TABLE `media_uploads`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `size` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `dimensions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of media_uploads
-- ----------------------------
INSERT INTO `media_uploads` VALUES (1, 'gdpr.png', NULL, '3.55 KB', 'gdpr1586868109.png', '64 x 64 pixels', '2020-04-14 19:41:49', '2020-04-14 19:41:49');
INSERT INTO `media_uploads` VALUES (2, 'avatars-000360792155-h2gzei-t500x500.jpg', NULL, '37 KB', 'avatars-000360792155-h2gzei-t500x5001586868114.jpg', '500 x 500 pixels', '2020-04-14 19:41:54', '2020-04-14 19:41:54');
INSERT INTO `media_uploads` VALUES (3, 'icon-256x256.png', NULL, '15.08 KB', 'icon-256x2561586872617.png', '512 x 512 pixels', '2020-04-14 20:56:57', '2020-04-14 20:56:57');
INSERT INTO `media_uploads` VALUES (4, 'image.png', NULL, '1.33 KB', 'image1586872617.png', '32 x 32 pixels', '2020-04-14 20:56:57', '2020-04-14 20:56:57');
INSERT INTO `media_uploads` VALUES (5, 'images.png', NULL, '4.88 KB', 'images1586872617.png', '225 x 225 pixels', '2020-04-14 20:56:57', '2020-04-14 20:56:57');
INSERT INTO `media_uploads` VALUES (6, 'IMG_8338.jpg', NULL, '2.2 MB', 'img-83381586872618.jpg', '2250 x 2850 pixels', '2020-04-14 20:56:59', '2020-04-14 20:56:59');
INSERT INTO `media_uploads` VALUES (7, 'freemialchimp-wordpress-plugins.png', NULL, '20.25 KB', 'freemialchimp-wordpress-plugins1586873078.png', '1300 x 800 pixels', '2020-04-14 21:04:38', '2020-04-14 21:04:38');
INSERT INTO `media_uploads` VALUES (8, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586875076.png', '1024 x 860 pixels', '2020-04-14 21:37:56', '2020-04-14 21:37:56');
INSERT INTO `media_uploads` VALUES (9, 'php-00441489844a0103eae71ba2fe15244c.png', NULL, '35.25 KB', 'php-00441489844a0103eae71ba2fe15244c1586875209.png', '2048 x 1024 pixels', '2020-04-14 21:40:09', '2020-04-14 21:40:09');
INSERT INTO `media_uploads` VALUES (10, 'price-tag.png', NULL, '2.35 KB', 'price-tag1586875347.png', '64 x 64 pixels', '2020-04-14 21:42:27', '2020-04-14 21:42:27');
INSERT INTO `media_uploads` VALUES (11, 'logo-elementor.png', NULL, '27.42 KB', 'logo-elementor1586875389.png', '180 x 180 pixels', '2020-04-14 21:43:09', '2020-04-14 21:43:09');
INSERT INTO `media_uploads` VALUES (12, 'slick.gif', NULL, '13.17 KB', 'slick1586875693.gif', '300 x 300 pixels', '2020-04-14 21:48:13', '2020-04-14 21:48:13');
INSERT INTO `media_uploads` VALUES (13, 'WordPress_blue_logo.svg.png', NULL, '107.12 KB', 'wordpress-blue-logosvg1586876032.png', '1200 x 1200 pixels', '2020-04-14 21:53:53', '2020-04-14 21:53:53');
INSERT INTO `media_uploads` VALUES (14, 'bootstrap image.png', NULL, '148.53 KB', 'bootstrap-image1586876156.png', '1024 x 860 pixels', '2020-04-14 21:55:57', '2020-04-14 21:55:57');
INSERT INTO `media_uploads` VALUES (15, 'header-slider-image-1.jpg', NULL, '188.31 KB', 'header-slider-image-11586955184.jpg', '1799 x 822 pixels', '2020-04-15 19:53:04', '2020-04-15 19:53:04');
INSERT INTO `media_uploads` VALUES (16, 'header-slider-image-2.jpg', NULL, '251.13 KB', 'header-slider-image-21586955189.jpg', '1800 x 878 pixels', '2020-04-15 19:53:09', '2020-04-15 19:53:09');
INSERT INTO `media_uploads` VALUES (17, 'key-feature-pic-3.jpg', NULL, '27.11 KB', 'key-feature-pic-31586965574.jpg', '370 x 251 pixels', '2020-04-15 22:46:14', '2020-04-15 22:46:14');
INSERT INTO `media_uploads` VALUES (18, 'key-feature-pic-2.jpg', NULL, '19.96 KB', 'key-feature-pic-21586965576.jpg', '370 x 251 pixels', '2020-04-15 22:46:16', '2020-04-15 22:46:16');
INSERT INTO `media_uploads` VALUES (19, 'key-feature-pic-1.jpg', NULL, '28.34 KB', 'key-feature-pic-11586965578.jpg', '370 x 251 pixels', '2020-04-15 22:46:18', '2020-04-15 22:46:18');
INSERT INTO `media_uploads` VALUES (20, 'home-page-01-en-about-us-background-image-5644582.jpg', NULL, '74.19 KB', 'home-page-01-en-about-us-background-image-56445821586970704.jpg', '572 x 471 pixels', '2020-04-16 00:11:44', '2020-04-16 00:11:44');
INSERT INTO `media_uploads` VALUES (21, 'home-page-02-en-about-us-background-image-9436361.jpg', NULL, '182.65 KB', 'home-page-02-en-about-us-background-image-94363611586971461.jpg', '1800 x 696 pixels', '2020-04-16 00:24:22', '2020-04-16 00:24:22');
INSERT INTO `media_uploads` VALUES (22, 'home-page-01-service-background-image-8944459.jpg', NULL, '56.34 KB', 'home-page-01-service-background-image-89444591587036585.jpg', '1800 x 803 pixels', '2020-04-16 18:29:46', '2020-04-16 18:29:46');
INSERT INTO `media_uploads` VALUES (23, 'home-page-01-testimonial-background-image-6565544.jpg', NULL, '133.58 KB', 'home-page-01-testimonial-background-image-65655441587042298.jpg', '1800 x 600 pixels', '2020-04-16 20:04:58', '2020-04-16 20:04:58');
INSERT INTO `media_uploads` VALUES (24, 'testimonial-bg-3.jpg', NULL, '23.31 KB', 'testimonial-bg-31587043874.jpg', '1800 x 603 pixels', '2020-04-16 20:31:15', '2020-04-16 20:31:15');
INSERT INTO `media_uploads` VALUES (25, 'home-page-02-counterup-bg-image-2422193.jpg', NULL, '236.68 KB', 'home-page-02-counterup-bg-image-24221931587052821.jpg', '1920 x 332 pixels', '2020-04-16 23:00:21', '2020-04-16 23:00:21');
INSERT INTO `media_uploads` VALUES (26, 'home-page-01-counterup-bg-image-3321322.jpg', NULL, '72.04 KB', 'home-page-01-counterup-bg-image-33213221587053290.jpg', '1800 x 280 pixels', '2020-04-16 23:08:10', '2020-04-16 23:08:10');
INSERT INTO `media_uploads` VALUES (27, 'about-page-en-right-image-8935490.jpg', NULL, '157.19 KB', 'about-page-en-right-image-89354901587055563.jpg', '470 x 590 pixels', '2020-04-16 23:46:03', '2020-04-16 23:46:03');
INSERT INTO `media_uploads` VALUES (28, 'know-about-pic-2.jpg', NULL, '24.35 KB', 'know-about-pic-21587057199.jpg', '370 x 251 pixels', '2020-04-17 00:13:20', '2020-04-17 00:13:20');
INSERT INTO `media_uploads` VALUES (29, 'know-about-pic-1.jpg', NULL, '26.18 KB', 'know-about-pic-11587057200.jpg', '370 x 251 pixels', '2020-04-17 00:13:20', '2020-04-17 00:13:20');
INSERT INTO `media_uploads` VALUES (30, 'know-about-pic-3.jpg', NULL, '24.75 KB', 'know-about-pic-31587057200.jpg', '370 x 251 pixels', '2020-04-17 00:13:20', '2020-04-17 00:13:20');
INSERT INTO `media_uploads` VALUES (31, '02.jpg', NULL, '1.43 MB', '021587061186.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:48', '2020-04-17 01:19:48');
INSERT INTO `media_uploads` VALUES (32, '01.jpg', NULL, '1.36 MB', '011587061186.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:48', '2020-04-17 01:19:48');
INSERT INTO `media_uploads` VALUES (33, '04.jpg', NULL, '1.37 MB', '041587061189.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:50', '2020-04-17 01:19:50');
INSERT INTO `media_uploads` VALUES (34, '03.jpg', NULL, '1.57 MB', '031587061189.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:50', '2020-04-17 01:19:50');
INSERT INTO `media_uploads` VALUES (35, '05.jpg', NULL, '1.5 MB', '051587061190.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:51', '2020-04-17 01:19:51');
INSERT INTO `media_uploads` VALUES (36, '06.jpg', NULL, '1.52 MB', '061587061191.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:52', '2020-04-17 01:19:52');
INSERT INTO `media_uploads` VALUES (37, '07.jpg', NULL, '1.56 MB', '071587061192.jpg', '1920 x 1280 pixels', '2020-04-17 01:19:53', '2020-04-17 01:19:53');
INSERT INTO `media_uploads` VALUES (38, '414.jpg', NULL, '4.52 MB', '4141587100725.jpg', '4000 x 2250 pixels', '2020-04-17 12:18:50', '2020-04-17 12:18:50');
INSERT INTO `media_uploads` VALUES (39, '414.jpg', NULL, '4.52 MB', '4141587101341.jpg', '4000 x 2250 pixels', '2020-04-17 12:29:04', '2020-04-17 12:29:04');
INSERT INTO `media_uploads` VALUES (40, '414.jpg', NULL, '4.52 MB', '4141587101352.jpg', '4000 x 2250 pixels', '2020-04-17 12:29:16', '2020-04-17 12:29:16');
INSERT INTO `media_uploads` VALUES (41, '414.jpg', NULL, '4.52 MB', '4141587103824.jpg', '4000 x 2250 pixels', '2020-04-17 13:10:26', '2020-04-17 13:10:26');
INSERT INTO `media_uploads` VALUES (42, '414.jpg', NULL, '4.52 MB', '4141587103930.jpg', '4000 x 2250 pixels', '2020-04-17 13:12:12', '2020-04-17 13:12:12');
INSERT INTO `media_uploads` VALUES (43, 'team-member-grid-1.jpg', NULL, '13.48 KB', 'team-member-grid-11587140885.jpg', '270 x 280 pixels', '2020-04-17 23:28:06', '2020-04-17 23:28:06');
INSERT INTO `media_uploads` VALUES (44, 'team-member-grid-2.jpg', NULL, '11.25 KB', 'team-member-grid-21587140886.jpg', '270 x 280 pixels', '2020-04-17 23:28:06', '2020-04-17 23:28:06');
INSERT INTO `media_uploads` VALUES (45, 'team-member-grid-3.jpg', NULL, '15.1 KB', 'team-member-grid-31587140886.jpg', '270 x 280 pixels', '2020-04-17 23:28:06', '2020-04-17 23:28:06');
INSERT INTO `media_uploads` VALUES (46, 'team-member-grid-4.jpg', NULL, '12.11 KB', 'team-member-grid-41587140886.jpg', '270 x 280 pixels', '2020-04-17 23:28:06', '2020-04-17 23:28:06');
INSERT INTO `media_uploads` VALUES (47, 'team-member-grid-5.jpg', NULL, '13.48 KB', 'team-member-grid-51587140887.jpg', '270 x 280 pixels', '2020-04-17 23:28:07', '2020-04-17 23:28:07');
INSERT INTO `media_uploads` VALUES (48, 'team-member-grid-14.jpg', NULL, '28.13 KB', 'team-member-grid-141587140953.jpg', '270 x 280 pixels', '2020-04-17 23:29:13', '2020-04-17 23:29:13');
INSERT INTO `media_uploads` VALUES (49, 'team-member-grid-15.jpg', NULL, '21.16 KB', 'team-member-grid-151587140954.jpg', '270 x 280 pixels', '2020-04-17 23:29:14', '2020-04-17 23:29:14');
INSERT INTO `media_uploads` VALUES (50, 'team-member-grid-16.jpg', NULL, '18.64 KB', 'team-member-grid-161587140956.jpg', '270 x 280 pixels', '2020-04-17 23:29:16', '2020-04-17 23:29:16');
INSERT INTO `media_uploads` VALUES (51, 'testimonial-grid-2.jpg', NULL, '3.16 KB', 'testimonial-grid-21587142710.jpg', '80 x 80 pixels', '2020-04-17 23:58:30', '2020-04-17 23:58:30');
INSERT INTO `media_uploads` VALUES (52, 'testimonial-grid-1.jpg', NULL, '3.21 KB', 'testimonial-grid-11587142710.jpg', '80 x 80 pixels', '2020-04-17 23:58:30', '2020-04-17 23:58:30');
INSERT INTO `media_uploads` VALUES (53, 'testimonial-grid-3.jpg', NULL, '4.4 KB', 'testimonial-grid-31587142710.jpg', '80 x 80 pixels', '2020-04-17 23:58:30', '2020-04-17 23:58:30');
INSERT INTO `media_uploads` VALUES (54, 'testimonial-grid-4.jpg', NULL, '3.67 KB', 'testimonial-grid-41587142710.jpg', '80 x 80 pixels', '2020-04-17 23:58:30', '2020-04-17 23:58:30');
INSERT INTO `media_uploads` VALUES (55, 'about-widget-logo-67511.png', NULL, '2.99 KB', 'about-widget-logo-675111587147441.png', '152 x 43 pixels', '2020-04-18 01:17:21', '2020-04-18 01:17:21');
INSERT INTO `media_uploads` VALUES (56, 'site-logo-198089.png', NULL, '2.91 KB', 'site-logo-1980891587151038.png', '152 x 44 pixels', '2020-04-18 02:17:18', '2020-04-18 02:17:18');
INSERT INTO `media_uploads` VALUES (57, 'site-favicon-446324.png', NULL, '1.4 KB', 'site-favicon-4463241587151052.png', '23 x 27 pixels', '2020-04-18 02:17:32', '2020-04-18 02:17:32');
INSERT INTO `media_uploads` VALUES (58, 'breadcrumb-bg-186690.jpg', NULL, '52.86 KB', 'breadcrumb-bg-1866901587151084.jpg', '1800 x 600 pixels', '2020-04-18 02:18:04', '2020-04-18 02:18:04');
INSERT INTO `media_uploads` VALUES (59, 'location-pin (1).png', NULL, '3.6 KB', 'location-pin-11587314985.png', '64 x 64 pixels', '2020-04-19 23:49:45', '2020-04-19 23:49:45');
INSERT INTO `media_uploads` VALUES (60, 'download.png', NULL, '5.28 KB', 'download1587438468.png', '336 x 150 pixels', '2020-04-21 10:07:48', '2020-04-21 10:07:48');
INSERT INTO `media_uploads` VALUES (61, 'Paytm_logo.png', NULL, '7.33 KB', 'paytm-logo1587438506.png', '675 x 225 pixels', '2020-04-21 10:08:26', '2020-04-21 10:08:26');
INSERT INTO `media_uploads` VALUES (62, 'live-music-2219036_1920.jpg', NULL, '235.19 KB', 'live-music-2219036-19201587668436.jpg', '1920 x 1280 pixels', '2020-04-24 02:00:37', '2020-04-24 02:00:37');
INSERT INTO `media_uploads` VALUES (63, 'fireworks-945386_1920.jpg', NULL, '935.77 KB', 'fireworks-945386-19201587668605.jpg', '1920 x 1280 pixels', '2020-04-24 02:03:25', '2020-04-24 02:03:25');
INSERT INTO `media_uploads` VALUES (64, 'admission-2974645_1920.jpg', NULL, '480.21 KB', 'admission-2974645-19201587668606.jpg', '1920 x 1280 pixels', '2020-04-24 02:03:27', '2020-04-24 02:03:27');
INSERT INTO `media_uploads` VALUES (65, 'concert-768722_1920.jpg', NULL, '328.56 KB', 'concert-768722-19201587668649.jpg', '1920 x 1280 pixels', '2020-04-24 02:04:09', '2020-04-24 02:04:09');
INSERT INTO `media_uploads` VALUES (66, '545341_16078241_2921031_97b572bd_image.png', NULL, '35.88 KB', '545341-16078241-2921031-97b572bd-image1587827777.png', '1200 x 1000 pixels', '2020-04-25 22:16:17', '2020-04-25 22:16:17');
INSERT INTO `media_uploads` VALUES (67, 'home-page-01-pr-faq-background-image-9934958.jpg', NULL, '42.47 KB', 'home-page-01-pr-faq-background-image-99349581588008399.jpg', '1800 x 872 pixels', '2020-04-28 00:26:39', '2020-04-28 00:26:39');
INSERT INTO `media_uploads` VALUES (68, 'header-right.png', NULL, '88.82 KB', 'header-right1598708889.png', '636 x 561 pixels', '2020-08-29 14:48:09', '2020-08-29 14:48:09');
INSERT INTO `media_uploads` VALUES (69, 'header-right.png', NULL, '88.82 KB', 'header-right1598708947.png', '636 x 561 pixels', '2020-08-29 14:49:07', '2020-08-29 14:49:07');
INSERT INTO `media_uploads` VALUES (70, 'bigstock-two-feet-of-a-dead-body-with-242186857-1551114022428.jpg', NULL, '67.59 KB', 'bigstock-two-feet-of-a-dead-body-with-242186857-15511140224281598708978.jpg', '1024 x 650 pixels', '2020-08-29 14:49:38', '2020-08-29 14:49:38');
INSERT INTO `media_uploads` VALUES (71, 'INTRO-SALE-1.png', NULL, '67.57 KB', 'intro-sale-11598709076.png', '615 x 615 pixels', '2020-08-29 14:51:16', '2020-08-29 14:51:16');
INSERT INTO `media_uploads` VALUES (72, 'graphic-designer.png', NULL, '4.89 KB', 'graphic-designer1598720352.png', '64 x 64 pixels', '2020-08-29 17:59:13', '2020-08-29 17:59:13');
INSERT INTO `media_uploads` VALUES (73, 'million-job-image.png', NULL, '131.1 KB', 'million-job-image1598776835.png', '827 x 542 pixels', '2020-08-30 09:40:37', '2020-08-30 09:40:37');
INSERT INTO `media_uploads` VALUES (74, 'header-bg-shape.png', NULL, '18.49 KB', 'header-bg-shape1598890740.png', '1920 x 962 pixels', '2020-08-31 17:19:01', '2020-08-31 17:19:01');
INSERT INTO `media_uploads` VALUES (75, 'header-bottom-image.png', NULL, '203.29 KB', 'header-bottom-image1598890767.png', '1417 x 500 pixels', '2020-08-31 17:19:27', '2020-08-31 17:19:27');
INSERT INTO `media_uploads` VALUES (76, 'call-to-action-bg.jpg', NULL, '15.31 KB', 'call-to-action-bg1599037224.jpg', '1170 x 316 pixels', '2020-09-02 10:00:24', '2020-09-02 10:00:24');
INSERT INTO `media_uploads` VALUES (77, 'about-left-image.png', NULL, '397.8 KB', 'about-left-image1599129589.png', '522 x 500 pixels', '2020-09-03 11:39:49', '2020-09-03 11:39:49');
INSERT INTO `media_uploads` VALUES (78, 'poor-1775239_1920.jpg', NULL, '295.18 KB', 'poor-1775239-19201599222819.jpg', '1920 x 1280 pixels', '2020-09-04 13:33:40', '2020-09-04 13:33:40');
INSERT INTO `media_uploads` VALUES (79, 'monks-1822569_1920.jpg', NULL, '295.61 KB', 'monks-1822569-19201599232726.jpg', '1920 x 1314 pixels', '2020-09-04 16:18:47', '2020-09-04 16:18:47');
INSERT INTO `media_uploads` VALUES (80, 'help-1265227_1920.jpg', NULL, '691.14 KB', 'help-1265227-19201599232729.jpg', '1920 x 1279 pixels', '2020-09-04 16:18:50', '2020-09-04 16:18:50');
INSERT INTO `media_uploads` VALUES (81, 'ask-for-alms-1742502_1920.jpg', NULL, '826.74 KB', 'ask-for-alms-1742502-19201599232729.jpg', '1920 x 1280 pixels', '2020-09-04 16:18:50', '2020-09-04 16:18:50');
INSERT INTO `media_uploads` VALUES (82, 'people-850097_1920.jpg', NULL, '342.46 KB', 'people-850097-19201599232731.jpg', '1920 x 1440 pixels', '2020-09-04 16:18:52', '2020-09-04 16:18:52');
INSERT INTO `media_uploads` VALUES (83, 'beggar-1016678_1920.jpg', NULL, '694.02 KB', 'beggar-1016678-19201599234046.jpg', '1920 x 1280 pixels', '2020-09-04 16:40:48', '2020-09-04 16:40:48');
INSERT INTO `media_uploads` VALUES (84, '01-min.jpg', NULL, '201.4 KB', '01-min1599286982.jpg', '1280 x 1000 pixels', '2020-09-05 07:23:04', '2020-09-05 07:23:04');
INSERT INTO `media_uploads` VALUES (85, '02-min.jpg', NULL, '225.54 KB', '02-min1599290566.jpg', '1280 x 1000 pixels', '2020-09-05 08:22:47', '2020-09-05 08:22:47');
INSERT INTO `media_uploads` VALUES (86, '03-min.jpg', NULL, '71.78 KB', '03-min1599290604.jpg', '1280 x 1000 pixels', '2020-09-05 08:23:24', '2020-09-05 08:23:24');
INSERT INTO `media_uploads` VALUES (87, '04-min.jpg', NULL, '247.03 KB', '04-min1599290635.jpg', '1280 x 1000 pixels', '2020-09-05 08:23:56', '2020-09-05 08:23:56');
INSERT INTO `media_uploads` VALUES (88, '05-min.jpg', NULL, '131.12 KB', '05-min1599292601.jpg', '1280 x 1000 pixels', '2020-09-05 08:56:42', '2020-09-05 08:56:42');
INSERT INTO `media_uploads` VALUES (89, '06-min.jpg', NULL, '115.64 KB', '06-min1599292632.jpg', '1280 x 1000 pixels', '2020-09-05 08:57:13', '2020-09-05 08:57:13');
INSERT INTO `media_uploads` VALUES (90, '07-min.jpg', NULL, '154.74 KB', '07-min1599292654.jpg', '1280 x 1000 pixels', '2020-09-05 08:57:35', '2020-09-05 08:57:35');
INSERT INTO `media_uploads` VALUES (91, '08-min.jpg', NULL, '293.27 KB', '08-min1599292682.jpg', '1280 x 1000 pixels', '2020-09-05 08:58:02', '2020-09-05 08:58:02');
INSERT INTO `media_uploads` VALUES (92, 'counterup-bg.jpg', NULL, '610.73 KB', 'counterup-bg1599371098.jpg', '1920 x 450 pixels', '2020-09-06 06:44:58', '2020-09-06 06:44:58');
INSERT INTO `media_uploads` VALUES (93, 'counterup.jpg', NULL, '253.67 KB', 'counterup1599491850.jpg', '1920 x 500 pixels', '2020-09-07 16:17:30', '2020-09-07 16:17:30');
INSERT INTO `media_uploads` VALUES (94, 'header-slider-01.png', NULL, '463.82 KB', 'header-slider-011599573141.png', '902 x 573 pixels', '2020-09-08 14:52:22', '2020-09-08 14:52:22');
INSERT INTO `media_uploads` VALUES (95, 'header-slider-02.png', NULL, '3.9 MB', 'header-slider-021599574154.png', '3758 x 2387 pixels', '2020-09-08 15:09:20', '2020-09-08 15:09:20');
INSERT INTO `media_uploads` VALUES (96, 'header-slider-02.png', NULL, '402.68 KB', 'header-slider-021599578050.png', '902 x 573 pixels', '2020-09-08 16:14:10', '2020-09-08 16:14:10');
INSERT INTO `media_uploads` VALUES (97, 'decorate-area.png', NULL, '576.81 KB', 'decorate-area1599910772.png', '925 x 541 pixels', '2020-09-12 12:39:33', '2020-09-12 12:39:33');
INSERT INTO `media_uploads` VALUES (98, 'decorate-area.png', NULL, '566.21 KB', 'decorate-area1599926713.png', '844 x 541 pixels', '2020-09-12 17:05:14', '2020-09-12 17:05:14');
INSERT INTO `media_uploads` VALUES (99, 'header-right.png', NULL, '83.01 KB', 'header-right1600005280.png', '769 x 580 pixels', '2020-09-13 14:54:41', '2020-09-13 14:54:41');
INSERT INTO `media_uploads` VALUES (100, 'header-bg.jpg', NULL, '60.44 KB', 'header-bg1600005280.jpg', '1920 x 1120 pixels', '2020-09-13 14:54:42', '2020-09-13 14:54:42');
INSERT INTO `media_uploads` VALUES (101, 'video-area.jpg', NULL, '159.33 KB', 'video-area1600108689.jpg', '1070 x 560 pixels', '2020-09-14 19:38:09', '2020-09-14 19:38:09');
INSERT INTO `media_uploads` VALUES (102, '01.jpg', NULL, '176.59 KB', '011600163848.jpg', '1600 x 1000 pixels', '2020-09-15 10:57:29', '2020-09-15 10:57:29');
INSERT INTO `media_uploads` VALUES (103, '02.jpg', NULL, '180.79 KB', '021600163848.jpg', '1600 x 1000 pixels', '2020-09-15 10:57:29', '2020-09-15 10:57:29');
INSERT INTO `media_uploads` VALUES (104, '03.jpg', NULL, '231.57 KB', '031600163849.jpg', '1600 x 1000 pixels', '2020-09-15 10:57:30', '2020-09-15 10:57:30');
INSERT INTO `media_uploads` VALUES (105, '04.jpg', NULL, '420.63 KB', '041600163850.jpg', '1600 x 1000 pixels', '2020-09-15 10:57:31', '2020-09-15 10:57:31');
INSERT INTO `media_uploads` VALUES (106, '05.jpg', NULL, '255.81 KB', '051600180660.jpg', '1600 x 1000 pixels', '2020-09-15 15:37:41', '2020-09-15 15:37:41');
INSERT INTO `media_uploads` VALUES (107, '07.jpg', NULL, '181.02 KB', '071600180702.jpg', '1600 x 1000 pixels', '2020-09-15 15:38:23', '2020-09-15 15:38:23');
INSERT INTO `media_uploads` VALUES (108, '06.jpg', NULL, '245.12 KB', '061600180702.jpg', '1600 x 1000 pixels', '2020-09-15 15:38:23', '2020-09-15 15:38:23');
INSERT INTO `media_uploads` VALUES (109, '09.jpg', NULL, '184.38 KB', '091600180704.jpg', '1600 x 1000 pixels', '2020-09-15 15:38:24', '2020-09-15 15:38:24');
INSERT INTO `media_uploads` VALUES (110, '08.jpg', NULL, '305.62 KB', '081600180704.jpg', '1600 x 1000 pixels', '2020-09-15 15:38:24', '2020-09-15 15:38:24');
INSERT INTO `media_uploads` VALUES (111, 'counterup-bg.jpg', NULL, '53.46 KB', 'counterup-bg1600240743.jpg', '1920 x 450 pixels', '2020-09-16 08:19:03', '2020-09-16 08:19:03');
INSERT INTO `media_uploads` VALUES (112, 'news-bg-min.png', NULL, '235.41 KB', 'news-bg-min1600264586.png', '1920 x 1280 pixels', '2020-09-16 14:56:28', '2020-09-16 14:56:28');
INSERT INTO `media_uploads` VALUES (113, 'INTRO-SALE-1.png', NULL, '67.57 KB', 'intro-sale-11600671055.png', '615 x 615 pixels', '2020-09-21 07:50:55', '2020-09-21 07:50:55');
INSERT INTO `media_uploads` VALUES (114, 'Cash-on-Delivery-COD.jpg', NULL, '21.83 KB', 'cash-on-delivery-cod1601800870.jpg', '500 x 250 pixels', '2020-10-04 09:41:10', '2020-10-04 09:41:10');
INSERT INTO `media_uploads` VALUES (115, 'mollie-vector-logo.png', NULL, '4.19 KB', 'mollie-vector-logo1601811111.png', '900 x 500 pixels', '2020-10-04 12:31:52', '2020-10-04 12:31:52');
INSERT INTO `media_uploads` VALUES (116, '1-nhszihuonirsqtpgelkofg1592979849.jpeg', NULL, '28.98 KB', '1-nhszihuonirsqtpgelkofg15929798491601811158.jpeg', '1009 x 280 pixels', '2020-10-04 12:32:38', '2020-10-04 12:32:38');
INSERT INTO `media_uploads` VALUES (117, 'flutterwave-imtc1596482316.jpg', NULL, '40.27 KB', 'flutterwave-imtc15964823161601811174.jpg', '600 x 300 pixels', '2020-10-04 12:32:54', '2020-10-04 12:32:54');
INSERT INTO `media_uploads` VALUES (118, 'grid-social1592737458.png', NULL, '45.91 KB', 'grid-social15927374581601811189.png', '350 x 175 pixels', '2020-10-04 12:33:09', '2020-10-04 12:33:09');
INSERT INTO `media_uploads` VALUES (119, 'razorpay-the-new-epayment-that-will-break-everything-in-20191592737459.png', NULL, '10.06 KB', 'razorpay-the-new-epayment-that-will-break-everything-in-201915927374591601811680.png', '1000 x 600 pixels', '2020-10-04 12:41:20', '2020-10-04 12:41:20');
INSERT INTO `media_uploads` VALUES (120, 'authorizing.jpg', NULL, '98.63 KB', 'authorizing1602604043.jpg', '639 x 423 pixels', '2020-10-13 16:47:23', '2020-10-13 16:47:23');
INSERT INTO `media_uploads` VALUES (121, 'download.png', NULL, '1.1 KB', 'download1603882709.png', '310 x 163 pixels', '2020-10-28 11:58:29', '2020-10-28 11:58:29');
INSERT INTO `media_uploads` VALUES (122, 'dizcox-image-popup-min.jpg', NULL, '30.58 KB', 'dizcox-image-popup-min1603907675.jpg', '700 x 400 pixels', '2020-10-28 18:54:35', '2020-10-28 18:54:35');
INSERT INTO `media_uploads` VALUES (123, 'dizcox-popup-discount.png', NULL, '41.6 KB', 'dizcox-popup-discount1603907890.png', '666 x 574 pixels', '2020-10-28 18:58:10', '2020-10-28 18:58:10');
INSERT INTO `media_uploads` VALUES (124, 'logo1.png', NULL, '9.73 KB', 'logo11736938898.png', '166 x 53 pixels', '2025-01-15 11:01:38', '2025-01-15 11:01:38');
INSERT INTO `media_uploads` VALUES (125, 'logowhite.png', NULL, '19.22 KB', 'logowhite1736938926.png', '227 x 68 pixels', '2025-01-15 11:02:06', '2025-01-15 11:02:06');
INSERT INTO `media_uploads` VALUES (126, 'aseoooyy.png', NULL, '1.04 MB', 'aseoooyy1736938934.png', '1280 x 720 pixels', '2025-01-15 11:02:14', '2025-01-15 11:02:14');
INSERT INTO `media_uploads` VALUES (127, 'brazilian.jpg', NULL, '205.22 KB', 'brazilian1736938944.jpg', '1280 x 720 pixels', '2025-01-15 11:02:25', '2025-01-15 11:02:25');
INSERT INTO `media_uploads` VALUES (128, 'lgBoxing.png', NULL, '15.22 KB', 'lgboxing1737103060.png', '150 x 200 pixels', '2025-01-17 08:37:40', '2025-01-17 08:37:40');
INSERT INTO `media_uploads` VALUES (129, 'lgJiujitsu.png', NULL, '12.07 KB', 'lgjiujitsu1737103068.png', '150 x 200 pixels', '2025-01-17 08:37:48', '2025-01-17 08:37:48');
INSERT INTO `media_uploads` VALUES (130, 'lgMuaythai.png', NULL, '17.87 KB', 'lgmuaythai1737103068.png', '150 x 200 pixels', '2025-01-17 08:37:48', '2025-01-17 08:37:48');
INSERT INTO `media_uploads` VALUES (131, 'lgKarate.png', NULL, '11.92 KB', 'lgkarate1737103068.png', '150 x 200 pixels', '2025-01-17 08:37:49', '2025-01-17 08:37:49');
INSERT INTO `media_uploads` VALUES (132, '5decd86b9b65a.jpg', NULL, '124.29 KB', '5decd86b9b65a1737609485.jpg', '1200 x 800 pixels', '2025-01-23 05:18:07', '2025-01-23 05:18:07');
INSERT INTO `media_uploads` VALUES (133, '08d3aa5074409016ad92884e8b4831a0.jpg', NULL, '249.68 KB', '08d3aa5074409016ad92884e8b4831a01737609485.jpg', '2880 x 1800 pixels', '2025-01-23 05:18:08', '2025-01-23 05:18:08');
INSERT INTO `media_uploads` VALUES (134, '5c8O2rZK4lMzF15G66rNwjs8FgJdPC-metaQkpKLmpwZw==-.jpg', NULL, '380.27 KB', '5c8o2rzk4lmzf15g66rnwjs8fgjdpc-metaqkpklmpwzw1737609864.jpg', '1000 x 694 pixels', '2025-01-23 05:24:25', '2025-01-23 05:24:25');
INSERT INTO `media_uploads` VALUES (135, 'gracie-barra-salt-lake-city-brazilian-jiu-jitsu-near-me-self-defense-utah-12-1-930x620.jpg', NULL, '61.37 KB', 'gracie-barra-salt-lake-city-brazilian-jiu-jitsu-near-me-self-defense-utah-12-1-930x6201737609865.jpg', '930 x 620 pixels', '2025-01-23 05:24:25', '2025-01-23 05:24:25');
INSERT INTO `media_uploads` VALUES (136, 'BJJ-beginners-guide-800x450.jpg', NULL, '41.61 KB', 'bjj-beginners-guide-800x4501737609897.jpg', '800 x 450 pixels', '2025-01-23 05:24:57', '2025-01-23 05:24:57');
INSERT INTO `media_uploads` VALUES (137, 'muay-thai-di-thailand.jpeg', NULL, '84.84 KB', 'muay-thai-di-thailand1737610292.jpeg', '700 x 467 pixels', '2025-01-23 05:31:32', '2025-01-23 05:31:32');
INSERT INTO `media_uploads` VALUES (138, 'Felipe-Lobo-Yodpanomrung-Jitmuangnon-Muay-Thai-1920X1280-29-1200x800.jpg', NULL, '122.5 KB', 'felipe-lobo-yodpanomrung-jitmuangnon-muay-thai-1920x1280-29-1200x8001737610292.jpg', '1200 x 800 pixels', '2025-01-23 05:31:32', '2025-01-23 05:31:32');
INSERT INTO `media_uploads` VALUES (139, 'mengenal-perbedaan-boxing-dan-kickboxing-a1H05qo2ZB.jpeg', NULL, '207.86 KB', 'mengenal-perbedaan-boxing-dan-kickboxing-a1h05qo2zb1737610440.jpeg', '1200 x 806 pixels', '2025-01-23 05:34:01', '2025-01-23 05:34:01');
INSERT INTO `media_uploads` VALUES (140, 'icon.png', NULL, '3.85 KB', 'icon1738652328.png', '40 x 40 pixels', '2025-02-04 06:58:50', '2025-02-04 06:58:50');
INSERT INTO `media_uploads` VALUES (141, 'logo.png', NULL, '7.61 KB', 'logo1738653067.png', '98 x 98 pixels', '2025-02-04 07:11:07', '2025-02-04 07:11:07');
INSERT INTO `media_uploads` VALUES (142, 'Screenshot-2025-01-24-9.54.09-AM-800x445.png', NULL, '327.37 KB', 'screenshot-2025-01-24-95409-am-800x4451739275309.png', '800 x 445 pixels', '2025-02-11 12:01:49', '2025-02-11 12:01:49');
INSERT INTO `media_uploads` VALUES (143, 'Screenshot-2025-01-24-9.54.09-AM-800x445.png', NULL, '327.37 KB', 'screenshot-2025-01-24-95409-am-800x4451739596034.png', '800 x 445 pixels', '2025-02-15 05:07:15', '2025-02-15 05:07:15');
INSERT INTO `media_uploads` VALUES (144, 'WhatsApp1.jpg', NULL, '225.25 KB', 'whatsapp11739597615.jpg', '1012 x 1211 pixels', '2025-02-15 05:33:36', '2025-02-15 05:33:36');
INSERT INTO `media_uploads` VALUES (145, 'unnamed (7).png', NULL, '397.28 KB', 'unnamed-71739620591.png', '512 x 512 pixels', '2025-02-15 11:56:32', '2025-02-15 11:56:32');
INSERT INTO `media_uploads` VALUES (146, 'biker_with_jacket_leather_with (9).jpeg', NULL, '54.21 KB', 'biker-with-jacket-leather-with-91739621454.jpeg', '512 x 768 pixels', '2025-02-15 12:10:54', '2025-02-15 12:10:54');
INSERT INTO `media_uploads` VALUES (147, 'biker_with_jacket_leather_with (4).jpeg', NULL, '56.05 KB', 'biker-with-jacket-leather-with-41739624061.jpeg', '512 x 768 pixels', '2025-02-15 12:54:21', '2025-02-15 12:54:21');
INSERT INTO `media_uploads` VALUES (148, 'GFN7.gif', NULL, '97.6 KB', 'gfn71739678263.gif', '480 x 394 pixels', '2025-02-16 03:57:44', '2025-02-16 03:57:44');
INSERT INTO `media_uploads` VALUES (149, 'Ld3q.gif', NULL, '209.75 KB', 'ld3q1739678335.gif', '506 x 415 pixels', '2025-02-16 03:58:55', '2025-02-16 03:58:55');
INSERT INTO `media_uploads` VALUES (150, 'V3Hu.gif', NULL, '179.01 KB', 'v3hu1739678660.gif', '506 x 415 pixels', '2025-02-16 04:04:20', '2025-02-16 04:04:20');
INSERT INTO `media_uploads` VALUES (151, 'under.png', NULL, '364.29 KB', 'under1739781977.png', '1920 x 1200 pixels', '2025-02-17 08:46:18', '2025-02-17 08:46:18');
INSERT INTO `media_uploads` VALUES (152, 'akira270.jpg', NULL, '38.94 KB', 'akira2701739949387.jpg', '270 x 280 pixels', '2025-02-19 07:16:27', '2025-02-19 07:16:27');
INSERT INTO `media_uploads` VALUES (153, 'nyo270.jpg', NULL, '49.93 KB', 'nyo2701739949387.jpg', '270 x 280 pixels', '2025-02-19 07:16:27', '2025-02-19 07:16:27');
INSERT INTO `media_uploads` VALUES (154, 'satria270.jpg', NULL, '59.17 KB', 'satria2701739949387.jpg', '270 x 280 pixels', '2025-02-19 07:16:28', '2025-02-19 07:16:28');
INSERT INTO `media_uploads` VALUES (155, 'giphy.gif', NULL, '55.72 KB', 'giphy1739960154.gif', '480 x 480 pixels', '2025-02-19 10:15:54', '2025-02-19 10:15:54');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (19, 'Primary Menu [ENG]', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":2,\"children\":[{\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_en_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_en_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"events_page_slug\",\"pname\":\"events_page_en_name\",\"ptype\":\"static\",\"id\":5},{\"pslug\":\"image_gallery_page_slug\",\"pname\":\"image_gallery_page_en_name\",\"ptype\":\"static\",\"id\":6}]},{\"pslug\":\"blog_page_slug\",\"pname\":\"blog_page_en_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_en_name\",\"ptype\":\"static\",\"id\":5},{\"icon\":\"fas fa-user\",\"pslug\":\"account_page_slug\",\"pname\":\"account_page_en_name\",\"ptype\":\"static\",\"id\":6}]', 'default', 'en', '2020-08-29 11:03:45', '2025-01-15 11:15:39');
INSERT INTO `menus` VALUES (20, 'top menu', '[{\"ptype\":\"custom\",\"pname\":\"Home\",\"purl\":\"@url\",\"id\":1},{\"ptype\":\"static\",\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"id\":2},{\"ptype\":\"static\",\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"id\":3},{\"ptype\":\"static\",\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"id\":4}]', NULL, 'en', '2020-10-25 16:19:56', '2020-10-25 16:20:07');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_11_06_180949_create_admins_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_07_071950_create_contact_info_items_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_12_07_082524_create_static_options_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_08_171750_create_counterups_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_12_09_063224_create_testimonials_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_10_125607_create_social_icons_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_12_10_125636_create_support_infos_table', 1);
INSERT INTO `migrations` VALUES (11, '2019_12_10_210247_create_blog_categories_table', 1);
INSERT INTO `migrations` VALUES (12, '2019_12_11_074345_create_blogs_table', 1);
INSERT INTO `migrations` VALUES (15, '2019_12_13_221931_create_languages_table', 1);
INSERT INTO `migrations` VALUES (16, '2019_12_28_140343_create_key_features_table', 1);
INSERT INTO `migrations` VALUES (20, '2019_12_29_094857_create_price_plans_table', 1);
INSERT INTO `migrations` VALUES (21, '2019_12_29_113138_create_team_members_table', 1);
INSERT INTO `migrations` VALUES (22, '2019_12_29_180216_create_brands_table', 1);
INSERT INTO `migrations` VALUES (23, '2019_12_31_065223_create_services_table', 1);
INSERT INTO `migrations` VALUES (24, '2020_01_21_132648_create_header_sliders_table', 2);
INSERT INTO `migrations` VALUES (25, '2019_12_28_161343_create_services_table', 3);
INSERT INTO `migrations` VALUES (27, '2020_01_23_162404_create_service_categories_table', 4);
INSERT INTO `migrations` VALUES (28, '2020_01_23_193759_create_works_table', 5);
INSERT INTO `migrations` VALUES (29, '2020_01_23_193805_create_works_categories_table', 5);
INSERT INTO `migrations` VALUES (30, '2020_01_25_155448_create_pages_table', 6);
INSERT INTO `migrations` VALUES (31, '2020_01_25_174849_create_menus_table', 7);
INSERT INTO `migrations` VALUES (32, '2020_01_28_054211_create_faqs_table', 8);
INSERT INTO `migrations` VALUES (33, '2020_02_04_010636_create_newsletters_table', 9);
INSERT INTO `migrations` VALUES (34, '2020_03_09_125557_create_know_abouts_table', 10);
INSERT INTO `migrations` VALUES (35, '2020_03_29_075123_create_admin_roles_table', 11);
INSERT INTO `migrations` VALUES (36, '2020_04_14_082508_create_media_uploads_table', 12);
INSERT INTO `migrations` VALUES (37, '2020_04_20_073746_create_quotes_table', 13);
INSERT INTO `migrations` VALUES (38, '2020_04_20_170818_create_orders_table', 14);
INSERT INTO `migrations` VALUES (39, '2020_04_21_142420_create_payment_logs_table', 15);
INSERT INTO `migrations` VALUES (40, '2020_04_22_065550_create_jobs_table', 16);
INSERT INTO `migrations` VALUES (41, '2020_04_22_065603_create_jobs_categories_table', 16);
INSERT INTO `migrations` VALUES (42, '2020_04_23_140942_create_events_table', 17);
INSERT INTO `migrations` VALUES (43, '2020_04_23_141011_create_events_categories_table', 17);
INSERT INTO `migrations` VALUES (44, '2020_04_24_154518_create_knowledgebase_topics_table', 18);
INSERT INTO `migrations` VALUES (45, '2020_04_24_154524_create_knowledgebases_table', 18);
INSERT INTO `migrations` VALUES (47, '2020_06_14_081955_create_widgets_table', 19);
INSERT INTO `migrations` VALUES (48, '2020_07_02_125439_create_job_applicants_table', 20);
INSERT INTO `migrations` VALUES (49, '2020_07_06_154309_create_donations_table', 21);
INSERT INTO `migrations` VALUES (50, '2020_07_07_150250_create_donation_logs_table', 21);
INSERT INTO `migrations` VALUES (51, '2020_09_04_170910_create_image_gallery_categories_table', 22);
INSERT INTO `migrations` VALUES (52, '2020_09_05_050643_create_image_galleries_table', 23);
INSERT INTO `migrations` VALUES (53, '2020_07_04_143731_create_event_attendances_table', 24);
INSERT INTO `migrations` VALUES (54, '2020_07_04_173333_create_event_payment_logs_table', 24);
INSERT INTO `migrations` VALUES (55, '2020_07_08_132910_create_product_cupons_table', 24);
INSERT INTO `migrations` VALUES (56, '2020_07_08_161737_create_product_shippings_table', 24);
INSERT INTO `migrations` VALUES (57, '2020_07_09_084606_create_product_categories_table', 24);
INSERT INTO `migrations` VALUES (58, '2020_07_09_133432_create_products_table', 24);
INSERT INTO `migrations` VALUES (59, '2020_07_13_124351_create_product_orders_table', 24);
INSERT INTO `migrations` VALUES (60, '2020_07_21_053307_create_product_ratings_table', 24);
INSERT INTO `migrations` VALUES (61, '2020_09_14_062035_create_gigs_categories_table', 25);
INSERT INTO `migrations` VALUES (63, '2020_09_14_175243_create_gigs_table', 26);
INSERT INTO `migrations` VALUES (64, '2020_10_16_143129_create_gig_orders_table', 27);
INSERT INTO `migrations` VALUES (65, '2020_10_20_063412_create_gig_messages_table', 28);
INSERT INTO `migrations` VALUES (66, '2020_07_22_132250_create_popup_builders_table', 29);
INSERT INTO `migrations` VALUES (67, '2020_07_16_111906_create_feedback_table', 30);

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `newsletters_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of newsletters
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `package_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `package_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'About Our Coach', '<p><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\">Belanja online untuk tas, dompet &amp; lainnya di&nbsp;</span><span class=\"TNT2l AStapd\" style=\"font-weight: 800; color: rgb(118, 118, 118); font-family: Arial, sans-serif; font-size: 14px;\">Coach</span><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;Indonesia. Free Ongkir. Dapatkan koleksi terbaru dari&nbsp;</span><span class=\"TNT2l AStapd\" style=\"font-weight: 800; color: rgb(118, 118, 118); font-family: Arial, sans-serif; font-size: 14px;\">Coach</span><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\">&nbsp;Indonesia. Pasti original. 12 bulan warranty. Jaminan Return. Types: Belts, Handbags, Backpacks, Accessories, Wallets.</span></p><p><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\"><br></span></p><p><span style=\"color: rgb(71, 71, 71); font-family: Arial, sans-serif; font-size: 14px;\"><br></span></p>', 'publish', 'en', 'ourcoach', 'coach', 'ourcoach2', '2025-02-03 07:35:27', '2025-02-17 08:41:13');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('jcombatclub@gmail.com', 'ob18Tn3sFCcbPNtlCYarzUfR5oKNWJ', NULL);

-- ----------------------------
-- Table structure for payment_logs
-- ----------------------------
DROP TABLE IF EXISTS `payment_logs`;
CREATE TABLE `payment_logs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `package_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `package_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `package_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of payment_logs
-- ----------------------------

-- ----------------------------
-- Table structure for popup_builders
-- ----------------------------
DROP TABLE IF EXISTS `popup_builders`;
CREATE TABLE `popup_builders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `only_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `background_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `offer_time_end` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `button_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `btn_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of popup_builders
-- ----------------------------
INSERT INTO `popup_builders` VALUES (1, 'general notice', 'notice', 'Notice', NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'Ayo bergabung bersama kami Jember Combat Club', '2020-10-28 18:45:36', '2025-02-19 10:18:50');
INSERT INTO `popup_builders` VALUES (2, 'discount popup', 'discount', 'Discount', '172', NULL, '2025-03-30', 'Buy Now', '#', 'on', 'en', 'Having ask and coming object seemed put did admire figure. Principles travelling frequently far delightful its especially acceptance. Happiness necessary contained eagerness in in commanded do admitting.', '2020-10-28 18:58:33', '2025-02-19 10:20:44');
INSERT INTO `popup_builders` VALUES (3, 'image popup', 'only_image', NULL, '22', NULL, NULL, NULL, NULL, NULL, 'en', NULL, '2020-11-02 07:22:42', '2025-02-04 09:16:28');

-- ----------------------------
-- Table structure for price_plans
-- ----------------------------
DROP TABLE IF EXISTS `price_plans`;
CREATE TABLE `price_plans`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of price_plans
-- ----------------------------
INSERT INTO `price_plans` VALUES (1, 'Basic', '19', '/Mo', 'flaticon-handshake', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-28 00:05:05', '2020-03-06 04:00:55');
INSERT INTO `price_plans` VALUES (2, 'Standard', '49', '/Mo', 'flaticon-creative', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-28 00:19:00', '2020-03-06 04:01:18');
INSERT INTO `price_plans` VALUES (3, 'Premium', '99', '/Mo', 'flaticon-analytics', 'en', 'W3C valid HTML5 / CSS3;\r\nSemantic search engine-bots-friendly coding;\r\nCustom fonts and rollovers;\r\nLoad speed optimization;\r\nSass CSS extensions', 'Order Now', '#', 'on', '2020-01-28 00:19:35', '2020-03-06 04:01:53');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_categories
-- ----------------------------

-- ----------------------------
-- Table structure for product_coupons
-- ----------------------------
DROP TABLE IF EXISTS `product_coupons`;
CREATE TABLE `product_coupons`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `discount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expire_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for product_orders
-- ----------------------------
DROP TABLE IF EXISTS `product_orders`;
CREATE TABLE `product_orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_track` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subtotal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `shipping_cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `product_shippings_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `billing_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_street_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_town` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `billing_district` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `different_shipping_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_street_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_town` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `shipping_district` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cart_items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_orders
-- ----------------------------

-- ----------------------------
-- Table structure for product_ratings
-- ----------------------------
DROP TABLE IF EXISTS `product_ratings`;
CREATE TABLE `product_ratings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ratings` int UNSIGNED NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `product_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for product_shippings
-- ----------------------------
DROP TABLE IF EXISTS `product_shippings`;
CREATE TABLE `product_shippings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cost` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product_shippings
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `regular_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sale_price` decimal(10, 0) NULL DEFAULT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stock_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attributes_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attributes_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `total_sold` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `badge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gallery` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_downloadable` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `downloadable_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `tax_percentage` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for quotes
-- ----------------------------
DROP TABLE IF EXISTS `quotes`;
CREATE TABLE `quotes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of quotes
-- ----------------------------

-- ----------------------------
-- Table structure for service_categories
-- ----------------------------
DROP TABLE IF EXISTS `service_categories`;
CREATE TABLE `service_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `img_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of service_categories
-- ----------------------------
INSERT INTO `service_categories` VALUES (1, 'Boxing', 'en', 'publish', 'image', 'fab fa-500px', '128', '2020-01-23 23:50:58', '2025-02-04 09:27:43');
INSERT INTO `service_categories` VALUES (2, 'Jiu Jitsu', 'en', 'publish', 'image', 'xg-flaticon-contract', '129', '2020-01-23 23:51:30', '2025-02-04 09:27:29');
INSERT INTO `service_categories` VALUES (3, 'Karate', 'en', 'publish', 'image', 'xg-flaticon-bullhorn', '131', '2020-01-23 23:51:40', '2025-02-04 09:27:14');
INSERT INTO `service_categories` VALUES (4, 'Muay-Thai', 'en', 'publish', 'image', 'xg-flaticon-smiling', '130', '2020-01-23 23:51:50', '2025-02-04 09:26:48');

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `categories_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `img_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES (1, 'Muay Thai', 'fas fa-fist-raised', 'Muay Thai adalah seni bela diri yang berasal dari Thailand ...', '137', 'en', '4', '<p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: Arial;\">﻿</span><font face=\"Arial\">Muay Thai adalah seni bela diri yang berasal dari Thailand yang menggunakan tangan, siku, lutut, dan kaki untuk menyerang dan bertahan. Muay Thai juga dikenal sebagai Thai boxing.&nbsp;<br></font></span></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Ciri khas Muay Thai</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Menggunakan berbagai teknik serangan, seperti menendang, meninju, menyikut, menyerang dengan lutut, hingga mencengkeram lawan&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Banyak menggunakan teknik penguncian di sekitar kepala lawan (clinching)&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Memiliki tempo yang cepat&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Gaya bertarungnya memanfaatkan delapan bagian tubuh untuk menyerang dan bertahan&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Teknik formal Muay Thai dibagi menjadi dua kelompok: \"Mae Mai\" atau \"teknik utama\" dan \"Luk Mai\" atau \"teknik minor\"&nbsp;</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Manfaat Muay Thai Membantu menurunkan berat badan, Menjaga kesehatan jantung, Memiliki banyak manfaat untuk kesehatan tubuh pria dan wanita.&nbsp;</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Sejarah Muay Thai&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Muay Thai telah menjadi bagian dari sejarah dan warisan Thailand selama ratusan tahun</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Muay Thai merupakan metode pertahanan diri utama dan paling efektif yang digunakan oleh pejuang Thailand di medan konflik dan perang</font></p>', 'muay-thai2024', 'muay thai jember', 'muay thai,jcc', '130', 'image', 'publish', '2020-01-23 19:31:51', '2025-02-19 09:55:19');
INSERT INTO `services` VALUES (2, 'Jiu Jitsu', 'fas fa-fist-raised', 'Jujitsu adalah seni bela diri yang berasal dari Jepang ...', '136', 'en', '2', '<p><span style=\"font-family: Arial;\">﻿</span><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Jujitsu adalah seni bela diri yang berasal dari Jepang yang menggunakan teknik fleksibel untuk menyerang bagian lemah lawan. Jujitsu juga dapat diartikan sebagai pertarungan tanpa senjata yang menggunakan pegangan, lemparan, dan pukulan melumpuhkan.&nbsp;<br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Ciri khas Jujitsu&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Menggunakan teknik-teknik fleksibel, seperti kuncian, tendangan, dan pukulan</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Bersifat defensif dan memanfaatkan teknik-teknik \"Yawara-gi\"</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Memanfaatkan daya ungkit, sudut, tekanan, dan waktu</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Menggunakan pengetahuan mengenai anatomi manusia</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Manfaat Jujitsu&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Membantu menjaga diri</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Membina kesehatan dan kesejahteraan jasmani dan mental</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Mengembangkan kreativitas dan rasa tanggung jawab</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Melatih fokus dan konsentrasi</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Meningkatkan stamina tubuh</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Memaksimalkan reflek dan kekuatan tubuh</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Memaksimalkan fleksibilitas tubuh</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Perkembangan Jujitsu</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Jujitsu awalnya diajarkan kepada para prajurit samurai untuk mempertahankan diri dari lawan. Jujitsu terus mengalami perkembangan seiring berjalannya waktu.</font></p>', 'jiujitsu2024', 'Jiu Jitsu jember combat club', 'Jiu Jitsu,JCC', '129', 'image', 'publish', '2020-01-23 19:47:11', '2025-02-19 09:49:09');
INSERT INTO `services` VALUES (3, 'Boxing', 'fas fa-fist-raised', 'Boxing atau tinju adalah olahraga bela diri dan tarung yang ...', '139', 'en', '1', '<p><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: Arial;\">﻿</span><font face=\"Arial\">Boxing atau tinju adalah olahraga bela diri dan tarung yang dilakukan oleh dua orang dengan cara memukul menggunakan tangan. Olahraga ini dilakukan di dalam ring tinju.&nbsp;<br></font></span></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Cara bermain</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Petinju mengenakan peralatan pelindung, seperti sarung tinju, pembungkus tangan, dan pelindung mulut&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Petinju saling menyerang dan bertahan dari serangan lawan&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Petinju yang lebih banyak memberikan pukulan bersih atau serangannya dianggap lebih efektif dan dapat menghindari serangan lawan, dinyatakan memenangi ronde tersebut&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Jika dapat menjatuhkan lawannya atau (knockdown) maka satu poin akan dikurangkan untuk petinju yang terjatuh&nbsp;</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Manfaat boxing Membakar kalori, Melatih otot di seluruh tubuh, Membantu menurunkan berat badan, Melatih koordinasi.&nbsp;</font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\"><br></font></p><p><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Sejarah boxing</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Boxing sudah sejak lama dikenal dan dipraktikkan sebagai seni bela diri pada zaman Yunani Kuno&nbsp;</font></p><p style=\"margin-left: 25px;\"><font face=\"Arial\" style=\"color: rgb(0, 0, 0);\">Tinju pertama kali dipertandingkan dalam Olimpiade modern pada Olimpiade 1904 di St. Louis</font></p>', 'boxing2024', 'boxing tinju', 'Boxing,Tinju', '128', 'image', 'publish', '2020-01-27 01:33:53', '2025-02-19 09:51:25');
INSERT INTO `services` VALUES (4, 'Karate', 'fas fa-fist-raised', 'Karate adalah seni bela diri yang berasal dari Jepang ...', '132', 'en', '3', '<h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074503809\">Karate adalah&nbsp;<mark class=\"QVRyCf\" style=\"padding: 0px 2px; background: var(--m3c22); border-radius: 4px;\">seni bela diri yang berasal dari Jepang yang menggunakan tangan kosong</mark>.&nbsp;</span><span data-huuid=\"11146641449074505374\">Karate mengandalkan kekuatan, kecepatan, kelincahan, dan konsentrasi untuk menyerang dan membela diri.<span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"caaa88ac-50d0-42bd-bb44-68a416710d51\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074505374\"><span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"caaa88ac-50d0-42bd-bb44-68a416710d51\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\"><br></span></span></span><span data-huuid=\"11146641449074505973\"><span aria-level=\"2\" role=\"heading\">Ciri khas karate</span><span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"0e9423cd-6e8d-473d-9475-ec9f4689ba09\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074506572\">Menggunakan tangan kosong</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span style=\"color: inherit; font-size: 1rem;\">Mengandalkan kekuatan, kecepatan, kelincahan, dan konsentrasi</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074504640\">Menggunakan telapak tangan, tumit, lutut, dan siku untuk menyerang</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074507770\">Menggunakan gerakan tangan dan kaki yang dirancang untuk menyerang dan membela diri</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"4683334970183161778\">Tujuan karate&nbsp;</span><span data-huuid=\"1952580962328048522\">Mempertahankan diri dari ancaman, Menjaga kesehatan, Menjaga kebugaran jasmani.<span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"791e2cd7-0bcd-410e-b44d-c170349fff0c\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"11146641449074506804\">Teknik dasar karate&nbsp;</span><span data-huuid=\"1952580962328049317\">Kihon, Kata, Kumite.<span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"0594615c-31b7-41a7-baa1-ed012eab68ad\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span data-huuid=\"14442031774699984108\"><span aria-level=\"2\" role=\"heading\">Ciri khas kata</span><span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"d803c8f8-e822-4cb2-816b-24077dd21016\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span style=\"color: inherit; font-size: 1rem;\">Kata mengandung pelajaran tentang prinsip bertarung</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span style=\"color: inherit; font-size: 1rem;\">Gerakan-gerakan Kata juga banyak mengandung falsafah-falsafah hidup</span></h6><h6 style=\"margin-top: 10px; margin-bottom: 20px; color: rgb(0, 29, 53);\"><span style=\"color: inherit; font-size: 1rem;\"><br></span><span style=\"color: inherit; font-size: 1rem;\">Setiap Kata memiliki ritme gerakan dan pernapasan yang berbeda</span><span style=\"color: inherit; font-size: 1rem;\"><br></span><span data-huuid=\"4683334970183162233\">Karate menjadi salah satu seni bela diri paling populer di seluruh dunia dengan jutaan pemain dari segala usia.<span jscontroller=\"JHnpme\" class=\"pjBG2e\" data-cid=\"ab710e36-a1d4-4a6c-9e3a-466296e15a6a\" jsaction=\"rcuQ6b:npT2md\"><span class=\"UV3uM\" style=\"text-wrap-mode: nowrap;\">&nbsp;</span></span></span></h6>', 'karate2024', 'karate', 'karate', '131', 'image', 'publish', '2020-09-03 17:26:03', '2025-02-19 09:35:39');

-- ----------------------------
-- Table structure for social_icons
-- ----------------------------
DROP TABLE IF EXISTS `social_icons`;
CREATE TABLE `social_icons`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of social_icons
-- ----------------------------
INSERT INTO `social_icons` VALUES (1, 'fab fa-facebook-f', '#', '2020-01-04 14:04:13', '2020-01-04 14:04:13');
INSERT INTO `social_icons` VALUES (2, 'fab fa-twitter', '#', '2020-01-04 14:04:22', '2020-01-04 14:04:22');
INSERT INTO `social_icons` VALUES (3, 'fab fa-linkedin-in', '#', '2020-01-04 14:04:39', '2020-01-04 14:04:39');
INSERT INTO `social_icons` VALUES (4, 'fab fa-instagram', '#', '2025-01-15 11:31:20', '2025-01-15 11:31:20');

-- ----------------------------
-- Table structure for static_options
-- ----------------------------
DROP TABLE IF EXISTS `static_options`;
CREATE TABLE `static_options`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4210 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of static_options
-- ----------------------------
INSERT INTO `static_options` VALUES (1, 'item_license_status', 'verified', '2020-01-19 23:08:01', '2020-11-09 10:17:08');
INSERT INTO `static_options` VALUES (2, 'site_title', 'Bagsy', '2020-01-19 23:09:11', '2020-03-17 02:48:40');
INSERT INTO `static_options` VALUES (3, 'site_tag_line', 'Multipurpose CMS', '2020-01-19 23:09:11', '2020-03-17 02:48:40');
INSERT INTO `static_options` VALUES (4, 'site_footer_copyright', '{copy}  {year}  All right reserved by Bagsy', '2020-01-19 23:09:11', '2020-03-17 02:48:40');
INSERT INTO `static_options` VALUES (5, 'site_color', '#2685f9', '2020-01-19 23:09:11', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (6, 'site_main_color_two', '#ce0707', '2020-01-19 23:09:11', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (7, 'home_page_variant', '09', '2020-01-19 23:09:29', '2025-02-03 07:13:53');
INSERT INTO `static_options` VALUES (8, 'site_logo', '124', '2020-01-19 23:46:45', '2025-02-04 08:57:24');
INSERT INTO `static_options` VALUES (9, 'site_favicon', '140', '2020-01-19 23:47:45', '2025-02-04 08:57:24');
INSERT INTO `static_options` VALUES (10, 'site_breadcrumb_bg', '58', '2020-01-19 23:47:59', '2025-02-04 08:57:24');
INSERT INTO `static_options` VALUES (11, 'navbar_button', NULL, '2020-01-19 23:49:57', '2025-01-22 05:05:46');
INSERT INTO `static_options` VALUES (12, 'navbar_button_text', 'Get a Quote', '2020-01-19 23:49:57', '2020-01-29 02:24:03');
INSERT INTO `static_options` VALUES (13, 'navbar_button_url', '#', '2020-01-19 23:49:57', '2020-01-29 02:24:03');
INSERT INTO `static_options` VALUES (14, 'home_page_01_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-01-22 19:47:18', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (15, 'home_page_01_build_dream_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laborisaliquip ex ea com modo consequat. Duis aute irure.', '2020-01-22 19:47:18', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (16, 'home_page_01_build_dream_btn_title', 'Contact us', '2020-01-22 19:47:18', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (17, 'home_page_01_build_dream_btn_url', '#', '2020-01-22 19:47:18', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (18, 'build_dream_section_button_status', 'on', '2020-01-22 19:47:18', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (19, 'home_page_01_build_dream_right_image', 'home-page-01-build-dream-right-side-image-3285694.jpg', '2020-01-22 20:27:40', '2020-02-04 07:35:25');
INSERT INTO `static_options` VALUES (20, 'home_page_01_service_area_title', 'Our Services', '2020-01-23 22:59:54', '2020-01-29 02:03:11');
INSERT INTO `static_options` VALUES (21, 'home_01_counterup_bg_image', '43', '2020-01-24 01:50:45', '2020-11-01 19:58:32');
INSERT INTO `static_options` VALUES (22, 'home_page_01_recent_work_title', 'OUR RECENT WORKS', '2020-01-25 00:13:42', '2020-01-25 00:13:42');
INSERT INTO `static_options` VALUES (23, 'home_page_01_testimonial_title', 'WHAT SAY OUR CLIENTS', '2020-01-25 02:09:40', '2020-01-25 02:09:40');
INSERT INTO `static_options` VALUES (24, 'home_page_01_latest_news_title', 'LATEST NEWS', '2020-01-25 02:54:21', '2020-01-25 02:54:21');
INSERT INTO `static_options` VALUES (25, 'blog_page_title', 'Blog', '2020-01-25 19:55:20', '2020-01-25 19:55:20');
INSERT INTO `static_options` VALUES (26, 'blog_page_item', '6', '2020-01-25 19:55:20', '2020-01-25 19:55:20');
INSERT INTO `static_options` VALUES (27, 'blog_page_category_widget_title', 'Category', '2020-01-25 19:55:20', '2020-01-25 19:55:20');
INSERT INTO `static_options` VALUES (28, 'blog_page_recent_post_widget_title', 'Recent Post', '2020-01-25 19:55:20', '2020-01-25 19:55:20');
INSERT INTO `static_options` VALUES (29, 'blog_page_recent_post_widget_item', '4', '2020-01-25 19:55:20', '2020-01-25 19:55:20');
INSERT INTO `static_options` VALUES (30, 'about_widget_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-01-25 21:37:19', '2020-02-04 06:53:55');
INSERT INTO `static_options` VALUES (31, 'about_widget_social_icon_one', 'fab fa-facebook-f', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (32, 'about_widget_social_icon_two', 'fab fa-twitter', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (33, 'about_widget_social_icon_three', 'fab fa-pinterest-p', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (34, 'about_widget_social_icon_four', 'fab fa-linkedin-in', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (35, 'about_widget_social_icon_one_url', '#', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (36, 'about_widget_social_icon_two_url', '#', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (37, 'about_widget_social_icon_three_url', '#', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (38, 'about_widget_social_icon_four_url', '#', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (39, 'about_widget_logo', '87', '2020-01-25 21:37:19', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (40, 'recent_post_widget_title', 'Recent Posts', '2020-01-25 21:42:15', '2020-01-25 21:42:15');
INSERT INTO `static_options` VALUES (41, 'recent_post_widget_item', '2', '2020-01-25 21:42:15', '2020-03-16 17:36:18');
INSERT INTO `static_options` VALUES (42, 'footer_background_image', 'footer-background-image-257591.jpg', '2020-01-25 21:54:55', '2020-02-04 06:54:31');
INSERT INTO `static_options` VALUES (43, 'useful_link_widget_title', 'Useful Links', '2020-01-27 01:36:13', '2020-01-27 01:43:34');
INSERT INTO `static_options` VALUES (44, 'important_link_widget_title', 'Important Links', '2020-01-27 01:36:30', '2020-01-27 02:00:45');
INSERT INTO `static_options` VALUES (45, 'useful_link_widget_menu_id', '2', '2020-01-27 01:43:34', '2020-02-27 17:29:51');
INSERT INTO `static_options` VALUES (46, 'important_link_widget_menu_id', '3', '2020-01-27 02:00:45', '2020-02-27 17:38:54');
INSERT INTO `static_options` VALUES (47, 'about_page_about_section_btn_status', 'on', '2020-01-27 04:40:27', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (48, 'about_page_about_section_title', 'WHY YOU CHOOSE US?', '2020-01-27 04:42:17', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (49, 'about_page_about_section_btn_text', 'Contact Us', '2020-01-27 04:42:17', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (50, 'about_page_about_section_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor magna aliqua.', '2020-01-27 04:42:17', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (51, 'about_page_about_section_btn_url', '#', '2020-01-27 04:51:17', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (52, 'about_page_about_section_left_image', 'about-page-about-section-left-image-7190812.jpg', '2020-01-27 04:51:49', '2020-02-04 07:46:37');
INSERT INTO `static_options` VALUES (53, 'about_page_team_section_title', 'MEET OUR EXPERTS', '2020-01-27 04:57:44', '2020-01-27 04:57:44');
INSERT INTO `static_options` VALUES (54, 'service_page_section_title', 'OUR PRICING', '2020-01-27 17:41:30', '2020-01-27 17:48:43');
INSERT INTO `static_options` VALUES (55, 'service_page_price_plan_section_title', 'OUR PRICING', '2020-01-27 17:57:01', '2020-01-27 17:57:01');
INSERT INTO `static_options` VALUES (56, 'service_page_cta_button_text', 'Contact us', '2020-01-27 18:10:51', '2020-01-27 18:11:27');
INSERT INTO `static_options` VALUES (57, 'service_page_cta_button_status', 'on', '2020-01-27 18:10:51', '2020-01-27 18:11:27');
INSERT INTO `static_options` VALUES (58, 'service_page_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-01-27 18:10:51', '2020-01-27 18:11:27');
INSERT INTO `static_options` VALUES (59, 'service_page_cta_title', 'Looking for Trusted construction company?', '2020-01-27 18:10:51', '2020-01-27 18:11:27');
INSERT INTO `static_options` VALUES (60, 'team_page_team_member_section_title', NULL, '2020-01-28 05:45:48', '2020-02-27 00:43:50');
INSERT INTO `static_options` VALUES (61, 'team_page_team_member_section_item', '3', '2020-01-28 05:45:48', '2020-02-27 00:46:33');
INSERT INTO `static_options` VALUES (62, 'team_page_about_section_title', 'CHIEF ENGINEER', '2020-01-28 06:04:21', '2020-02-04 07:48:50');
INSERT INTO `static_options` VALUES (63, 'team_page_about_section_description', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-01-28 06:04:21', '2020-02-04 07:48:50');
INSERT INTO `static_options` VALUES (64, 'team_page_about_section_image', 'team-page-about-section-image-5608735.jpg', '2020-01-28 06:05:27', '2020-02-04 07:48:50');
INSERT INTO `static_options` VALUES (65, 'contact_page_contact_info_title', 'CONTACT INFO', '2020-01-28 15:14:59', '2020-01-28 15:14:59');
INSERT INTO `static_options` VALUES (66, 'contact_page_form_section_title', 'GET IN TOUCH', '2020-01-28 15:36:56', '2020-01-28 15:36:56');
INSERT INTO `static_options` VALUES (67, 'contact_page_map_section_longitude', '90.4234868', '2020-01-28 15:41:54', '2020-04-19 23:50:47');
INSERT INTO `static_options` VALUES (68, 'contact_page_map_section_latitude', '23.7797664', '2020-01-28 15:41:54', '2020-04-19 23:50:47');
INSERT INTO `static_options` VALUES (69, 'site_disqus_key', 'jcc-cms', '2020-01-28 15:42:13', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (70, 'site_google_analytics', NULL, '2020-01-28 15:42:13', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (71, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2020-01-28 15:42:13', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (72, 'site_google_map_api', 'AIzaSyC7eALQrRUekFNQX71IBNkxUXcz-ALS-MY', '2020-01-28 15:50:07', '2020-11-01 13:49:28');
INSERT INTO `static_options` VALUES (73, 'home_page_build_dream_section_status', NULL, '2020-01-29 00:20:49', '2020-03-10 20:15:49');
INSERT INTO `static_options` VALUES (74, 'home_page_service_section_status', 'on', '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (75, 'key_feature_section_status', NULL, '2020-01-29 00:20:49', '2020-01-29 00:21:01');
INSERT INTO `static_options` VALUES (76, 'home_page_counterup_section_status', NULL, '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (77, 'home_page_recent_work_section_status', 'on', '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (78, 'home_page_testimonial_section_status', NULL, '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (79, 'home_page_latest_news_section_status', 'on', '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (80, 'home_page_brand_logo_section_status', NULL, '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (81, 'home_page_support_bar_section_status', NULL, '2020-01-29 00:20:49', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (82, 'home_page_key_feature_section_status', NULL, '2020-01-29 00:21:38', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (83, 'home_page_price_plan_section_status', NULL, '2020-01-29 01:12:33', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (84, 'home_page_01_price_plan_section_title', 'OUR PRICING', '2020-01-29 01:45:00', '2020-02-04 07:41:47');
INSERT INTO `static_options` VALUES (85, 'home_02_counterup_bg_image', 'home-page-02-counterup-bg-image-2422193.jpg', '2020-01-29 01:47:30', '2020-02-04 07:39:02');
INSERT INTO `static_options` VALUES (86, 'home_page_01_service_area_items', '4', '2020-01-29 02:03:11', '2025-01-22 11:30:57');
INSERT INTO `static_options` VALUES (87, 'home_page_team_member_section_status', 'on', '2020-01-29 02:14:41', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (88, 'home_page_01_team_member_section_title', 'MEET OUR EXPERTS', '2020-01-29 02:20:02', '2020-01-29 02:20:02');
INSERT INTO `static_options` VALUES (89, 'home_page_01_team_member_section_items', '4', '2020-01-29 02:20:02', '2020-02-24 15:17:09');
INSERT INTO `static_options` VALUES (90, 'quote_page_form_mail', 'rsharifur824@gmail.com', '2020-01-29 14:52:01', '2020-11-02 17:58:38');
INSERT INTO `static_options` VALUES (91, 'quote_page_form_title', 'Request A Quote', '2020-01-29 15:04:25', '2020-01-29 15:04:25');
INSERT INTO `static_options` VALUES (92, 'quote_page_page_title', 'Request A Quote', '2020-01-29 15:04:25', '2020-01-29 15:04:25');
INSERT INTO `static_options` VALUES (93, 'site_google_captcha_v3_site_key', '6LfgytMUAAAAACs6Ezn7UTP40pCDOqFLFE_oaEBV', '2020-01-29 15:15:07', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (94, 'site_google_captcha_v3_secret_key', '6LfgytMUAAAAAPOGJQxMaO4EqEEvLaV5FHpJtzJ9', '2020-01-29 15:15:07', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (95, 'order_page_form_mail', 'jcombatclub@gmail.com', '2020-01-29 15:29:35', '2025-02-04 07:05:39');
INSERT INTO `static_options` VALUES (96, 'order_page_form_title', 'Order Information', '2020-01-29 15:29:35', '2020-01-29 15:29:35');
INSERT INTO `static_options` VALUES (97, 'home_page_01_price_plan_section_items', '3', '2020-02-04 07:41:47', '2025-01-16 10:33:25');
INSERT INTO `static_options` VALUES (98, 'home_page_01_newsletter_area_title', 'SUBSCRIBE US TO GET UPDATE', '2020-02-04 08:14:45', '2020-02-04 08:14:45');
INSERT INTO `static_options` VALUES (99, 'home_page_01_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-04 08:14:45', '2020-02-04 08:14:45');
INSERT INTO `static_options` VALUES (100, 'site_global_email', 'support@jembercombatclub.com', '2020-02-21 03:25:32', '2025-02-19 10:13:46');
INSERT INTO `static_options` VALUES (101, 'site_global_email_template', '<p>Hello,</p><p>@username</p><p>@message</p><p>Regards</p><p>@company</p>', '2020-02-21 03:25:32', '2025-02-19 10:13:46');
INSERT INTO `static_options` VALUES (102, 'navbar_en_button_text', 'Get A Quote', '2020-02-23 02:08:16', '2025-01-22 05:05:46');
INSERT INTO `static_options` VALUES (105, 'home_page_01_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 13:31:28', '2020-02-23 13:31:28');
INSERT INTO `static_options` VALUES (106, 'home_page_01_en_build_dream_title', 'BUILD YOUR DREAM HOME', '2020-02-23 14:28:12', '2020-02-23 14:33:25');
INSERT INTO `static_options` VALUES (107, 'home_page_01_en_build_dream_description', 'Do play they miss give so up. Words to up style of since world. We leaf to snug on no need. Way own uncommonly travelling now acceptance bed compliment solicitude. Dissimilar admiration so terminated no in contrasted it. Advantages entreaties', '2020-02-23 14:28:12', '2020-02-23 14:33:25');
INSERT INTO `static_options` VALUES (108, 'home_page_01_en_build_dream_btn_title', 'Contact Us', '2020-02-23 14:28:12', '2020-02-23 14:33:25');
INSERT INTO `static_options` VALUES (109, 'home_page_01_en_build_dream_btn_url', '#', '2020-02-23 14:28:12', '2020-02-23 14:33:25');
INSERT INTO `static_options` VALUES (110, 'home_page_01_en_build_dream_right_image', 'home-page-01-en-build-dream-right-side-image-3886394.jpg', '2020-02-23 14:28:12', '2020-02-23 14:28:12');
INSERT INTO `static_options` VALUES (111, 'build_dream_en_section_button_status', NULL, '2020-02-23 14:28:12', '2020-03-02 16:49:14');
INSERT INTO `static_options` VALUES (114, 'home_page_01_en_build_dream_video_url', 'https://www.youtube.com/watch?v=jSGnn6HCLJ8', '2020-02-23 14:30:02', '2020-02-23 14:33:25');
INSERT INTO `static_options` VALUES (127, 'home_page_01_en_service_area_title', 'Our Services', '2020-02-23 15:43:12', '2025-01-20 11:26:30');
INSERT INTO `static_options` VALUES (130, 'home_page_01_en_recent_work_title', 'Our Recent Works', '2020-02-24 13:53:18', '2025-01-16 10:30:39');
INSERT INTO `static_options` VALUES (133, 'home_page_01_en_testimonial_title', NULL, '2020-02-24 14:26:24', '2020-03-06 00:01:29');
INSERT INTO `static_options` VALUES (136, 'home_page_01_en_latest_news_title', 'Latest News', '2020-02-24 14:34:39', '2025-01-16 10:32:19');
INSERT INTO `static_options` VALUES (139, 'home_page_01_enprice_plan_section_title', NULL, '2020-02-24 15:11:32', '2020-02-24 15:11:32');
INSERT INTO `static_options` VALUES (140, 'home_page_01_snprice_plan_section_title', NULL, '2020-02-24 15:11:32', '2020-02-24 15:11:32');
INSERT INTO `static_options` VALUES (141, 'home_page_01_prprice_plan_section_title', NULL, '2020-02-24 15:11:32', '2020-02-24 15:11:32');
INSERT INTO `static_options` VALUES (142, 'home_page_01_en_price_plan_section_title', 'Our Pricing', '2020-02-24 15:11:59', '2025-01-16 10:33:24');
INSERT INTO `static_options` VALUES (145, 'home_page_01_en_team_member_section_title', 'Meet The Coach', '2020-02-24 15:17:09', '2025-01-16 10:33:00');
INSERT INTO `static_options` VALUES (148, 'home_page_01_en_newsletter_area_title', 'Subscribe to get update', '2020-02-24 15:25:53', '2025-01-16 10:33:55');
INSERT INTO `static_options` VALUES (151, 'home_page_01_en_newsletter_area_description', 'Subscribe our newsletter to get update with our self.', '2020-02-24 15:26:43', '2025-01-16 10:33:55');
INSERT INTO `static_options` VALUES (154, 'about_page_en_about_section_left_image', 'about-page-en-about-section-left-image-5509947.jpg', '2020-02-26 21:13:38', '2020-02-26 21:13:38');
INSERT INTO `static_options` VALUES (155, 'about_page_en_about_section_btn_status', NULL, '2020-02-26 21:13:38', '2020-03-09 19:35:40');
INSERT INTO `static_options` VALUES (156, 'about_page_en_about_section_title', 'Combat Sports Gym pertama di Jember', '2020-02-26 21:13:38', '2025-02-19 07:50:58');
INSERT INTO `static_options` VALUES (157, 'about_page_en_about_section_btn_text', NULL, '2020-02-26 21:13:38', '2020-03-09 19:35:40');
INSERT INTO `static_options` VALUES (158, 'about_page_en_about_section_description', 'Di Jember Combat Club, kami menghadirkan pengalaman berlatih olahraga bela diri yang terintegrasi dengan pendekatan teknis dan disiplin.\r\nDalam suasana yang ramah dan mendukung.\r\n\r\nSetiap praktisi dari pemula hingga ahli, dapat mengembangkan kemampuan mereka secara efektif dan bertahap.', '2020-02-26 21:13:38', '2025-02-19 07:50:58');
INSERT INTO `static_options` VALUES (159, 'about_page_en_about_section_btn_url', NULL, '2020-02-26 21:13:38', '2020-03-09 19:35:40');
INSERT INTO `static_options` VALUES (172, 'about_page_en_team_section_title', 'MEET OUR EXPERTS', '2020-02-26 21:24:03', '2020-02-26 21:24:03');
INSERT INTO `static_options` VALUES (175, 'service_page_en_cta_button_text', 'Contact Us', '2020-02-27 00:05:53', '2020-02-27 00:06:19');
INSERT INTO `static_options` VALUES (176, 'service_page_en_cta_button_status', 'on', '2020-02-27 00:05:53', '2020-02-27 00:06:19');
INSERT INTO `static_options` VALUES (177, 'service_page_en_cta_description', 'Lorem ipsum dolor sit aLorem ipsum dolor sit amet, conse ctetur adipisicing elit, sed do eiusmod tempor.', '2020-02-27 00:05:53', '2020-02-27 00:06:19');
INSERT INTO `static_options` VALUES (178, 'service_page_en_cta_title', 'Looking for Trusted construction company?', '2020-02-27 00:05:53', '2020-02-27 00:06:19');
INSERT INTO `static_options` VALUES (187, 'service_page_en_price_plan_section_title', 'OUR PRICING', '2020-02-27 00:28:44', '2020-02-27 00:28:44');
INSERT INTO `static_options` VALUES (190, 'team_page_en_team_member_section_title', 'MEET OUR EXPERTS', '2020-02-27 00:46:33', '2020-02-27 00:46:33');
INSERT INTO `static_options` VALUES (193, 'team_page_en_about_section_title', 'CHIEF ENGINEER', '2020-02-27 01:01:29', '2020-02-27 01:03:21');
INSERT INTO `static_options` VALUES (194, 'team_page_en_about_section_description', '<p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p><p style=\"margin-bottom: 1rem; font-size: 16px; color: rgb(119, 119, 119); hyphens: auto; font-family: sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe rc itation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure.</p>', '2020-02-27 01:01:29', '2020-02-27 01:03:21');
INSERT INTO `static_options` VALUES (199, 'team_page_en_about_section_image', 'team-page-en-about-section-image-9440286.jpg', '2020-02-27 01:03:07', '2020-02-27 01:03:07');
INSERT INTO `static_options` VALUES (202, 'blog_page_en_title', 'Blog', '2020-02-27 02:48:56', '2025-01-16 08:47:59');
INSERT INTO `static_options` VALUES (203, 'blog_page_en_item', '6', '2020-02-27 02:48:56', '2025-01-16 08:47:59');
INSERT INTO `static_options` VALUES (204, 'blog_page_en_category_widget_title', 'Category', '2020-02-27 02:48:56', '2025-01-16 08:47:59');
INSERT INTO `static_options` VALUES (205, 'blog_page_en_recent_post_widget_title', 'Recent Post', '2020-02-27 02:48:56', '2025-01-16 08:47:59');
INSERT INTO `static_options` VALUES (206, 'blog_page_en_recent_post_widget_item', '4', '2020-02-27 02:48:56', '2025-01-16 08:47:59');
INSERT INTO `static_options` VALUES (217, 'contact_page_en_form_section_title', 'Keep In Touch', '2020-02-27 14:40:33', '2025-02-04 07:14:36');
INSERT INTO `static_options` VALUES (220, 'contact_page_en_contact_info_title', 'CONTACT INFO', '2020-02-27 14:50:35', '2020-02-27 14:52:27');
INSERT INTO `static_options` VALUES (223, 'quote_page_en_form_title', 'Request A Quote', '2020-02-27 15:41:44', '2020-11-02 17:58:38');
INSERT INTO `static_options` VALUES (224, 'quote_page_en_page_title', 'Request A Quote', '2020-02-27 15:41:44', '2020-11-02 17:58:38');
INSERT INTO `static_options` VALUES (229, 'order_page_en_form_title', 'Order Information', '2020-02-27 15:53:05', '2025-02-04 07:05:39');
INSERT INTO `static_options` VALUES (232, 'about_widget_en_description', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrudexe.', '2020-02-27 17:19:45', '2020-04-18 01:17:32');
INSERT INTO `static_options` VALUES (235, 'useful_link_en_widget_title', 'Useful Links', '2020-02-27 17:29:04', '2020-03-16 20:21:49');
INSERT INTO `static_options` VALUES (238, 'recent_post_en_widget_title', 'Recent Post ?', '2020-02-27 17:33:56', '2020-03-16 17:36:18');
INSERT INTO `static_options` VALUES (241, 'important_link_en_widget_title', 'Important Links', '2020-02-27 17:38:54', '2020-03-16 20:18:19');
INSERT INTO `static_options` VALUES (244, 'useful_link_en_widget_menu_id', '2', '2020-02-28 18:40:41', '2020-03-16 20:21:49');
INSERT INTO `static_options` VALUES (247, 'important_link_en_widget_menu_id', '3', '2020-02-28 19:31:15', '2020-03-16 20:18:19');
INSERT INTO `static_options` VALUES (250, 'site_meta_tags', 'website,jember,combat,club,jember combat club', '2020-03-01 12:57:20', '2025-02-19 10:13:15');
INSERT INTO `static_options` VALUES (251, 'site_meta_description', 'Jember Combat Club', '2020-03-01 12:57:20', '2025-02-19 10:13:15');
INSERT INTO `static_options` VALUES (252, 'site_white_logo', '125', '2020-03-01 15:08:17', '2025-02-04 08:57:24');
INSERT INTO `static_options` VALUES (253, 'top_bar_en_right_menu', '20', '2020-03-01 23:29:32', '2020-11-09 14:55:39');
INSERT INTO `static_options` VALUES (256, 'top_bar_en_button_text', 'Request Quote', '2020-03-01 23:33:50', '2025-01-20 09:30:30');
INSERT INTO `static_options` VALUES (259, 'home_page_01_en_about_us_title', 'About Us', '2020-03-02 17:12:04', '2025-01-16 10:28:30');
INSERT INTO `static_options` VALUES (260, 'home_page_01_en_about_us_description', 'Reprehenderit in voluptate velit essle cillum dolore eu fugiat nulla pariatur. Excepteur sint ocaec at cupdatat proident suntin culpa qui officia .', '2020-03-02 17:12:04', '2025-01-16 10:28:30');
INSERT INTO `static_options` VALUES (261, 'home_page_01_en_about_us_button_title', 'Learn More', '2020-03-02 17:12:04', '2025-01-16 10:28:30');
INSERT INTO `static_options` VALUES (262, 'home_page_01_en_about_us_button_url', '#', '2020-03-02 17:12:04', '2025-01-16 10:28:30');
INSERT INTO `static_options` VALUES (263, 'home_page_01_en_about_us_signature_text', 'Jimmy Carnel - CEO', '2020-03-02 17:12:04', '2020-11-01 19:57:26');
INSERT INTO `static_options` VALUES (264, 'home_page_01_en_about_us_signature_image', '32', '2020-03-02 17:12:47', '2020-11-01 19:57:26');
INSERT INTO `static_options` VALUES (265, 'home_page_01_en_about_us_background_image', '33', '2020-03-02 17:12:47', '2020-11-01 19:57:26');
INSERT INTO `static_options` VALUES (266, 'home_page_01_en_about_us_button_status', 'on', '2020-03-02 17:12:47', '2025-01-16 10:28:30');
INSERT INTO `static_options` VALUES (283, 'home_page_01_en_service_area_description', 'We help you to grow with these services.', '2020-03-04 16:02:28', '2025-01-20 11:26:30');
INSERT INTO `static_options` VALUES (286, 'home_page_01_en_cta_area_button_url', 'tel:123456789', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (287, 'home_page_01_en_cta_area_button_title', 'Call 01234 - 123456897', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (288, 'home_page_01_en_cta_area_title', 'Are you looking to grow your business?', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (289, 'home_page_01_en_cta_area_description', 'Trusted us by over 10,000 local businesses', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (290, 'home_page_01_en_cta_area_button_status', 'on', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (291, 'home_page_01_en_cta_background_image', '39', '2020-03-04 17:43:37', '2025-01-16 10:30:12');
INSERT INTO `static_options` VALUES (304, 'home_page_01_en_recent_work_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 18:47:50', '2025-01-16 10:30:40');
INSERT INTO `static_options` VALUES (307, 'home_page_01_en_team_member_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-04 22:31:06', '2025-01-16 10:33:00');
INSERT INTO `static_options` VALUES (310, 'home_01_testimonial_bg', '177', '2020-03-06 00:05:26', '2025-01-16 10:31:01');
INSERT INTO `static_options` VALUES (311, 'home_page_01_en_latest_news_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-06 00:48:00', '2025-01-16 10:32:19');
INSERT INTO `static_options` VALUES (314, 'home_page_01_en_price_plan_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-06 03:40:01', '2025-01-16 10:33:24');
INSERT INTO `static_options` VALUES (317, 'home_page_02_en_about_us_background_image', '35', '2020-03-06 16:34:29', '2020-04-16 00:25:03');
INSERT INTO `static_options` VALUES (318, 'home_page_01_en_about_us_quote_box_description', 'Acepteur sintas haecate sed ipsums cupidates nondui proident sunlt culpa.', '2020-03-06 19:59:14', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (319, 'home_page_01_en_about_us_experience_title', 'Years of experience', '2020-03-06 19:59:14', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (320, 'home_page_01_en_about_us_experience_year', '6', '2020-03-06 19:59:14', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (321, 'home_page_01_en_about_us_quote_box_title', 'Why Choose Us', '2020-03-06 19:59:14', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (322, 'home_page_01_en_about_us_right_image', '36', '2020-03-06 20:01:37', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (323, 'home_page_01_en_about_us_experience_background_image', '37', '2020-03-06 20:01:37', '2020-04-16 00:28:56');
INSERT INTO `static_options` VALUES (336, 'home_page_01_service_area_background_image', '38', '2020-03-06 22:26:43', '2025-01-20 11:26:30');
INSERT INTO `static_options` VALUES (337, 'home_page_01_en_faq_area_title', 'Frequently asked questions', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (338, 'home_page_01_en_faq_area_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (339, 'home_page_01_en_faq_area_form_title', 'Request Call Back', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (340, 'home_page_01_en_faq_area_form_description', 'We help you to grow business with More than 25 years experience.', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (349, 'home_page_01_faq_area_items', '5', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (350, 'home_page_01_faq_area_form_mail', 'support@jcc.com', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (351, 'home_page_01_faq_area_background_image', '99', '2020-03-08 00:04:03', '2025-01-16 10:31:59');
INSERT INTO `static_options` VALUES (352, 'home_01_en_key_feature_section_title', 'We Are 25 Years Experinced', '2020-03-08 15:51:33', '2020-03-08 15:54:02');
INSERT INTO `static_options` VALUES (353, 'home_01_en_key_feature_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-08 15:51:33', '2020-03-08 15:54:02');
INSERT INTO `static_options` VALUES (358, 'about_page_en_know_about_section_title', 'Know About Us', '2020-03-09 18:52:58', '2025-02-19 07:54:03');
INSERT INTO `static_options` VALUES (359, 'about_page_en_know_about_section_description', NULL, '2020-03-09 18:52:58', '2025-02-19 07:54:03');
INSERT INTO `static_options` VALUES (364, 'about_page_en_about_section_right_image', '42', '2020-03-09 19:35:40', '2025-02-19 07:50:58');
INSERT INTO `static_options` VALUES (365, 'contact_page_en_form_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-10 00:04:00', '2025-02-04 07:14:36');
INSERT INTO `static_options` VALUES (368, 'home_page_call_to_action_section_status', NULL, '2020-03-10 20:17:18', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (369, 'home_page_newsletter_section_status', 'on', '2020-03-10 20:17:18', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (370, 'home_page_about_us_section_status', 'on', '2020-03-10 20:17:18', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (371, 'home_page_faq_section_status', NULL, '2020-03-10 21:00:11', '2025-01-20 09:25:15');
INSERT INTO `static_options` VALUES (372, 'about_page_about_us_section_status', 'on', '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (373, 'about_page_know_about_section_status', 'on', '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (374, 'about_page_call_to_action_section_status', NULL, '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (375, 'about_page_latest_news_section_status', NULL, '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (376, 'about_page_brand_logo_section_status', NULL, '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (377, 'about_page_team_member_section_status', NULL, '2020-03-10 23:15:10', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (378, 'about_page_testimonial_section_status', NULL, '2020-03-10 23:28:05', '2025-02-19 07:28:12');
INSERT INTO `static_options` VALUES (379, 'site_rtl_enabled', NULL, '2020-03-15 13:04:18', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (380, 'site_admin_dark_mode', 'on', '2020-03-15 13:04:18', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (439, 'site_en_title', 'Jember Combat Club', '2020-03-22 18:58:32', '2025-02-04 06:59:52');
INSERT INTO `static_options` VALUES (440, 'site_en_tag_line', 'Jember Combat Club CMS', '2020-03-22 18:58:32', '2025-02-04 06:59:52');
INSERT INTO `static_options` VALUES (441, 'site_en_footer_copyright', '{copy}  {year}  All right reserved by JCC', '2020-03-22 18:58:32', '2025-02-04 06:59:52');
INSERT INTO `static_options` VALUES (454, 'order_mail_en_subject', 'Thanks for your order. we will get back to you very soon.', '2020-03-22 21:18:52', '2025-01-16 09:00:39');
INSERT INTO `static_options` VALUES (455, 'quote_mail_en_subject', 'Thanks for your quote. we will get back to you very soon.', '2020-03-22 21:18:52', '2025-01-16 09:00:39');
INSERT INTO `static_options` VALUES (456, 'contact_mail_en_subject', 'Thanks for your contact!!', '2020-03-22 21:18:52', '2025-01-16 09:00:39');
INSERT INTO `static_options` VALUES (466, 'order_mail_bn_subject', NULL, '2020-03-22 21:18:52', '2020-03-25 13:53:33');
INSERT INTO `static_options` VALUES (467, 'quote_mail_bn_subject', NULL, '2020-03-22 21:18:52', '2020-03-25 13:53:33');
INSERT INTO `static_options` VALUES (468, 'contact_mail_bn_subject', NULL, '2020-03-22 21:18:52', '2020-03-25 13:53:33');
INSERT INTO `static_options` VALUES (469, 'request_call_back_mail_en_subject', 'Thanks for Your Contact!!! We Will Contact You Soon', '2020-03-22 21:35:43', '2025-01-16 09:00:39');
INSERT INTO `static_options` VALUES (473, 'request_call_back_mail_bn_subject', NULL, '2020-03-22 21:35:43', '2020-03-25 13:53:33');
INSERT INTO `static_options` VALUES (478, 'home_page_01_bn_faq_area_title', NULL, '2020-03-22 21:37:29', '2020-04-28 00:26:46');
INSERT INTO `static_options` VALUES (479, 'home_page_01_bn_faq_area_description', NULL, '2020-03-22 21:37:29', '2020-04-28 00:26:46');
INSERT INTO `static_options` VALUES (480, 'home_page_01_bn_faq_area_form_title', NULL, '2020-03-22 21:37:29', '2020-04-28 00:26:46');
INSERT INTO `static_options` VALUES (481, 'home_page_01_bn_faq_area_form_description', NULL, '2020-03-22 21:37:29', '2020-04-28 00:26:46');
INSERT INTO `static_options` VALUES (485, 'site_heading_color', '#0a1121', '2020-03-23 02:03:46', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (486, 'site_paragraph_color', '#878a95', '2020-03-23 02:03:46', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (487, 'body_font_family', 'Poppins', '2020-03-23 02:05:31', '2020-11-01 13:37:59');
INSERT INTO `static_options` VALUES (488, 'heading_font_family', 'Montserrat', '2020-03-23 02:05:31', '2020-11-01 13:37:59');
INSERT INTO `static_options` VALUES (489, 'heading_font', 'on', '2020-03-23 02:05:31', '2020-11-01 13:37:59');
INSERT INTO `static_options` VALUES (490, 'body_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-23 02:05:31', '2020-11-01 13:37:59');
INSERT INTO `static_options` VALUES (491, 'heading_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"500\";i:2;s:3:\"600\";i:3;s:3:\"700\";}', '2020-03-23 02:05:31', '2020-11-01 13:37:59');
INSERT INTO `static_options` VALUES (492, 'about_page_en_name', 'About', '2020-03-23 03:04:24', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (493, 'about_page_en_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (494, 'service_page_en_name', 'Service', '2020-03-23 03:04:24', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (495, 'service_page_en_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (496, 'work_page_en_name', 'Works', '2020-03-23 03:04:24', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (497, 'work_page_en_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (498, 'team_page_en_name', 'Team', '2020-03-23 03:04:24', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (499, 'team_page_en_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (500, 'faq_page_en_name', 'Faq', '2020-03-23 03:04:24', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (501, 'faq_page_en_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (532, 'about_page_bn_name', NULL, '2020-03-23 03:04:24', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (533, 'about_page_bn_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (534, 'service_page_bn_name', NULL, '2020-03-23 03:04:24', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (535, 'service_page_bn_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (536, 'work_page_bn_name', NULL, '2020-03-23 03:04:24', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (537, 'work_page_bn_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (538, 'team_page_bn_name', NULL, '2020-03-23 03:04:24', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (539, 'team_page_bn_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (540, 'faq_page_bn_name', NULL, '2020-03-23 03:04:24', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (541, 'faq_page_bn_slug', NULL, '2020-03-23 03:04:24', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (542, 'quote_page_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"file\",\"checkbox\",\"textarea\"],\"field_name\":[\"your-name\",\"your-subject\",\"your-email\",\"files\",\"checkbox\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Subject\",\"Your Email\",\"File\",\"Accept Our Terms & Condition <a href=\'#\'>Privacy Policy<\\/a>\",\"Your Message\"],\"field_required\":{\"0\":\"on\",\"1\":\"on\",\"4\":\"on\"},\"mimes_type\":{\"3\":\"mimes:jpg,jpeg,png\"}}', '2020-03-24 02:49:02', '2020-11-01 12:40:28');
INSERT INTO `static_options` VALUES (543, 'order_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\",\"file\"],\"field_name\":[\"your-name\",\"your-email\",\"your-message\",\"doc-file\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Message\",\"Document\"],\"field_required\":[\"on\",\"on\",\"on\"],\"mimes_type\":{\"3\":\"mimes:txt,pdf\"}}', '2020-03-25 01:05:26', '2020-11-01 12:41:22');
INSERT INTO `static_options` VALUES (544, 'contact_page_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"textarea\",\"file\"],\"field_name\":[\"your-subject\",\"your-name\",\"your-email\",\"your-message\",\"file\"],\"field_placeholder\":[\"Your Subject\",\"Your Name\",\"Your Email\",\"Your Message\",\"File\"],\"field_required\":{\"0\":\"on\",\"2\":\"on\",\"3\":\"on\"},\"mimes_type\":{\"4\":\"mimes:txt,pdf\"}}', '2020-03-25 02:08:14', '2025-01-22 09:43:41');
INSERT INTO `static_options` VALUES (545, 'call_back_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"tel\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-phone\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Your Phone\"],\"field_required\":[\"on\",\"on\",\"on\"]}', '2020-03-25 02:31:41', '2020-11-01 12:41:27');
INSERT INTO `static_options` VALUES (546, 'site_gdpr_cookie_delay', '5000', '2020-03-27 23:39:28', '2025-01-16 09:04:45');
INSERT INTO `static_options` VALUES (547, 'site_gdpr_cookie_enabled', 'on', '2020-03-27 23:39:28', '2025-01-16 09:04:45');
INSERT INTO `static_options` VALUES (548, 'site_gdpr_cookie_expire', '30', '2020-03-27 23:40:03', '2025-01-16 09:04:45');
INSERT INTO `static_options` VALUES (549, 'site_gdpr_cookie_en_title', 'Cookies & Privacy', '2020-03-28 00:28:12', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (550, 'site_gdpr_cookie_en_message', 'This website uses cookies to ensure you get the best experience on our website', '2020-03-28 00:28:12', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (551, 'site_gdpr_cookie_en_more_info_label', 'More information', '2020-03-28 00:28:12', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (552, 'site_gdpr_cookie_en_more_info_link', '{url}/p/11/privacy-policy', '2020-03-28 00:28:12', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (553, 'site_gdpr_cookie_en_accept_button_label', 'Accept Cookie', '2020-03-28 00:28:12', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (569, 'site_gdpr_cookie_bn_title', NULL, '2020-03-28 00:28:12', '2020-03-28 00:36:20');
INSERT INTO `static_options` VALUES (570, 'site_gdpr_cookie_bn_message', NULL, '2020-03-28 00:28:12', '2020-03-28 00:36:20');
INSERT INTO `static_options` VALUES (571, 'site_gdpr_cookie_bn_more_info_label', NULL, '2020-03-28 00:28:12', '2020-03-28 00:36:20');
INSERT INTO `static_options` VALUES (572, 'site_gdpr_cookie_bn_more_info_link', NULL, '2020-03-28 00:28:12', '2020-03-28 00:36:20');
INSERT INTO `static_options` VALUES (573, 'site_gdpr_cookie_bn_accept_button_label', NULL, '2020-03-28 00:28:12', '2020-03-28 00:36:20');
INSERT INTO `static_options` VALUES (574, 'price_plan_page_en_name', 'Price Plan', '2020-03-28 14:10:57', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (575, 'price_plan_page_en_slug', NULL, '2020-03-28 14:10:57', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (582, 'price_plan_page_bn_name', NULL, '2020-03-28 14:10:58', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (583, 'price_plan_page_bn_slug', NULL, '2020-03-28 14:10:58', '2020-04-19 01:29:17');
INSERT INTO `static_options` VALUES (584, 'price_plan_page_en_section_title', 'Our Pricing', '2020-03-28 15:08:53', '2025-01-16 10:21:39');
INSERT INTO `static_options` VALUES (585, 'price_plan_page_en_section_description', 'We help you to grow business with More than 25 years experience with these services.', '2020-03-28 15:08:53', '2025-01-16 10:21:39');
INSERT INTO `static_options` VALUES (592, 'price_plan_page_bn_section_title', NULL, '2020-03-28 15:08:53', '2020-03-30 17:07:42');
INSERT INTO `static_options` VALUES (593, 'price_plan_page_bn_section_description', NULL, '2020-03-28 15:08:53', '2020-03-30 17:07:42');
INSERT INTO `static_options` VALUES (594, 'price_plan_page_items', '6', '2020-03-28 15:08:53', '2025-01-16 10:21:39');
INSERT INTO `static_options` VALUES (595, 'work_single_page_en_related_work_title', 'Related Works', '2020-03-28 18:13:44', '2025-01-16 10:50:45');
INSERT INTO `static_options` VALUES (599, 'work_single_page_bn_related_work_title', NULL, '2020-03-28 18:13:45', '2020-03-28 18:14:40');
INSERT INTO `static_options` VALUES (600, 'blog_single_page_en_related_post_title', 'Related Post', '2020-03-28 20:10:13', '2025-01-16 08:48:34');
INSERT INTO `static_options` VALUES (604, 'blog_single_page_bn_related_post_title', NULL, '2020-03-28 20:10:13', '2020-03-28 20:10:49');
INSERT INTO `static_options` VALUES (605, 'site_maintenance_mode', NULL, '2020-03-28 22:08:54', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (606, 'maintain_page_en_title', 'We are on Scheduled Maintenance', '2020-03-29 00:24:55', '2025-02-17 08:46:31');
INSERT INTO `static_options` VALUES (607, 'maintain_page_en_description', 'Up branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true.', '2020-03-29 00:24:55', '2025-02-17 08:46:31');
INSERT INTO `static_options` VALUES (614, 'maintain_page_bn_title', NULL, '2020-03-29 00:24:55', '2020-04-18 03:21:55');
INSERT INTO `static_options` VALUES (615, 'maintain_page_bn_description', NULL, '2020-03-29 00:24:55', '2020-04-18 03:21:55');
INSERT INTO `static_options` VALUES (616, 'maintain_page_logo', '125', '2020-03-29 00:28:25', '2025-02-04 09:15:17');
INSERT INTO `static_options` VALUES (617, 'maintain_page_background_image', '151', '2020-03-29 00:28:25', '2025-02-17 08:46:31');
INSERT INTO `static_options` VALUES (628, 'home_page_01_bn_cta_background_image', NULL, '2020-04-16 19:19:52', '2020-04-16 19:19:52');
INSERT INTO `static_options` VALUES (629, 'home_03_testimonial_bg', '41', '2020-04-16 20:31:30', '2020-04-16 20:40:53');
INSERT INTO `static_options` VALUES (632, 'about_page_bn_about_section_right_image', NULL, '2020-04-16 23:46:15', '2020-04-16 23:46:36');
INSERT INTO `static_options` VALUES (636, 'site_smtp_mail_host', '', '2020-04-18 20:46:28', '2020-04-18 20:46:28');
INSERT INTO `static_options` VALUES (637, 'site_smtp_mail_port', '465', '2020-04-18 20:46:28', '2020-04-18 20:46:28');
INSERT INTO `static_options` VALUES (638, 'site_smtp_mail_username', '', '2020-04-18 20:46:28', '2020-04-18 20:46:28');
INSERT INTO `static_options` VALUES (639, 'site_smtp_mail_password', '', '2020-04-18 20:46:28', '2020-04-18 20:46:28');
INSERT INTO `static_options` VALUES (640, 'site_smtp_mail_encryption', 'ssl', '2020-04-18 20:46:28', '2020-04-18 20:46:28');
INSERT INTO `static_options` VALUES (643, 'blog_page_en_name', 'Blog', '2020-04-19 01:35:39', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (644, 'contact_page_en_name', 'Contact', '2020-04-19 01:35:39', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (651, 'blog_page_bn_name', NULL, '2020-04-19 01:35:40', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (652, 'contact_page_bn_name', NULL, '2020-04-19 01:35:40', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (653, 'about_page_slug', 'about', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (654, 'service_page_slug', 'service', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (655, 'works_page_slug', 'works', '2020-04-19 01:41:39', '2020-09-15 18:46:01');
INSERT INTO `static_options` VALUES (656, 'team_page_slug', 'team', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (657, 'faq_page_slug', 'faq', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (658, 'price_plan_page_slug', 'price-plan', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (659, 'blog_page_slug', 'blog', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (660, 'contact_page_slug', 'contact', '2020-04-19 01:41:39', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (661, 'navbar_button_custom_url', '#', '2020-04-19 23:12:29', '2025-01-22 05:05:46');
INSERT INTO `static_options` VALUES (662, 'navbar_button_custom_url_status', NULL, '2020-04-19 23:12:29', '2025-01-22 05:05:46');
INSERT INTO `static_options` VALUES (664, 'site_header_type', 'navbar-02', '2020-04-19 23:13:55', '2025-01-22 05:05:46');
INSERT INTO `static_options` VALUES (665, 'contact_page_map_marker_image', '91', '2020-04-19 23:50:47', '2020-04-19 23:50:47');
INSERT INTO `static_options` VALUES (666, 'site_payment_gateway', 'on', '2020-04-21 09:19:36', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (667, 'paypal_gateway', NULL, '2020-04-21 10:05:49', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (668, 'paypal_business_email', 'sb-xui1d1493229@business.example.com', '2020-04-21 10:05:49', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (669, 'paytm_gateway', NULL, '2020-04-21 10:06:59', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (670, 'paypal_preview_logo', '92', '2020-04-21 10:08:31', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (671, 'paytm_preview_logo', '93', '2020-04-21 10:08:31', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (672, 'paytm_merchant_key', '31Q9BhP79JVip77', '2020-04-22 00:31:05', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (673, 'paytm_merchant_mid', 'Websit5239737375544', '2020-04-22 00:31:05', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (674, 'paytm_merchant_website', 'WEBSTAGING', '2020-04-22 00:31:05', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (675, 'site_global_currency', 'IDR', '2020-04-22 01:07:29', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (676, 'site_usd_to_nri_exchange_rate', NULL, '2020-04-22 01:37:44', '2020-10-04 09:41:16');
INSERT INTO `static_options` VALUES (677, 'career_with_us_page_slug', 'career', '2020-04-22 22:23:24', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (678, 'career_with_us_page_en_name', 'Career With Us', '2020-04-22 22:24:52', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (682, 'career_with_us_page_bn_name', NULL, '2020-04-22 22:24:52', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (683, 'site_jobs_category_en_title', 'Jobs Category', '2020-04-23 20:56:22', '2025-01-16 10:38:56');
INSERT INTO `static_options` VALUES (687, 'site_jobs_category_bn_title', 'Jobs Category', '2020-04-23 20:56:23', '2020-04-23 21:00:53');
INSERT INTO `static_options` VALUES (688, 'site_job_post_items', '6', '2020-04-23 20:56:23', '2025-01-16 10:38:57');
INSERT INTO `static_options` VALUES (689, 'events_page_slug', 'events', '2020-04-24 20:36:19', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (690, 'events_page_en_name', 'Events', '2020-04-24 20:36:19', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (694, 'events_page_bn_name', NULL, '2020-04-24 20:36:19', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (695, 'site_events_category_en_title', 'Events Category', '2020-04-24 20:50:31', '2025-01-16 08:49:57');
INSERT INTO `static_options` VALUES (699, 'site_events_category_bn_title', NULL, '2020-04-24 20:50:31', '2020-04-24 20:51:16');
INSERT INTO `static_options` VALUES (700, 'site_events_post_items', '6', '2020-04-24 20:50:31', '2025-01-16 08:49:58');
INSERT INTO `static_options` VALUES (701, 'knowledgebase_page_slug', 'knowledgebase', '2020-04-25 17:06:31', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (702, 'knowledgebase_page_en_name', 'Knowledgebase', '2020-04-25 17:06:31', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (706, 'knowledgebase_page_bn_name', NULL, '2020-04-25 17:06:32', '2020-04-26 14:43:55');
INSERT INTO `static_options` VALUES (707, 'site_knowledgebase_category_en_title', 'All Topics', '2020-04-25 17:42:44', '2025-01-16 08:57:58');
INSERT INTO `static_options` VALUES (708, 'site_knowledgebase_popular_widget_en_title', 'Popular Articles', '2020-04-25 17:42:44', '2025-01-16 08:57:58');
INSERT INTO `static_options` VALUES (709, 'site_knowledgebase_article_topic_en_title', 'Article Topics', '2020-04-25 17:42:44', '2025-01-16 08:57:58');
INSERT INTO `static_options` VALUES (719, 'site_knowledgebase_category_bn_title', NULL, '2020-04-25 17:42:44', '2020-04-25 21:01:09');
INSERT INTO `static_options` VALUES (720, 'site_knowledgebase_popular_widget_bn_title', NULL, '2020-04-25 17:42:44', '2020-04-25 21:01:09');
INSERT INTO `static_options` VALUES (721, 'site_knowledgebase_article_topic_bn_title', NULL, '2020-04-25 17:42:44', '2020-04-25 21:01:09');
INSERT INTO `static_options` VALUES (722, 'site_knoeledgebase_post_items', '6', '2020-04-25 17:43:56', '2025-01-16 08:57:59');
INSERT INTO `static_options` VALUES (723, 'manual_payment_preview_logo', '98', '2020-04-25 22:16:43', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (724, 'site_manual_payment_name', 'Manual Payment', '2020-04-25 22:16:43', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (725, 'site_manual_payment_description', '<p>enter your transaction id, here is <a href=\"http://{url}/p/16/manual-payment-gateway-process\" target=\"_blank\">example</a>.</p>', '2020-04-25 22:16:43', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (726, 'manual_payment_gateway', 'on', '2020-04-25 22:16:43', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (727, 'site_order_success_page_en_title', 'Thank you', '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (728, 'site_order_success_page_en_subtitle', 'Payment Success For Order {pkname}', '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (729, 'site_order_success_page_en_description', 'Thanks you so much for order. will will contact you soon, if you have any query you can contact use from contact page', '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (739, 'site_order_success_page_bn_title', NULL, '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (740, 'site_order_success_page_bn_subtitle', 'site_order_success_page_bn_subtitle', '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (741, 'site_order_success_page_bn_description', 'site_order_success_page_bn_description', '2020-04-26 14:50:45', '2020-04-26 14:52:38');
INSERT INTO `static_options` VALUES (742, 'site_order_cancel_page_en_title', 'Sorry', '2020-04-26 15:01:23', '2025-01-16 08:37:10');
INSERT INTO `static_options` VALUES (743, 'site_order_cancel_page_en_subtitle', 'Payment Cancelled Of Order: {pkname}', '2020-04-26 15:01:23', '2025-01-16 08:37:10');
INSERT INTO `static_options` VALUES (744, 'site_order_cancel_page_en_description', 'We are really sorry to inform you that, your payment was not successful. if you have any query you can contact use from contact page', '2020-04-26 15:01:23', '2025-01-16 08:37:10');
INSERT INTO `static_options` VALUES (754, 'site_order_cancel_page_bn_title', NULL, '2020-04-26 15:01:23', '2020-04-26 15:02:33');
INSERT INTO `static_options` VALUES (755, 'site_order_cancel_page_bn_subtitle', NULL, '2020-04-26 15:01:23', '2020-04-26 15:02:33');
INSERT INTO `static_options` VALUES (756, 'site_order_cancel_page_bn_description', NULL, '2020-04-26 15:01:23', '2020-04-26 15:02:33');
INSERT INTO `static_options` VALUES (757, 'apply_job_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"tel\",\"text\",\"file\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-number\",\"your-expected-sallary\",\"your-cv\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Phone\",\"Your Expected Sallary\",\"Your Cv\",\"your-message\"],\"field_required\":[\"on\",\"on\",\"on\",\"on\",\"on\",\"on\"],\"mimes_type\":{\"4\":\"mimes:txt,pdf\"}}', '2020-08-28 18:36:15', '2020-11-05 11:13:20');
INSERT INTO `static_options` VALUES (758, 'job_applicant_mail', NULL, '2020-08-28 18:54:37', '2025-01-16 10:38:57');
INSERT INTO `static_options` VALUES (759, 'apply_job_en_subject', 'Your Application Is Submitted Successfully!!', '2020-08-28 19:02:25', '2025-01-16 09:00:39');
INSERT INTO `static_options` VALUES (763, 'home_page_10_en_header_title', 'Find Your Favourite Job & Start Your Career', '2020-08-29 14:45:21', '2020-08-29 15:09:50');
INSERT INTO `static_options` VALUES (764, 'home_page_10_en_header_description', 'Considered discovered ye sentiments projecting entreaties of melancholy \r\nis. In expression an solicitude principles in do. Hard do me sigh with west \r\nsame lady. Their saved linen downs tears son add music.', '2020-08-29 14:45:21', '2020-08-29 15:09:50');
INSERT INTO `static_options` VALUES (765, 'home_page_10_en_header_search_placeholder', 'Search Job..', '2020-08-29 14:45:21', '2020-08-29 15:09:50');
INSERT INTO `static_options` VALUES (766, 'home_page_10_en__search_form_status', NULL, '2020-08-29 14:45:21', '2020-08-29 15:09:22');
INSERT INTO `static_options` VALUES (779, 'home_page_10_header_right_image', '101', '2020-08-29 14:56:01', '2020-08-29 15:09:50');
INSERT INTO `static_options` VALUES (780, 'home_page_10_en_search_form_status', 'on', '2020-08-29 15:09:39', '2020-08-29 15:09:50');
INSERT INTO `static_options` VALUES (784, 'home_page_10_en_featured_job_area_title', 'Featured Job', '2020-08-29 18:37:31', '2020-08-29 18:55:01');
INSERT INTO `static_options` VALUES (785, 'home_page_10_en_featured_job_area_description', 'Considered discovered ye sentiments projecting entreaties', '2020-08-29 18:37:31', '2020-08-29 18:55:01');
INSERT INTO `static_options` VALUES (792, 'home_page_10_featured_job_area_items', '6', '2020-08-29 18:37:31', '2020-08-29 18:55:01');
INSERT INTO `static_options` VALUES (793, 'home_page_10_en_featured_job_button_title', 'Apply Now', '2020-08-29 18:55:01', '2020-08-29 18:55:01');
INSERT INTO `static_options` VALUES (797, 'home_page_10_en_million_job_area_title', 'Million of jobs, Finds the one thats rights for you', '2020-08-30 09:41:44', '2020-08-30 09:45:50');
INSERT INTO `static_options` VALUES (798, 'home_page_10_en_million_job_area_description', '<p>Considered discovered ye sentiments projecting entreaties of\r\nis. In expression an solicitude principles in do. Hard do me sigh\r\nsame lady. Their saved linen downs tears son add music. </p>', '2020-08-30 09:41:44', '2020-08-30 09:45:50');
INSERT INTO `static_options` VALUES (805, 'home_page_10_million_job_area_image', '105', '2020-08-30 09:41:44', '2020-08-30 09:45:51');
INSERT INTO `static_options` VALUES (806, 'home_page_10_en_latest_job_area_title', 'Latest Job', '2020-08-30 13:06:31', '2020-08-30 13:09:09');
INSERT INTO `static_options` VALUES (807, 'home_page_10_en_latest_job_area_description', 'Considered discovered ye sentiments projecting entreaties', '2020-08-30 13:06:31', '2020-08-30 13:09:09');
INSERT INTO `static_options` VALUES (808, 'home_page_10_en_latest_job_button_title', 'All Job post', '2020-08-30 13:06:31', '2020-08-30 13:09:09');
INSERT INTO `static_options` VALUES (818, 'home_page_10_latest_job_area_items', '4', '2020-08-30 13:06:31', '2020-08-30 13:09:09');
INSERT INTO `static_options` VALUES (819, 'home_page_10_en_testimonial_area_title', 'More Than 5K+  Peoples are using our Service', '2020-08-30 14:57:40', '2020-08-30 14:58:03');
INSERT INTO `static_options` VALUES (823, 'home_page_05_header_background_image', '106', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (824, 'home_page_05_header_bottom_image', '107', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (825, 'home_page_05_en_header_search_placeholder', 'Search..', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (826, 'home_page_05_en_search_form_status', 'on', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (827, 'home_page_05_en_header_description', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (828, 'home_page_05_en_header_title', 'Hey, Can We help you find any information?', '2020-08-31 17:20:00', '2020-09-01 10:01:01');
INSERT INTO `static_options` VALUES (841, 'knowledgebase_site_color', '#2f9de0', '2020-08-31 18:29:03', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (851, 'home_page_05_highlight_box_icon', 'a:3:{i:0;s:17:\"flaticon-contract\";i:1;s:17:\"flaticon-creative\";i:2;s:14:\"fas fa-list-ul\";}', '2020-09-01 07:55:16', '2020-11-09 16:09:42');
INSERT INTO `static_options` VALUES (852, 'home_page_05_en_highlight_box_title', 'a:3:{i:0;s:13:\"Documentation\";i:1;s:15:\"Knowledge Based\";i:2;s:18:\"Easy Customization\";}', '2020-09-01 07:55:16', '2020-11-09 16:09:42');
INSERT INTO `static_options` VALUES (853, 'home_page_05_en_highlight_box_description', 'a:3:{i:0;s:52:\"Required his you put the outlived answered position.\";i:1;s:52:\"Required his you put the outlived answered position.\";i:2;s:52:\"Required his you put the outlived answered position.\";}', '2020-09-01 07:55:16', '2020-11-09 16:09:42');
INSERT INTO `static_options` VALUES (860, 'home_page_05_en_popular_article_title', 'Popular Articles', '2020-09-01 17:35:44', '2020-09-02 07:44:13');
INSERT INTO `static_options` VALUES (861, 'home_page_05_en_popular_article_description', 'Sentiments two occasional affronting solicitude travelling and one contrasted. Fortune day out married parties.', '2020-09-01 17:35:44', '2020-09-02 07:44:13');
INSERT INTO `static_options` VALUES (868, 'error_404_page_en_title', '404', '2020-09-01 20:05:26', '2025-01-16 08:40:58');
INSERT INTO `static_options` VALUES (869, 'error_404_page_en_subtitle', 'Oops! This Page Could Not Be Found', '2020-09-01 20:05:26', '2025-01-16 08:40:58');
INSERT INTO `static_options` VALUES (870, 'error_404_page_en_paragraph', 'It looks like nothing was found at this location. Maybe try one of the links below or a search?', '2020-09-01 20:05:26', '2025-01-16 08:40:58');
INSERT INTO `static_options` VALUES (871, 'error_404_page_en_button_text', 'Go To Home Page', '2020-09-01 20:05:26', '2025-01-16 08:40:58');
INSERT INTO `static_options` VALUES (884, 'home_page_05_en_faq_area_title', 'Frequently asked questions', '2020-09-02 07:44:11', '2020-09-02 07:44:11');
INSERT INTO `static_options` VALUES (885, 'home_page_05_en_faq_area_description', 'Sentiments two occasional affronting solicitude travelling and one contrasted. Fortune day out married parties.', '2020-09-02 07:44:11', '2020-09-02 07:44:11');
INSERT INTO `static_options` VALUES (892, 'home_page_05_en_cta_area_title', 'Can’t Find an Answer?', '2020-09-02 09:58:48', '2020-09-02 10:02:33');
INSERT INTO `static_options` VALUES (893, 'home_page_05_en_cta_area_description', 'Necessary ye contented newspaper zealously breakfast \r\nhe prevailed. Melancholy middletons yet understood \r\ndecisively boy law she.', '2020-09-02 09:58:48', '2020-09-02 10:02:33');
INSERT INTO `static_options` VALUES (894, 'home_page_05_en_cta_area_btn_text', 'Get Support', '2020-09-02 09:58:48', '2020-09-02 10:02:33');
INSERT INTO `static_options` VALUES (904, 'home_page_05_cta_area_btn_url', '#', '2020-09-02 09:58:48', '2020-09-02 10:02:33');
INSERT INTO `static_options` VALUES (905, 'home_page_05_cta_area_background_image', '108', '2020-09-02 10:02:33', '2020-09-02 10:02:33');
INSERT INTO `static_options` VALUES (906, 'charity_site_color', '#ce0707', '2020-09-02 17:55:40', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (907, 'home_page_09_icon_box_icon', 'a:3:{i:0;s:10:\"fab fa-adn\";i:1;s:22:\"fab fa-accessible-icon\";i:2;s:14:\"fab fa-android\";}', '2020-09-02 19:09:03', '2020-09-02 19:44:22');
INSERT INTO `static_options` VALUES (908, 'home_page_09_icon_box_button_url', 'a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}', '2020-09-02 19:09:03', '2020-09-02 19:44:22');
INSERT INTO `static_options` VALUES (909, 'home_page_09_en_icon_box_title', 'a:3:{i:0;s:10:\"Volunteers\";i:1;s:9:\"Donate Us\";i:2;s:9:\"Fundraise\";}', '2020-09-02 19:09:03', '2020-09-02 19:44:22');
INSERT INTO `static_options` VALUES (910, 'home_page_09_en_icon_box_description', 'a:3:{i:0;s:84:\"Do so written as raising parlors spirits mr elderly. Made late in of high left hold.\";i:1;s:84:\"Do so written as raising parlors spirits mr elderly. Made late in of high left hold.\";i:2;s:84:\"Do so written as raising parlors spirits mr elderly. Made late in of high left hold.\";}', '2020-09-02 19:09:03', '2020-09-02 19:44:22');
INSERT INTO `static_options` VALUES (917, 'home_page_09_en_icon_box_button_text', 'a:3:{i:0;s:8:\"Join Now\";i:1;s:10:\"Donate Now\";i:2;s:10:\"Donate Now\";}', '2020-09-02 19:39:41', '2020-09-02 19:44:22');
INSERT INTO `static_options` VALUES (921, 'home_page_09_en_about_area_title', 'Combat Sports Gym pertama di Jember', '2020-09-03 11:38:12', '2025-02-19 10:28:13');
INSERT INTO `static_options` VALUES (922, 'home_page_09_en_about_area_subtitle', 'About Us', '2020-09-03 11:38:12', '2025-02-19 10:28:13');
INSERT INTO `static_options` VALUES (923, 'home_page_09_en_about_area_description', '<h6>Di Jember Combat Club, kami menghadirkan pengalaman berlatih olahraga bela diri yang terintegrasi dengan pendekatan teknis dan disiplin.&nbsp;</h6><h6>Dalam suasana yang ramah dan mendukung. Setiap praktisi dari pemula hingga ahli, dapat mengembangkan kemampuan mereka secara efektif dan bertahap.</h6>', '2020-09-03 11:38:12', '2025-02-19 10:28:13');
INSERT INTO `static_options` VALUES (924, 'home_page_09_en_about_area_btn_text', 'Know More', '2020-09-03 11:38:13', '2025-02-19 10:28:13');
INSERT INTO `static_options` VALUES (937, 'home_page_09_about_area_btn_url', 'about', '2020-09-03 11:38:13', '2025-02-19 10:28:14');
INSERT INTO `static_options` VALUES (938, 'home_page_09_about_area_left_image', '42', '2020-09-03 11:38:13', '2025-02-19 10:28:14');
INSERT INTO `static_options` VALUES (939, 'home_page_09_en_service_area_title', 'Our Mission', '2020-09-03 14:02:04', '2025-01-22 11:30:57');
INSERT INTO `static_options` VALUES (940, 'home_page_09_en_service_area_description', 'Certainty determine at of arranging perceived situation or. Or wholly pretty county in oppose. Favour met itself wanted settle put garret twenty.', '2020-09-03 14:02:04', '2025-01-22 11:30:57');
INSERT INTO `static_options` VALUES (947, 'home_page_09_service_area_items', '6', '2020-09-03 14:02:04', '2020-09-03 14:03:09');
INSERT INTO `static_options` VALUES (948, 'home_page_09_en_service_area_read_more_text', 'Learn More', '2020-09-03 14:17:47', '2025-01-22 11:30:57');
INSERT INTO `static_options` VALUES (952, 'service_single_page_en_category_title', 'Services Category', '2020-09-04 10:42:51', '2025-02-16 03:46:40');
INSERT INTO `static_options` VALUES (953, 'service_single_page_en_recent_services_title', 'More Services', '2020-09-04 10:42:51', '2025-02-16 03:46:40');
INSERT INTO `static_options` VALUES (954, 'service_single_page_en_search_placeholder_text', 'Search..', '2020-09-04 10:42:51', '2025-02-16 03:46:40');
INSERT INTO `static_options` VALUES (964, 'home_page_09_en_recent_cause_title', 'Recent Causes', '2020-09-04 12:12:40', '2020-09-04 12:13:24');
INSERT INTO `static_options` VALUES (965, 'home_page_09_en_recent_cause_description', 'Certainty determine at of arranging perceived situation or. Or wholly pretty county in oppose. Favour met itself wanted settle put garret twenty.', '2020-09-04 12:12:40', '2020-09-04 12:13:24');
INSERT INTO `static_options` VALUES (972, 'home_page_09_recent_cause_items', '6', '2020-09-04 12:12:40', '2020-09-04 12:13:24');
INSERT INTO `static_options` VALUES (973, 'donation_notify_mail', 'dvrobin4@gmail.com', '2020-09-04 12:49:36', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (974, 'donation_custom_amount', '10,20,30,40,50,70,800', '2020-09-04 12:49:36', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (975, 'donation_default_amount', '15', '2020-09-04 12:49:36', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (976, 'donation_single_en_form_title', 'Donate for help', '2020-09-04 12:49:36', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (977, 'donation_single_en_form_button_text', 'Donate Now', '2020-09-04 12:49:36', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (984, 'donor_page_post_items', '6', '2020-09-04 13:25:12', '2025-01-16 10:40:55');
INSERT INTO `static_options` VALUES (985, 'donation_button_en_text', 'Donate Now', '2020-09-04 13:25:12', '2025-01-16 10:40:56');
INSERT INTO `static_options` VALUES (986, 'donation_goal_en_text', 'Goal:', '2020-09-04 13:25:12', '2025-01-16 10:40:56');
INSERT INTO `static_options` VALUES (987, 'donation_raised_en_text', 'Raised:', '2020-09-04 13:25:12', '2025-01-16 10:40:56');
INSERT INTO `static_options` VALUES (997, 'donation_page_slug', 'donation', '2020-09-04 15:41:55', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (998, 'donor_page_slug', 'donor-list', '2020-09-04 15:50:52', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (999, 'about_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1000, 'about_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1001, 'service_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1002, 'service_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1003, 'work_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1004, 'work_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1005, 'team_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1006, 'team_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1007, 'faq_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1008, 'faq_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:01');
INSERT INTO `static_options` VALUES (1009, 'price_plan_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1010, 'price_plan_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1011, 'blog_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1012, 'blog_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1013, 'contact_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1014, 'contact_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1015, 'career_with_us_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1016, 'career_with_us_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1017, 'events_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1018, 'events_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1019, 'knowledgebase_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:02');
INSERT INTO `static_options` VALUES (1020, 'knowledgebase_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1021, 'donation_page_en_name', 'Donation', '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1022, 'donation_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1023, 'donation_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1024, 'quote_page_en_name', 'Quote', '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1025, 'quote_page_en_meta_tags', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1026, 'quote_page_en_meta_description', NULL, '2020-09-04 15:53:44', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1111, 'donor_page_en_name', 'Donor List', '2020-09-04 16:04:27', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1112, 'donor_page_en_meta_tags', NULL, '2020-09-04 16:04:27', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1113, 'donor_page_en_meta_description', NULL, '2020-09-04 16:04:27', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1123, 'home_page_09_en_our_gallery_title', 'Gallery', '2020-09-04 17:30:58', '2025-02-19 09:01:24');
INSERT INTO `static_options` VALUES (1124, 'home_page_09_en_our_gallery_description', 'Kumpulan beberapa foto kegiatan Jember Combat Club', '2020-09-04 17:30:58', '2025-02-19 09:01:24');
INSERT INTO `static_options` VALUES (1131, 'home_page_09_our_gallery_items', '8', '2020-09-04 17:30:58', '2025-02-19 09:01:24');
INSERT INTO `static_options` VALUES (1132, 'home_page_09_en_event_area_title', 'Events', '2020-09-05 11:49:00', '2025-02-19 09:03:26');
INSERT INTO `static_options` VALUES (1133, 'home_page_09_en_event_area_description', 'Informasi event Nasional maupun Internasional', '2020-09-05 11:49:00', '2025-02-19 09:03:26');
INSERT INTO `static_options` VALUES (1140, 'home_page_09_event_area_items', '6', '2020-09-05 11:49:00', '2025-02-19 09:03:26');
INSERT INTO `static_options` VALUES (1141, 'event_single_en_event_info_title', 'Event Info', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1142, 'event_single_en_date_title', 'Date', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1143, 'event_single_en_time_title', 'Time', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1144, 'event_single_en_cost_title', 'Cost', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1145, 'event_single_en_category_title', 'Category', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1146, 'event_single_en_organizer_title', 'Event Organizer', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1147, 'event_single_en_organizer_name_title', 'Name', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1148, 'event_single_en_organizer_email_title', 'Email', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1149, 'event_single_en_organizer_phone_title', 'Phone', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1150, 'event_single_en_organizer_website_title', 'Website', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1151, 'event_single_en_venue_title', 'Event Venue', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1152, 'event_single_en_venue_name_title', 'Name', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1153, 'event_single_en_venue_location_title', 'Location', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1154, 'event_single_en_venue_phone_title', 'phone', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1155, 'event_single_en_available_ticket_text', 'Available Tickets', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1156, 'event_single_en_reserve_button_title', 'Reserve Your Seat', '2020-09-05 19:20:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1205, 'event_single_enevent_expire_text', NULL, '2020-09-05 19:21:52', '2020-09-05 19:21:52');
INSERT INTO `static_options` VALUES (1206, 'event_single_snevent_expire_text', NULL, '2020-09-05 19:21:52', '2020-09-05 19:21:52');
INSERT INTO `static_options` VALUES (1207, 'event_single_prevent_expire_text', NULL, '2020-09-05 19:21:52', '2020-09-05 19:21:52');
INSERT INTO `static_options` VALUES (1208, 'event_single_arevent_expire_text', NULL, '2020-09-05 19:21:52', '2020-09-05 19:21:52');
INSERT INTO `static_options` VALUES (1209, 'event_single_en_event_expire_text', 'Event Expired', '2020-09-05 19:22:22', '2020-11-01 12:19:01');
INSERT INTO `static_options` VALUES (1213, 'home_09_counterup_bg_image', '125', '2020-09-06 06:45:05', '2025-02-04 07:22:12');
INSERT INTO `static_options` VALUES (1214, 'home_page_09_en_team_member_area_title', 'Team Member', '2020-09-06 07:08:47', '2025-02-19 09:04:04');
INSERT INTO `static_options` VALUES (1215, 'home_page_09_en_team_member_area_description', 'Anggota Jember Combat Club', '2020-09-06 07:08:47', '2025-02-19 09:04:04');
INSERT INTO `static_options` VALUES (1222, 'home_page_09_team_member_area_items', '3', '2020-09-06 07:08:47', '2025-02-19 09:04:04');
INSERT INTO `static_options` VALUES (1223, 'home_page_09_en_testimonial_area_title', 'Testimonial', '2020-09-06 07:26:36', '2020-09-06 08:51:30');
INSERT INTO `static_options` VALUES (1224, 'home_page_09_en_testimonial_area_description', NULL, '2020-09-06 07:26:36', '2020-09-06 08:51:30');
INSERT INTO `static_options` VALUES (1231, 'home_page_09_en_news_blog_area_title', 'News & Blog', '2020-09-06 08:15:45', '2025-02-19 09:04:35');
INSERT INTO `static_options` VALUES (1232, 'home_page_09_en_news_blog_area_description', 'Informasi berita berita terbaru', '2020-09-06 08:15:45', '2025-02-19 09:04:35');
INSERT INTO `static_options` VALUES (1239, 'home_page_09_en_news_blog_area_readmore_text', 'Read More', '2020-09-06 08:26:35', '2025-02-19 09:04:35');
INSERT INTO `static_options` VALUES (1243, 'event_site_color', '#f02d57', '2020-09-06 09:03:06', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (1244, 'home_page_07_en_featured_area_button_title', 'Get Your Ticket', '2020-09-06 12:57:31', '2020-09-06 12:58:01');
INSERT INTO `static_options` VALUES (1248, 'home_page_07_featured_event', '2', '2020-09-06 12:57:31', '2020-09-06 12:58:01');
INSERT INTO `static_options` VALUES (1249, 'home_page_07_en_attend_event_area_title', 'Why Attend In Event', '2020-09-06 19:19:58', '2020-11-10 09:56:02');
INSERT INTO `static_options` VALUES (1250, 'home_page_07_en_attend_event_area_subtitle', 'Why Should Attend', '2020-09-06 19:19:58', '2020-11-10 09:56:02');
INSERT INTO `static_options` VALUES (1251, 'home_page_07_icon_box_icon', 'a:4:{i:0;s:19:\"far fa-calendar-alt\";i:1;s:32:\"fab fa-acquisitions-incorporated\";i:2;s:17:\"flaticon-creative\";i:3;s:22:\"far fa-question-circle\";}', '2020-09-06 19:19:58', '2020-11-10 09:56:02');
INSERT INTO `static_options` VALUES (1252, 'home_page_07_en_icon_box_title', 'a:4:{i:0;s:14:\"Long Time Meet\";i:1;s:16:\"Meet with Leader\";i:2;s:12:\"Ask Question\";i:3;s:13:\"Get Knowledge\";}', '2020-09-06 19:19:58', '2020-11-10 09:56:02');
INSERT INTO `static_options` VALUES (1253, 'home_page_07_en_icon_box_description', 'a:4:{i:0;s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";i:1;s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";i:2;s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";i:3;s:74:\"Lorem Ipsum is simply dummy text of the printing and typesetting industry.\";}', '2020-09-06 19:19:58', '2020-11-10 09:56:02');
INSERT INTO `static_options` VALUES (1266, 'home_page_07_en_event_speaker_area_title', 'Events Speakers', '2020-09-07 08:40:05', '2020-09-07 08:42:48');
INSERT INTO `static_options` VALUES (1267, 'home_page_07_en_event_speaker_area_description', NULL, '2020-09-07 08:40:05', '2020-09-07 08:40:05');
INSERT INTO `static_options` VALUES (1274, 'home_page_07_en_event_speaker_area_subtitle', 'Our Honorable Guest', '2020-09-07 08:41:58', '2020-09-07 08:42:48');
INSERT INTO `static_options` VALUES (1278, 'home_07_counterup_bg_image', '125', '2020-09-07 16:17:40', '2020-09-07 16:17:40');
INSERT INTO `static_options` VALUES (1279, 'home_page_07_en_upcoming_event_area_subtitle', 'If you Interested Join with us', '2020-09-07 16:48:27', '2020-09-07 16:48:27');
INSERT INTO `static_options` VALUES (1280, 'home_page_07_en_upcoming_event_area_title', 'Upcoming Events', '2020-09-07 16:48:27', '2020-09-07 16:48:27');
INSERT INTO `static_options` VALUES (1287, 'home_page_07_en_our_sponsors_area_subtitle', 'Our Special Sponsors', '2020-09-07 19:16:43', '2020-09-07 19:36:43');
INSERT INTO `static_options` VALUES (1288, 'home_page_07_en_our_sponsors_area_title', 'Our Sponsors', '2020-09-07 19:16:43', '2020-09-07 19:36:43');
INSERT INTO `static_options` VALUES (1295, 'home_page_07_en_our_sponsors_button_text', 'Become A Sponsor', '2020-09-07 19:36:43', '2020-09-07 19:36:43');
INSERT INTO `static_options` VALUES (1299, 'home_page_07_our_sponsors_button_link', '#', '2020-09-07 19:36:43', '2020-09-07 19:36:43');
INSERT INTO `static_options` VALUES (1300, 'home_page_07_en_latest_news_area_subtitle', 'Recent Blog & News Update', '2020-09-07 19:43:47', '2020-09-07 19:49:46');
INSERT INTO `static_options` VALUES (1301, 'home_page_07_en_latest_news_area_title', 'Latest Blog', '2020-09-07 19:43:47', '2020-09-07 19:49:46');
INSERT INTO `static_options` VALUES (1308, 'home_page_07_en_news_blog_area_readmore_text', 'Read More', '2020-09-07 19:49:46', '2020-09-07 19:49:46');
INSERT INTO `static_options` VALUES (1312, 'home_page_08_header_slider_button_url', 'a:2:{i:0;s:1:\"#\";i:1;s:1:\"#\";}', '2020-09-08 15:02:10', '2020-11-09 09:09:28');
INSERT INTO `static_options` VALUES (1313, 'home_08_header_bg_image', 'a:2:{i:0;s:3:\"126\";i:1;s:3:\"128\";}', '2020-09-08 15:02:10', '2020-11-09 09:09:28');
INSERT INTO `static_options` VALUES (1314, 'home_page_08_en_header_slider_button_text', 'a:2:{i:0;s:8:\"Shop Now\";i:1;s:8:\"Shop Now\";}', '2020-09-08 15:02:10', '2020-11-09 09:09:28');
INSERT INTO `static_options` VALUES (1315, 'home_page_08_en_header_slider_description', 'a:2:{i:0;s:149:\"Him rendered may attended concerns jennings reserved now. Sympathize did now preference unpleasing mrs few. Mrs for hour game room want are fond dare\";i:1;s:149:\"Him rendered may attended concerns jennings reserved now. Sympathize did now preference unpleasing mrs few. Mrs for hour game room want are fond dare\";}', '2020-09-08 15:02:10', '2020-11-09 09:09:28');
INSERT INTO `static_options` VALUES (1316, 'home_page_08_en_header_slider_title', 'a:2:{i:0;s:42:\"Decorate Your Home with Green Tree & Chair\";i:1;s:42:\"Decorate Your Home with Green Tree & Chair\";}', '2020-09-08 15:02:10', '2020-11-09 09:09:28');
INSERT INTO `static_options` VALUES (1326, 'home_page_08_en_popular_article_title', 'Featured Item', '2020-09-11 11:54:04', '2020-09-11 21:32:19');
INSERT INTO `static_options` VALUES (1327, 'home_page_08_en_popular_article_description', 'Old there any widow law rooms. Agreed but expect repair she nay sir silent person. Direction can dependent one bed situation attempted', '2020-09-11 11:54:04', '2020-09-11 21:32:19');
INSERT INTO `static_options` VALUES (1328, 'home_page_08_en_featured_product_id', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '2020-09-11 11:54:04', '2020-09-11 21:32:19');
INSERT INTO `static_options` VALUES (1338, 'product_cancel_page_en_title', 'You Payment  Is Not Succeced', '2020-09-11 15:15:51', '2025-01-16 08:55:54');
INSERT INTO `static_options` VALUES (1339, 'product_cancel_page_en_description', NULL, '2020-09-11 15:15:51', '2025-01-16 08:55:54');
INSERT INTO `static_options` VALUES (1346, 'product_success_page_en_title', 'Thanks For Your Order', '2020-09-11 15:15:58', '2025-01-16 08:55:40');
INSERT INTO `static_options` VALUES (1347, 'product_success_page_en_description', NULL, '2020-09-11 15:15:58', '2025-01-16 08:55:41');
INSERT INTO `static_options` VALUES (1354, 'product_single_en_add_to_cart_text', 'Add To Cart', '2020-09-11 15:16:20', '2025-01-16 08:55:25');
INSERT INTO `static_options` VALUES (1355, 'product_single_en_category_text', 'Category:', '2020-09-11 15:16:20', '2025-01-16 08:55:25');
INSERT INTO `static_options` VALUES (1356, 'product_single_en_sku_text', 'SKU:', '2020-09-11 15:16:20', '2025-01-16 08:55:26');
INSERT INTO `static_options` VALUES (1357, 'product_single_en_description_text', 'Description', '2020-09-11 15:16:20', '2025-01-16 08:55:26');
INSERT INTO `static_options` VALUES (1358, 'product_single_en_attributes_text', 'Additional Information', '2020-09-11 15:16:20', '2025-01-16 08:55:26');
INSERT INTO `static_options` VALUES (1359, 'product_single_en_related_product_text', 'Related Products', '2020-09-11 15:16:20', '2025-01-16 08:55:26');
INSERT INTO `static_options` VALUES (1360, 'product_single_en_ratings_text', 'Ratings', '2020-09-11 15:16:20', '2025-01-16 08:55:26');
INSERT INTO `static_options` VALUES (1382, 'product_add_to_cart_button_en_text', 'Add To Cart', '2020-09-11 15:16:27', '2025-01-16 08:54:37');
INSERT INTO `static_options` VALUES (1383, 'product_category_en_text', 'Category', '2020-09-11 15:16:27', '2025-01-16 08:54:37');
INSERT INTO `static_options` VALUES (1384, 'product_price_filter_en_text', 'Price Filter', '2020-09-11 15:16:27', '2025-01-16 08:54:37');
INSERT INTO `static_options` VALUES (1385, 'product_rating_filter_en_text', 'Rating Filter', '2020-09-11 15:16:27', '2025-01-16 08:54:37');
INSERT INTO `static_options` VALUES (1398, 'product_post_items', '8', '2020-09-11 15:16:27', '2025-01-16 08:54:38');
INSERT INTO `static_options` VALUES (1399, 'testimonial_page_slug', 'testimonial', '2020-09-11 18:15:33', '2025-01-16 09:01:58');
INSERT INTO `static_options` VALUES (1400, 'feedback_page_slug', 'feedback', '2020-09-11 18:15:33', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1401, 'image_gallery_page_slug', 'image-gallery', '2020-09-11 18:15:33', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1402, 'product_page_slug', 'product', '2020-09-11 18:15:33', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1403, 'clients_feedback_page_slug', 'clients-feedback', '2020-09-11 18:15:57', '2025-01-16 09:01:58');
INSERT INTO `static_options` VALUES (1404, 'image_gallery_page_en_name', 'Image Gallery', '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1405, 'image_gallery_page_en_meta_tags', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1406, 'image_gallery_page_en_meta_description', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1407, 'clients_feedback_page_en_name', 'Clients Feedback', '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1408, 'clients_feedback_page_en_meta_tags', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1409, 'clients_feedback_page_en_meta_description', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1410, 'feedback_page_en_name', 'Feedback', '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1411, 'feedback_page_en_meta_tags', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1412, 'feedback_page_en_meta_description', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1413, 'testimonial_page_en_name', 'Testimonial', '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1414, 'testimonial_page_en_meta_tags', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1415, 'testimonial_page_en_meta_description', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1416, 'product_page_en_name', 'Product', '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1417, 'product_page_en_meta_tags', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1418, 'product_page_en_meta_description', NULL, '2020-09-11 18:24:30', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1464, 'home_page_08_en_decorate_area_title', 'Decorate Your Homewith Our Products', '2020-09-12 12:40:48', '2020-09-12 17:05:28');
INSERT INTO `static_options` VALUES (1465, 'home_page_08_en_decorate_area_description', '<p>Yourself required no at thoughts delicate landlord it be. Branched dashwood do is whatever it. Farther be chapter at visited married in it pressed. By distrusts procuring be oh frankness existence believing instantly if </p>', '2020-09-12 12:40:48', '2020-09-12 17:05:28');
INSERT INTO `static_options` VALUES (1472, 'home_page_08_decorate_area_right_image', '147', '2020-09-12 12:40:48', '2020-09-12 17:05:29');
INSERT INTO `static_options` VALUES (1473, 'home_page_08_en_latest_product_area_title', 'Latest Products', '2020-09-12 18:21:12', '2020-09-12 18:24:57');
INSERT INTO `static_options` VALUES (1474, 'home_page_08_en_latest_product_area_description', 'Old there any widow law rooms. Agreed but expect repair she nay sir silent person. Direction can dependent one bed situation attempted', '2020-09-12 18:21:12', '2020-09-12 18:24:57');
INSERT INTO `static_options` VALUES (1481, 'home_page_08_latest_product_area_items', '8', '2020-09-12 18:21:12', '2020-09-12 18:24:57');
INSERT INTO `static_options` VALUES (1482, 'home_page_08_en_testimonial_area_title', 'More Than 100k Peoples Are Buying Our Products', '2020-09-12 20:36:55', '2020-09-12 20:36:55');
INSERT INTO `static_options` VALUES (1483, 'home_page_08_en_testimonial_area_description', 'Old there any widow law rooms. Agreed but expect repair she nay sir silent person. Direction can dependent one bed situation attempted', '2020-09-12 20:36:55', '2020-09-12 20:36:55');
INSERT INTO `static_options` VALUES (1490, 'home_page_08_en_cta_area_title', 'Subscribe Newsletter', '2020-09-13 11:42:45', '2020-09-13 11:43:26');
INSERT INTO `static_options` VALUES (1491, 'home_page_08_en_cta_area_placeholder_text', 'Your Email Address', '2020-09-13 11:42:45', '2020-09-13 11:43:26');
INSERT INTO `static_options` VALUES (1498, 'home_page_06_en_header_area_title', 'Grow Your Business & Make More Profit', '2020-09-13 14:29:39', '2020-09-13 14:54:52');
INSERT INTO `static_options` VALUES (1499, 'home_page_06_en_header_area_description', 'In no impression assistance contrasted. Manners she wishing justice hastily new anxious. At discovery discourse departure objection we.', '2020-09-13 14:29:39', '2020-09-13 14:54:52');
INSERT INTO `static_options` VALUES (1506, 'home_page_06_header_background_image', '149', '2020-09-13 14:54:52', '2020-09-13 14:54:52');
INSERT INTO `static_options` VALUES (1507, 'home_page_06_header_right_image', '148', '2020-09-13 14:54:52', '2020-09-13 14:54:52');
INSERT INTO `static_options` VALUES (1508, 'service_site_color', '#ffb61a', '2020-09-13 14:59:04', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (1509, 'home_page_06_video_area_background_image', '150', '2020-09-14 19:38:56', '2020-09-14 19:39:58');
INSERT INTO `static_options` VALUES (1510, 'home_page_06_video_area_video_url', 'https://www.youtube.com/watch?v=LMAPoKW1CUY', '2020-09-14 19:38:56', '2020-09-14 19:39:58');
INSERT INTO `static_options` VALUES (1511, 'home_page_06_en_our_service_area_title', 'Our Services', '2020-09-15 07:21:26', '2020-09-16 10:47:33');
INSERT INTO `static_options` VALUES (1512, 'home_page_06_en_our_service_area_description', 'Perpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking.', '2020-09-15 07:21:26', '2020-09-16 10:47:33');
INSERT INTO `static_options` VALUES (1519, 'home_page_06_our_service_area_items', '6', '2020-09-15 07:21:26', '2020-09-16 10:47:33');
INSERT INTO `static_options` VALUES (1520, 'home_page_06_en_our_service_area_button_text', 'All Services', '2020-09-15 07:26:01', '2020-09-16 10:47:33');
INSERT INTO `static_options` VALUES (1524, 'gig_page_slug', 'gigs', '2020-09-15 18:45:14', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1525, 'gig_page_en_name', 'Gigs', '2020-09-15 18:45:14', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1526, 'gig_page_en_meta_tags', NULL, '2020-09-15 18:45:14', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1527, 'gig_page_en_meta_description', NULL, '2020-09-15 18:45:14', '2025-01-16 09:02:00');
INSERT INTO `static_options` VALUES (1537, 'home_06_counterup_bg_image', '160', '2020-09-16 08:19:13', '2020-09-16 08:21:11');
INSERT INTO `static_options` VALUES (1538, 'home_page_06_en_work_process_title', 'a:5:{i:0;s:12:\"Signup/Login\";i:1;s:19:\"Choose your service\";i:2;s:12:\"Submit Order\";i:3;s:17:\"Give your content\";i:4;s:18:\"Payment & Delivery\";}', '2020-09-16 10:38:39', '2020-09-16 12:23:10');
INSERT INTO `static_options` VALUES (1539, 'home_page_06_en_work_process_area_title', 'Our Work Process', '2020-09-16 10:38:40', '2020-09-16 12:23:10');
INSERT INTO `static_options` VALUES (1540, 'home_page_06_en_work_process_area_description', 'Perpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking.', '2020-09-16 10:38:40', '2020-09-16 12:23:10');
INSERT INTO `static_options` VALUES (1550, 'home_page_06_work_process_number', 'a:5:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";}', '2020-09-16 10:38:40', '2020-09-16 12:23:10');
INSERT INTO `static_options` VALUES (1551, 'home_page_06_en_news_area_read_more_text', 'Read More', '2020-09-16 13:59:58', '2020-09-16 14:57:16');
INSERT INTO `static_options` VALUES (1552, 'home_page_06_en_news_area_title', 'Latest News', '2020-09-16 13:59:58', '2020-09-16 14:57:16');
INSERT INTO `static_options` VALUES (1553, 'home_page_06_en_news_area_description', 'Perpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking.', '2020-09-16 13:59:58', '2020-09-16 14:57:16');
INSERT INTO `static_options` VALUES (1563, 'home_page_06_news_area_items', 's:1:\"6\";', '2020-09-16 13:59:58', '2020-09-16 13:59:58');
INSERT INTO `static_options` VALUES (1564, 'home_06_news_area_background_image', '161', '2020-09-16 14:57:16', '2020-09-16 14:57:16');
INSERT INTO `static_options` VALUES (1565, 'home_page_06_en_testimonial_area_title', 'More Than 100+  Peoples are using our Service', '2020-09-16 15:33:36', '2020-09-16 15:33:36');
INSERT INTO `static_options` VALUES (1569, 'apply_gig_single_page_quote_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-message\"],\"field_placeholder\":[\"Name\",\"Email\",\"Message\"],\"field_required\":[\"on\",\"on\",\"on\"]}', '2020-09-19 17:19:27', '2020-09-19 17:19:27');
INSERT INTO `static_options` VALUES (1570, 'work_page_slug', 'work', '2020-09-21 08:13:27', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1571, 'work_page_en_all_cat_text', 'All', '2020-09-21 11:03:10', '2025-01-16 10:49:48');
INSERT INTO `static_options` VALUES (1575, 'work_page_items', '9', '2020-09-21 11:03:10', '2025-01-16 10:49:48');
INSERT INTO `static_options` VALUES (1576, 'work_single_page_en_sidebar_title', 'Project Details', '2020-09-21 12:07:09', '2025-01-16 10:50:45');
INSERT INTO `static_options` VALUES (1577, 'work_single_page_en_start_date_text', 'Start Date', '2020-09-21 12:07:09', '2025-01-16 10:50:45');
INSERT INTO `static_options` VALUES (1578, 'work_single_page_en_end_date_text', 'End Date', '2020-09-21 12:07:09', '2025-01-16 10:50:45');
INSERT INTO `static_options` VALUES (1579, 'work_single_page_en_clients_text', 'Clients', '2020-09-21 12:07:09', '2025-01-16 10:50:46');
INSERT INTO `static_options` VALUES (1580, 'work_single_page_en_category_text', 'Categories', '2020-09-21 12:07:09', '2025-01-16 10:50:46');
INSERT INTO `static_options` VALUES (1581, 'work_single_page_en_share_text', 'Share', '2020-09-21 12:07:09', '2025-01-16 10:50:46');
INSERT INTO `static_options` VALUES (1600, 'work_single_page_en_gallery_title', 'Photo Gallery', '2020-09-29 18:26:03', '2025-01-16 10:50:46');
INSERT INTO `static_options` VALUES (1604, 'site_currency_symbol_position', 'left', '2020-09-30 16:58:17', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1605, 'job_module_status', NULL, '2020-10-01 16:56:38', '2025-02-04 07:03:44');
INSERT INTO `static_options` VALUES (1606, 'events_module_status', 'on', '2020-10-01 16:56:38', '2025-02-04 07:03:44');
INSERT INTO `static_options` VALUES (1607, 'product_module_status', 'on', '2020-10-01 16:56:38', '2025-02-04 07:03:44');
INSERT INTO `static_options` VALUES (1608, 'donations_module_status', NULL, '2020-10-01 16:56:38', '2025-02-04 07:03:44');
INSERT INTO `static_options` VALUES (1609, 'knowledgebase_module_status', 'on', '2020-10-01 16:56:38', '2025-02-04 07:03:44');
INSERT INTO `static_options` VALUES (1610, 'service_module_status', 'on', '2020-10-01 17:04:25', '2025-02-04 07:03:45');
INSERT INTO `static_options` VALUES (1611, 'works_module_status', NULL, '2020-10-01 17:04:25', '2025-02-04 07:03:45');
INSERT INTO `static_options` VALUES (1612, 'blog_module_status', 'on', '2020-10-01 17:04:25', '2025-02-04 07:03:45');
INSERT INTO `static_options` VALUES (1613, 'gig_module_status', NULL, '2020-10-01 17:04:25', '2025-02-04 07:03:45');
INSERT INTO `static_options` VALUES (1614, 'user_module_status', NULL, '2020-10-01 17:04:25', '2025-02-04 07:03:45');
INSERT INTO `static_options` VALUES (1615, 'account_page_en_name', 'Account', '2020-10-03 17:06:15', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1616, 'account_page_en_meta_tags', NULL, '2020-10-03 17:06:15', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1617, 'account_page_en_meta_description', NULL, '2020-10-03 17:06:15', '2025-01-16 09:02:03');
INSERT INTO `static_options` VALUES (1627, 'cash_on_delivery_preview_logo', '163', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1628, 'stripe_preview_logo', '167', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1629, 'paystack_preview_logo', '165', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1630, 'paystack_public_key', 'pk_test_adf2b17ee25922b69a59b2e7be2e0f0ded48ab77', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1631, 'paystack_secret_key', 'sk_test_dc622206ec00f6deaa6399f1b99133c1e9c9285e', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1632, 'paystack_merchant_email', 'rsharifur824@gmail.com', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1633, 'razorpay_preview_logo', '168', '2020-10-04 12:31:11', '2025-02-04 09:00:02');
INSERT INTO `static_options` VALUES (1634, 'razorpay_key', 'rzp_test_SXk7LZqsBPpAkj', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1635, 'razorpay_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1636, 'stripe_publishable_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1637, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1638, 'site_global_payment_gateway', NULL, '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1640, 'site_euro_to_ngn_exchange_rate', NULL, '2020-10-04 12:31:11', '2020-10-06 19:05:29');
INSERT INTO `static_options` VALUES (1641, 'mollie_public_key', 'test_SMWtwR6W48QN2UwFQBUqRDKWhaQEvw', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1642, 'mollie_preview_logo', '164', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1643, 'flutterwave_preview_logo', '166', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1644, 'flutterwave_secret_key', 'FLWSECK-e33b022937c2a64446dca55dbb7ceb08-X', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1645, 'flutterwave_public_key', 'FLWPUBK-d981d2a182ba72915b699603c2db82e0-X', '2020-10-04 12:31:11', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1646, 'razorpay_gateway', NULL, '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1647, 'stripe_gateway', NULL, '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1648, 'paystack_gateway', NULL, '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1649, 'mollie_gateway', NULL, '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1650, 'cash_on_delivery_gateway', 'on', '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1651, 'flutterwave_gateway', 'on', '2020-10-04 12:31:11', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1789, 'site_default_payment_gateway', 'manual_payment', '2020-10-04 16:10:55', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1790, 'site_idr_to_usd_exchange_rate', NULL, '2020-10-06 19:12:41', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1791, 'site_aud_to_usd_exchange_rate', NULL, '2020-10-06 19:28:49', '2020-10-06 19:28:49');
INSERT INTO `static_options` VALUES (1792, 'site_usd_to_usd_exchange_rate', NULL, '2020-10-06 19:41:00', '2020-10-06 20:58:11');
INSERT INTO `static_options` VALUES (1793, 'site_usd_to_inr_exchange_rate', '73.43', '2020-10-06 19:41:00', '2020-10-06 20:58:11');
INSERT INTO `static_options` VALUES (1794, 'paypal_test_mode', NULL, '2020-10-06 20:35:10', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1795, 'paytm_test_mode', NULL, '2020-10-06 20:54:21', '2025-02-04 09:00:03');
INSERT INTO `static_options` VALUES (1796, 'site_inr_to_usd_exchange_rate', '0.014', '2020-10-07 08:53:49', '2020-10-07 08:54:42');
INSERT INTO `static_options` VALUES (1797, 'site_inr_to_inr_exchange_rate', NULL, '2020-10-07 08:53:49', '2020-10-07 08:54:42');
INSERT INTO `static_options` VALUES (1798, 'site_cad_to_usd_exchange_rate', NULL, '2020-10-07 10:48:44', '2020-10-07 10:48:44');
INSERT INTO `static_options` VALUES (1799, 'site_cad_to_inr_exchange_rate', NULL, '2020-10-07 10:48:44', '2020-10-07 10:48:44');
INSERT INTO `static_options` VALUES (1800, 'site_bdt_to_usd_exchange_rate', '0.012', '2020-10-07 11:40:13', '2020-11-01 14:10:30');
INSERT INTO `static_options` VALUES (1801, 'site_bdt_to_inr_exchange_rate', '0.86', '2020-10-07 11:40:13', '2020-11-01 14:10:30');
INSERT INTO `static_options` VALUES (1802, 'flutterwave_test_mode', NULL, '2020-10-07 18:41:29', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (1803, 'site_bdt_to_ngn_exchange_rate', '4.55', '2020-10-08 16:51:09', '2020-11-01 14:10:30');
INSERT INTO `static_options` VALUES (1804, 'event_booking_form_fields', '{\"field_type\":[\"text\",\"email\"],\"field_name\":[\"your-name\",\"your-email\"],\"field_placeholder\":[\"Your Name\",\"Your Email\"],\"field_required\":[\"on\",\"on\"]}', '2020-10-10 19:14:10', '2020-11-01 12:41:38');
INSERT INTO `static_options` VALUES (1805, 'event_attendance_page_en_title', 'Confirm Your Attendance', '2020-10-10 19:17:12', '2025-02-04 07:29:32');
INSERT INTO `static_options` VALUES (1806, 'event_attendance_page_en_form_button_title', 'Submit', '2020-10-10 19:17:12', '2025-02-04 07:29:32');
INSERT INTO `static_options` VALUES (1813, 'event_attendance_receiver_mail', 'jcombatclub@gmail.com', '2020-10-10 19:17:12', '2025-02-04 07:29:32');
INSERT INTO `static_options` VALUES (1814, 'event_success_page_en_title', 'Thank you', '2020-10-11 12:08:53', '2025-01-16 08:51:40');
INSERT INTO `static_options` VALUES (1815, 'event_success_page_en_subtitle', 'Payment Success For Event: {evname}', '2020-10-11 12:08:53', '2025-01-16 08:51:40');
INSERT INTO `static_options` VALUES (1816, 'event_success_page_en_description', NULL, '2020-10-11 12:08:53', '2025-01-16 08:51:40');
INSERT INTO `static_options` VALUES (1826, 'event_cancel_page_en_title', 'Sorry', '2020-10-11 12:09:28', '2025-01-16 08:51:59');
INSERT INTO `static_options` VALUES (1827, 'event_cancel_page_en_subtitle', 'Payment Cancel For Event: {evname}', '2020-10-11 12:09:28', '2025-01-16 08:51:59');
INSERT INTO `static_options` VALUES (1828, 'event_cancel_page_en_description', NULL, '2020-10-11 12:09:28', '2025-01-16 08:51:59');
INSERT INTO `static_options` VALUES (1838, 'product_tax', 'on', '2020-10-11 20:34:38', '2025-01-16 08:56:56');
INSERT INTO `static_options` VALUES (1839, 'product_tax_percentage', '11', '2020-10-11 20:34:38', '2025-01-16 08:56:56');
INSERT INTO `static_options` VALUES (1840, 'product_tax_type', 'individual', '2020-10-12 07:42:56', '2025-01-16 08:56:56');
INSERT INTO `static_options` VALUES (1841, 'donation_success_page_en_title', 'Thank You', '2020-10-13 19:02:05', '2025-01-16 10:44:22');
INSERT INTO `static_options` VALUES (1842, 'donation_success_page_en_subtitle', 'Payment Success For Donation:  {dnname}', '2020-10-13 19:02:05', '2025-01-16 10:44:22');
INSERT INTO `static_options` VALUES (1843, 'donation_success_page_en_description', NULL, '2020-10-13 19:02:05', '2025-01-16 10:44:22');
INSERT INTO `static_options` VALUES (1853, 'donation_cancel_page_en_title', 'Sorry!!', '2020-10-13 19:02:14', '2020-11-01 11:54:53');
INSERT INTO `static_options` VALUES (1854, 'donation_cancel_page_en_subtitle', 'Payment Cancel For Donation: {dnname}', '2020-10-13 19:02:14', '2020-11-01 11:54:53');
INSERT INTO `static_options` VALUES (1855, 'donation_cancel_page_en_description', NULL, '2020-10-13 19:02:14', '2020-11-01 11:54:53');
INSERT INTO `static_options` VALUES (1865, 'donation_single_en_recently_donated_title', 'Recently Donated', '2020-10-14 08:56:50', '2020-11-01 11:50:22');
INSERT INTO `static_options` VALUES (1869, 'quote_page_slug', 'quote', '2020-10-15 18:49:33', '2025-01-16 09:01:59');
INSERT INTO `static_options` VALUES (1870, 'gig_single_en_order_button_title', 'Order Now', '2020-10-18 12:36:04', '2025-01-16 10:46:24');
INSERT INTO `static_options` VALUES (1871, 'gig_single_en_quote_title', 'Do you have any special requirements?', '2020-10-18 12:36:04', '2025-01-16 10:46:24');
INSERT INTO `static_options` VALUES (1872, 'gig_single_en_quote_button_title', 'Get Quote', '2020-10-18 12:36:04', '2025-01-16 10:46:24');
INSERT INTO `static_options` VALUES (1882, 'gig_page_items', '9', '2020-10-18 12:46:23', '2025-01-16 10:46:02');
INSERT INTO `static_options` VALUES (1883, 'gig_order_success_page_en_title', 'Your Order [id] has been Placed', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1884, 'gig_order_success_page_en_gig_name_title', 'Gig Name', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1885, 'gig_order_success_page_en_gig_order_date_text', 'Gig Order Date', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1886, 'gig_order_success_page_en_gig_order_delivery_date_text', 'Order Delivery Date', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1887, 'gig_order_success_page_en_gig_total_revisions_text', 'Total Revisions', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1888, 'gig_order_success_page_en_gig_payment_gateway_text', 'Payment Gateway', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1889, 'gig_order_success_page_en_gig_payment_status_text', 'Payment Status', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1890, 'gig_order_success_page_en_gig_ordered_plan_text', 'Ordered Plan', '2020-10-18 14:30:22', '2025-01-16 10:47:33');
INSERT INTO `static_options` VALUES (1915, 'gig_order_cancel_page_en_title', 'Payment Not Success for this order', '2020-10-18 14:55:51', '2025-01-16 10:47:50');
INSERT INTO `static_options` VALUES (1916, 'gig_order_cancel_page_en_description', NULL, '2020-10-18 14:55:51', '2025-01-16 10:47:50');
INSERT INTO `static_options` VALUES (1923, 'gig_page_notify_email', 'support@jcc.com', '2020-10-20 12:15:23', '2025-01-16 10:46:02');
INSERT INTO `static_options` VALUES (1924, 'site_bgn_to_usd_exchange_rate', NULL, '2020-10-22 17:44:26', '2020-10-22 17:44:26');
INSERT INTO `static_options` VALUES (1925, 'site_bgn_to_inr_exchange_rate', NULL, '2020-10-22 17:44:26', '2020-10-22 17:44:26');
INSERT INTO `static_options` VALUES (1926, 'site_bgn_to_ngn_exchange_rate', NULL, '2020-10-22 17:44:26', '2020-10-22 17:44:26');
INSERT INTO `static_options` VALUES (1927, 'site_myr_to_usd_exchange_rate', NULL, '2020-10-22 17:44:59', '2020-10-22 17:44:59');
INSERT INTO `static_options` VALUES (1928, 'site_myr_to_inr_exchange_rate', NULL, '2020-10-22 17:44:59', '2020-10-22 17:44:59');
INSERT INTO `static_options` VALUES (1929, 'site_myr_to_ngn_exchange_rate', NULL, '2020-10-22 17:44:59', '2020-10-22 17:44:59');
INSERT INTO `static_options` VALUES (1930, 'site_rss_feed_description', 'Next his only boy meet the fat rose when. Do repair at we misery wanted remove remain income. Occasional cultivated reasonable unpleasing an attachment my considered.', '2020-10-23 20:29:51', '2020-11-01 14:14:06');
INSERT INTO `static_options` VALUES (1931, 'site_rss_feed_title', 'My feed', '2020-10-23 20:29:51', '2020-11-01 14:14:06');
INSERT INTO `static_options` VALUES (1932, 'site_rss_feed_url', '/feeds', '2020-10-23 20:29:51', '2020-11-01 14:14:06');
INSERT INTO `static_options` VALUES (1933, 'contact_page_form_email', 'jcombatclub@gmail.com', '2020-10-25 07:07:50', '2025-02-04 07:14:36');
INSERT INTO `static_options` VALUES (1934, 'contact_page_map_section_address', 'Jl. KH Shiddiq No.83-85, Kelurahan Jember Kidu, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131', '2020-10-25 07:49:23', '2025-01-20 07:55:23');
INSERT INTO `static_options` VALUES (1935, 'top_bar_get_quote_btn_status', NULL, '2020-10-25 12:05:34', '2025-01-20 09:30:30');
INSERT INTO `static_options` VALUES (1936, 'hide_frontend_language_change_option', NULL, '2020-10-25 13:33:20', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (1937, 'blog_single_page_en_tag_title', 'Tags:', '2020-10-26 12:41:20', '2025-01-16 08:48:34');
INSERT INTO `static_options` VALUES (1938, 'blog_single_page_en_share_title', 'Share:', '2020-10-26 12:41:20', '2025-01-16 08:48:35');
INSERT INTO `static_options` VALUES (3740, 'preloader_default', '8', '2020-10-28 11:41:43', '2025-02-19 10:16:05');
INSERT INTO `static_options` VALUES (3741, 'preloader_status', 'on', '2020-10-28 11:41:43', '2025-02-19 10:16:05');
INSERT INTO `static_options` VALUES (3742, 'preloader_custom', 'on', '2020-10-28 11:41:43', '2025-02-19 10:16:05');
INSERT INTO `static_options` VALUES (3743, 'preloader_custom_image', '155', '2020-10-28 11:41:43', '2025-02-19 10:16:05');
INSERT INTO `static_options` VALUES (3744, 'popup_enable_status', 'on', '2020-10-28 20:26:23', '2025-02-19 10:17:09');
INSERT INTO `static_options` VALUES (3745, 'popup_delay_time', '5000', '2020-10-28 20:26:23', '2025-02-19 10:17:09');
INSERT INTO `static_options` VALUES (3746, 'popup_selected_en_id', '1', '2020-10-28 20:26:23', '2025-02-19 10:17:09');
INSERT INTO `static_options` VALUES (3753, 'site_header_script', NULL, '2020-11-01 13:52:45', '2025-02-04 07:00:37');
INSERT INTO `static_options` VALUES (3754, 'item_purchase_key', 'b6193092-2a65-4460-ad88-0be54ce4eb41', '2020-11-01 14:22:35', '2020-11-09 10:17:05');
INSERT INTO `static_options` VALUES (3755, 'item_license_msg', 'your licensed has been activated.', '2020-11-01 14:22:35', '2020-11-09 10:17:08');
INSERT INTO `static_options` VALUES (3756, 'feedback_notify_mail', 'jcombatclub@gmail.com', '2020-11-04 13:49:18', '2025-02-04 07:18:18');
INSERT INTO `static_options` VALUES (3757, 'feedback_page_form_en_name_label', 'Name', '2020-11-04 13:49:18', '2025-02-04 07:18:18');
INSERT INTO `static_options` VALUES (3758, 'feedback_page_form_en_email_label', 'Email', '2020-11-04 13:49:18', '2025-02-04 07:18:18');
INSERT INTO `static_options` VALUES (3759, 'feedback_page_form_en_ratings_label', 'How Was Your Experience', '2020-11-04 13:49:18', '2025-02-04 07:18:18');
INSERT INTO `static_options` VALUES (3760, 'feedback_page_form_en_description_label', 'Write Few Words', '2020-11-04 13:49:18', '2025-02-04 07:18:19');
INSERT INTO `static_options` VALUES (3761, 'feedback_page_form_en_button_text', 'Submit Now', '2020-11-04 13:49:18', '2025-02-04 07:18:19');
INSERT INTO `static_options` VALUES (3762, 'feedback_page_form_en_form_title', 'Leave Your Feedback', '2020-11-04 13:49:18', '2025-02-04 07:18:19');
INSERT INTO `static_options` VALUES (3781, 'feedback_page_form_fields', '{\"field_type\":[\"textarea\"],\"field_name\":[\"suggestoin\"],\"field_placeholder\":[\"suggestion\"],\"field_required\":[\"on\"]}', '2020-11-04 14:32:00', '2020-11-04 14:40:15');
INSERT INTO `static_options` VALUES (3782, 'contact_page_form_section_status', 'on', '2020-11-04 16:17:02', '2020-11-04 16:37:27');
INSERT INTO `static_options` VALUES (3783, 'contact_page_contact_info_section_status', 'on', '2020-11-04 16:17:02', '2020-11-04 16:37:27');
INSERT INTO `static_options` VALUES (3784, 'contact_page_google_map_section_status', 'on', '2020-11-04 16:17:02', '2020-11-04 16:37:27');
INSERT INTO `static_options` VALUES (3785, 'site_gdpr_cookie_en_decline_button_label', 'Decline Cookie', '2020-11-05 12:50:38', '2025-01-16 09:04:43');
INSERT INTO `static_options` VALUES (3789, 'site_admin_panel_preloader_enabled', 'on', '2020-11-05 14:04:23', '2025-02-04 06:59:53');
INSERT INTO `static_options` VALUES (3790, 'knowledgebase_home_page_highlight_box_section_status', 'on', '2020-11-09 16:18:10', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3791, 'knowledgebase_home_page_popular_article_section_status', 'on', '2020-11-09 16:28:49', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3792, 'knowledgebase_home_page_team_section_status', 'on', '2020-11-09 16:28:49', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3793, 'knowledgebase_home_page_testimonial_section_status', 'on', '2020-11-09 16:28:56', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3794, 'knowledgebase_home_page_faq_section_status', 'on', '2020-11-09 16:28:56', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3795, 'knowledgebase_home_page_cta_section_status', 'on', '2020-11-09 16:28:56', '2020-11-09 16:36:30');
INSERT INTO `static_options` VALUES (3796, 'service_home_page_category_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3797, 'service_home_page_video_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3798, 'service_home_page_brand_carousel_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3799, 'service_home_page_all_services_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3800, 'service_home_page_counterup_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3801, 'service_home_page_work_process_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3802, 'service_home_page_testimonial_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3803, 'service_home_page_latest_news_section_status', 'on', '2020-11-09 16:57:12', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3804, 'service_home_page_topbar_section_status', 'on', '2020-11-09 17:18:09', '2020-11-09 17:32:33');
INSERT INTO `static_options` VALUES (3805, 'event_home_page_topbar_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3806, 'event_home_page_featured_event_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3807, 'event_home_page_why_attend_event_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3808, 'event_home_page_speaker_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3809, 'event_home_page_counterup_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3810, 'event_home_page_upcoming_event_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3811, 'event_home_page_sponsors_logo_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3812, 'event_home_page_latest_blog_section_status', 'on', '2020-11-09 17:55:01', '2020-11-09 17:57:34');
INSERT INTO `static_options` VALUES (3813, 'product_home_page_topbar_section_status', 'on', '2020-11-09 18:18:45', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3814, 'product_home_page_product_category_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3815, 'product_home_page_featured_item_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3816, 'product_home_page_decorate_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3817, 'product_home_page_latest_products_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3818, 'product_home_page_brand_carousel_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3819, 'product_home_page_testimonial_section_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3820, 'product_home_page_subscribe_status', 'on', '2020-11-09 18:30:19', '2020-11-09 18:30:19');
INSERT INTO `static_options` VALUES (3821, 'charity_home_page_key_feature_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3822, 'charity_home_page_about_section_status', 'on', '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3823, 'charity_home_page_our_mission_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3824, 'charity_home_page_recent_cause_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3825, 'charity_home_page_our_gallery_section_status', 'on', '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3826, 'charity_home_page_our_events_section_status', 'on', '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3827, 'charity_home_page_counterup_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3828, 'charity_home_page_team_member_section_status', 'on', '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3829, 'charity_home_page_testimonial_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3830, 'charity_home_page_news_blog_section_status', 'on', '2020-11-09 19:54:21', '2025-01-22 05:29:40');
INSERT INTO `static_options` VALUES (3831, 'charity_home_page_brand_carousel_section_status', NULL, '2020-11-09 19:54:21', '2025-01-22 05:29:41');
INSERT INTO `static_options` VALUES (3832, 'job_home_page_topbar_section_status', 'on', '2020-11-10 08:03:47', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3833, 'job_home_page_category_section_status', 'on', '2020-11-10 08:03:47', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3834, 'job_home_page_featured_job_section_status', 'on', '2020-11-10 08:03:47', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3835, 'job_home_page_millions_section_status', 'on', '2020-11-10 08:03:48', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3836, 'job_home_page_latest_job_section_status', 'on', '2020-11-10 08:03:48', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3837, 'job_home_page_latest_news_section_status', 'on', '2020-11-10 08:03:48', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3838, 'job_home_page_testimonial_section_status', 'on', '2020-11-10 08:03:48', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3839, 'job_home_page_brand_carousel_section_status', 'on', '2020-11-10 08:03:48', '2020-11-10 08:08:15');
INSERT INTO `static_options` VALUES (3840, 'site_idr_to_inr_exchange_rate', NULL, '2025-01-16 09:03:28', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (3841, 'site_idr_to_ngn_exchange_rate', NULL, '2025-01-16 09:03:28', '2025-02-04 09:00:04');
INSERT INTO `static_options` VALUES (3842, 'disable_user_email_verify', NULL, '2025-01-16 10:52:05', '2025-02-04 06:59:53');

-- ----------------------------
-- Table structure for support_infos
-- ----------------------------
DROP TABLE IF EXISTS `support_infos`;
CREATE TABLE `support_infos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of support_infos
-- ----------------------------
INSERT INTO `support_infos` VALUES (1, 'Email', 'en', 'jcombatclub@gmail.com', 'flaticon-email', '2020-01-04 14:03:46', '2025-02-04 07:23:31');
INSERT INTO `support_infos` VALUES (2, 'Phone', 'en', '+62 812 123 123', 'flaticon-phone-call', '2020-01-04 14:04:01', '2025-01-15 11:30:19');

-- ----------------------------
-- Table structure for team_members
-- ----------------------------
DROP TABLE IF EXISTS `team_members`;
CREATE TABLE `team_members`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_one` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_two` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_three` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_one_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_two_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon_three_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of team_members
-- ----------------------------
INSERT INTO `team_members` VALUES (1, 'Satria', '-Coach', '154', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 12:03:15', '2025-02-19 07:17:54');
INSERT INTO `team_members` VALUES (2, 'Nyo', '-Coach', '153', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 12:03:43', '2025-02-19 07:17:27');
INSERT INTO `team_members` VALUES (3, 'Akira', '- Coach', '152', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', 'en', '#', '#', '#', '2020-03-10 12:04:35', '2025-02-19 07:16:44');

-- ----------------------------
-- Table structure for testimonials
-- ----------------------------
DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of testimonials
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int UNSIGNED NOT NULL DEFAULT 0,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for widgets
-- ----------------------------
DROP TABLE IF EXISTS `widgets`;
CREATE TABLE `widgets`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_render_function` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_render_function` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_area` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `widget_order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `widget_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of widgets
-- ----------------------------
INSERT INTO `widgets` VALUES (1, 'about_us_widget', 'render_about_us_widget', NULL, '4', 'About Us', 'a:16:{s:2:\"id\";s:1:\"1\";s:24:\"frontend_render_function\";s:22:\"render_about_us_widget\";s:21:\"admin_render_function\";s:15:\"about_us_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:8:\"About Us\";s:12:\"widget_order\";s:1:\"4\";s:9:\"site_logo\";s:3:\"125\";s:14:\"description_en\";N;s:31:\"about_widget_title_facebook_url\";s:1:\"#\";s:30:\"about_widget_title_twitter_url\";s:1:\"#\";s:32:\"about_widget_title_instagram_url\";s:1:\"#\";s:31:\"about_widget_title_linkedin_url\";N;s:30:\"about_widget_title_youtube_url\";s:1:\"#\";s:31:\"about_widget_title_dribbble_url\";N;s:29:\"about_widget_title_github_url\";N;s:32:\"about_widget_title_pinterest_url\";N;}', '2020-08-27 20:39:19', '2025-02-04 09:02:38');
INSERT INTO `widgets` VALUES (2, 'contact_info_widget', 'render_contact_info_widget', NULL, '1', 'Contact Info', 'a:14:{s:2:\"id\";s:1:\"3\";s:24:\"frontend_render_function\";s:26:\"render_contact_info_widget\";s:21:\"admin_render_function\";s:19:\"contact_info_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:12:\"Contact Info\";s:12:\"widget_order\";s:1:\"1\";s:15:\"widget_title_en\";N;s:11:\"location_en\";s:112:\"Jl. KH Shiddiq No.83-85, Kelurahan Jember Kidu, Jember Kidul, Kec. Kaliwates, Kabupaten Jember, Jawa Timur 68131\";s:8:\"phone_en\";N;s:8:\"email_en\";N;s:15:\"widget_title_id\";N;s:11:\"location_id\";N;s:8:\"phone_id\";N;s:8:\"email_id\";N;}', '2020-08-28 05:56:19', '2025-01-22 05:52:28');
INSERT INTO `widgets` VALUES (3, 'raw_html_widget', 'render_raw_html_widget', NULL, '3', 'Raw HTML', 'a:6:{s:24:\"frontend_render_function\";s:22:\"render_raw_html_widget\";s:21:\"admin_render_function\";s:15:\"raw_html_widget\";s:11:\"widget_type\";s:3:\"new\";s:11:\"widget_name\";s:8:\"Raw HTML\";s:12:\"widget_order\";s:1:\"3\";s:8:\"raw_html\";s:4:\"<br>\";}', '2025-01-15 11:07:21', '2025-01-22 10:39:57');
INSERT INTO `widgets` VALUES (4, 'contact_info_widget', 'render_contact_info_widget', NULL, '2', 'Contact Info', 'a:10:{s:2:\"id\";s:1:\"4\";s:24:\"frontend_render_function\";s:26:\"render_contact_info_widget\";s:21:\"admin_render_function\";s:19:\"contact_info_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:12:\"Contact Info\";s:12:\"widget_order\";s:1:\"2\";s:15:\"widget_title_en\";N;s:11:\"location_en\";N;s:8:\"phone_en\";s:14:\"+62123 123 123\";s:8:\"email_en\";s:21:\"jcombatclub@gmail.com\";}', '2025-01-22 05:51:40', '2025-02-04 08:46:27');

-- ----------------------------
-- Table structure for works
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `end_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `clients` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `gallery` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of works
-- ----------------------------

-- ----------------------------
-- Table structure for works_categories
-- ----------------------------
DROP TABLE IF EXISTS `works_categories`;
CREATE TABLE `works_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of works_categories
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
