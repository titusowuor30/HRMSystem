-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2022 at 06:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add content type', 3, 'add_contenttype'),
(10, 'Can change content type', 3, 'change_contenttype'),
(11, 'Can delete content type', 3, 'delete_contenttype'),
(12, 'Can view content type', 3, 'view_contenttype'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add cashadvance', 5, 'add_cashadvance'),
(18, 'Can change cashadvance', 5, 'change_cashadvance'),
(19, 'Can delete cashadvance', 5, 'delete_cashadvance'),
(20, 'Can view cashadvance', 5, 'view_cashadvance'),
(21, 'Can add deductions', 6, 'add_deductions'),
(22, 'Can change deductions', 6, 'change_deductions'),
(23, 'Can delete deductions', 6, 'delete_deductions'),
(24, 'Can view deductions', 6, 'view_deductions'),
(25, 'Can add department', 7, 'add_department'),
(26, 'Can change department', 7, 'change_department'),
(27, 'Can delete department', 7, 'delete_department'),
(28, 'Can view department', 7, 'view_department'),
(29, 'Can add employee', 8, 'add_employee'),
(30, 'Can change employee', 8, 'change_employee'),
(31, 'Can delete employee', 8, 'delete_employee'),
(32, 'Can view employee', 8, 'view_employee'),
(33, 'Can add recruitment', 9, 'add_recruitment'),
(34, 'Can change recruitment', 9, 'change_recruitment'),
(35, 'Can delete recruitment', 9, 'delete_recruitment'),
(36, 'Can view recruitment', 9, 'view_recruitment'),
(37, 'Can add leave', 10, 'add_leave'),
(38, 'Can change leave', 10, 'change_leave'),
(39, 'Can delete leave', 10, 'delete_leave'),
(40, 'Can view leave', 10, 'view_leave'),
(41, 'Can add kin', 11, 'add_kin'),
(42, 'Can change kin', 11, 'change_kin'),
(43, 'Can delete kin', 11, 'delete_kin'),
(44, 'Can view kin', 11, 'view_kin'),
(45, 'Can add gen payrol', 12, 'add_genpayrol'),
(46, 'Can change gen payrol', 12, 'change_genpayrol'),
(47, 'Can delete gen payrol', 12, 'delete_genpayrol'),
(48, 'Can view gen payrol', 12, 'view_genpayrol'),
(49, 'Can add attendance', 13, 'add_attendance'),
(50, 'Can change attendance', 13, 'change_attendance'),
(51, 'Can delete attendance', 13, 'delete_attendance'),
(52, 'Can view attendance', 13, 'view_attendance');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'contenttypes', 'contenttype'),
(13, 'management', 'attendance'),
(5, 'management', 'cashadvance'),
(6, 'management', 'deductions'),
(7, 'management', 'department'),
(8, 'management', 'employee'),
(12, 'management', 'genpayrol'),
(11, 'management', 'kin'),
(10, 'management', 'leave'),
(9, 'management', 'recruitment'),
(4, 'management', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-19 05:52:05.736030'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-01-19 05:58:56.379299'),
(3, 'auth', '0001_initial', '2022-01-19 05:58:56.598051'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-01-19 05:58:56.644925'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-01-19 05:58:56.644925'),
(6, 'auth', '0004_alter_user_username_opts', '2022-01-19 05:58:56.660549'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-01-19 05:58:56.660549'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-01-19 05:58:56.676216'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-01-19 05:58:56.691809'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-01-19 05:58:56.691809'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-01-19 05:58:56.707445'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-01-19 05:58:56.738714'),
(13, 'auth', '0011_update_proxy_permissions', '2022-01-19 05:58:56.738714'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-01-19 05:58:56.754301'),
(15, 'management', '0001_initial', '2022-01-19 05:58:57.787692');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gil1lp2o9d95nzg1di1yl3m5v4quh9pc', '.eJxVjDsOwjAQBe_iGln-xoaSPmewdr0LDiBbipMKcXdkKQW0b2beWyTYt5L2zmtaSFyEFqffDSE_uQ5AD6j3JnOr27qgHIo8aJdzI35dD_fvoEAvow4-aELjbWD209lBpHwzNoCOCCZjiEqB45xRm2g8Kst2cuA9MIEh8fkC6N44Sg:1nA47e:jn_4UFXJwpAWx6jK89929tWOGLf7NrbfzQqXwoQF-l0', '2022-02-02 06:07:06.116524');

-- --------------------------------------------------------

--
-- Table structure for table `management_attendance`
--

CREATE TABLE `management_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `first_in` time(6) NOT NULL,
  `last_out` time(6) DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_cashadvance`
--

CREATE TABLE `management_cashadvance` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_deductions`
--

CREATE TABLE `management_deductions` (
  `id` int(11) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_department`
--

CREATE TABLE `management_department` (
  `id` int(11) NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_department`
--

INSERT INTO `management_department` (`id`, `name`, `history`) VALUES
(1, 'accounting', 'no history');

-- --------------------------------------------------------

--
-- Table structure for table `management_employee`
--

CREATE TABLE `management_employee` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` datetime(6) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_employee`
--

INSERT INTO `management_employee` (`id`, `emp_id`, `mobile`, `address`, `emergency`, `gender`, `joined`, `language`, `account_no`, `bank`, `salary`, `department_id`, `user_id`) VALUES
(1, 'emp842712', '07000008', '', '88909090', 'male', '2022-01-19 06:11:26.870662', 'english', '0123456787', 'First Bank Plc', '60000.00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_genpayrol`
--

CREATE TABLE `management_genpayrol` (
  `id` int(11) NOT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `advance_id` int(11) DEFAULT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_genpayrol_deductions`
--

CREATE TABLE `management_genpayrol_deductions` (
  `id` int(11) NOT NULL,
  `genpayrol_id` int(11) NOT NULL,
  `deductions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_kin`
--

CREATE TABLE `management_kin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_kin`
--

INSERT INTO `management_kin` (`id`, `first_name`, `last_name`, `address`, `occupation`, `mobile`, `employee_id`) VALUES
(1, 'Wilson', 'Oginga', '1235', 'ed', '0700000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_leave`
--

CREATE TABLE `management_leave` (
  `id` int(11) NOT NULL,
  `start` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_recruitment`
--

CREATE TABLE `management_recruitment` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_user`
--

CREATE TABLE `management_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_user`
--

INSERT INTO `management_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `thumb`) VALUES
(1, 'pbkdf2_sha256$320000$z5KgkEHFq4h4REJpXsTAkA$XR6ZhLn/tw8G5T69/TemWlalL7zsH3EfBgoOozbEyd8=', '2022-01-19 06:07:06.112623', 1, 'admin', 'admina', 'cleo', 'cleo@admin.com', 1, 1, '2022-01-19 06:02:17.143801', 'media/user/img.png');

-- --------------------------------------------------------

--
-- Table structure for table `management_user_groups`
--

CREATE TABLE `management_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_user_user_permissions`
--

CREATE TABLE `management_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_attendance`
--
ALTER TABLE `management_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `management_attendanc_staff_id_c8504f78_fk_managemen` (`staff_id`);

--
-- Indexes for table `management_cashadvance`
--
ALTER TABLE `management_cashadvance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `management_cashadvan_employee_id_36e3e214_fk_managemen` (`employee_id`);

--
-- Indexes for table `management_deductions`
--
ALTER TABLE `management_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_department`
--
ALTER TABLE `management_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_employee`
--
ALTER TABLE `management_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `management_employee_department_id_3393fad4_fk_managemen` (`department_id`);

--
-- Indexes for table `management_genpayrol`
--
ALTER TABLE `management_genpayrol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `management_genpayrol_advance_id_80aa8fc5_fk_managemen` (`advance_id`),
  ADD KEY `management_genpayrol_employee_id_54f6ad97_fk_managemen` (`employee_id`);

--
-- Indexes for table `management_genpayrol_deductions`
--
ALTER TABLE `management_genpayrol_deductions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `management_genpayrol_ded_genpayrol_id_deductions__b9e9ed8e_uniq` (`genpayrol_id`,`deductions_id`),
  ADD KEY `management_genpayrol_deductions_id_c542927b_fk_managemen` (`deductions_id`);

--
-- Indexes for table `management_kin`
--
ALTER TABLE `management_kin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `management_leave`
--
ALTER TABLE `management_leave`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `management_recruitment`
--
ALTER TABLE `management_recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_user`
--
ALTER TABLE `management_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `management_user_groups`
--
ALTER TABLE `management_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `management_user_groups_user_id_group_id_feb3e18c_uniq` (`user_id`,`group_id`),
  ADD KEY `management_user_groups_group_id_8e7cbab4_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `management_user_user_permissions`
--
ALTER TABLE `management_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `management_user_user_per_user_id_permission_id_8146bd2d_uniq` (`user_id`,`permission_id`),
  ADD KEY `management_user_user_permission_id_1cf8b5b7_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `management_attendance`
--
ALTER TABLE `management_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_cashadvance`
--
ALTER TABLE `management_cashadvance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_deductions`
--
ALTER TABLE `management_deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_department`
--
ALTER TABLE `management_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_employee`
--
ALTER TABLE `management_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_genpayrol`
--
ALTER TABLE `management_genpayrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_genpayrol_deductions`
--
ALTER TABLE `management_genpayrol_deductions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_kin`
--
ALTER TABLE `management_kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_leave`
--
ALTER TABLE `management_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_recruitment`
--
ALTER TABLE `management_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_user`
--
ALTER TABLE `management_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_user_groups`
--
ALTER TABLE `management_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_user_user_permissions`
--
ALTER TABLE `management_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `management_attendance`
--
ALTER TABLE `management_attendance`
  ADD CONSTRAINT `management_attendanc_staff_id_c8504f78_fk_managemen` FOREIGN KEY (`staff_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_cashadvance`
--
ALTER TABLE `management_cashadvance`
  ADD CONSTRAINT `management_cashadvan_employee_id_36e3e214_fk_managemen` FOREIGN KEY (`employee_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_employee`
--
ALTER TABLE `management_employee`
  ADD CONSTRAINT `management_employee_department_id_3393fad4_fk_managemen` FOREIGN KEY (`department_id`) REFERENCES `management_department` (`id`),
  ADD CONSTRAINT `management_employee_user_id_ded92103_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`);

--
-- Constraints for table `management_genpayrol`
--
ALTER TABLE `management_genpayrol`
  ADD CONSTRAINT `management_genpayrol_advance_id_80aa8fc5_fk_managemen` FOREIGN KEY (`advance_id`) REFERENCES `management_cashadvance` (`id`),
  ADD CONSTRAINT `management_genpayrol_employee_id_54f6ad97_fk_managemen` FOREIGN KEY (`employee_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_genpayrol_deductions`
--
ALTER TABLE `management_genpayrol_deductions`
  ADD CONSTRAINT `management_genpayrol_deductions_id_c542927b_fk_managemen` FOREIGN KEY (`deductions_id`) REFERENCES `management_deductions` (`id`),
  ADD CONSTRAINT `management_genpayrol_genpayrol_id_d3225616_fk_managemen` FOREIGN KEY (`genpayrol_id`) REFERENCES `management_genpayrol` (`id`);

--
-- Constraints for table `management_kin`
--
ALTER TABLE `management_kin`
  ADD CONSTRAINT `management_kin_employee_id_da9fec99_fk_management_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_leave`
--
ALTER TABLE `management_leave`
  ADD CONSTRAINT `management_leave_employee_id_534346a0_fk_management_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_user_groups`
--
ALTER TABLE `management_user_groups`
  ADD CONSTRAINT `management_user_groups_group_id_8e7cbab4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `management_user_groups_user_id_e433e6d4_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`);

--
-- Constraints for table `management_user_user_permissions`
--
ALTER TABLE `management_user_user_permissions`
  ADD CONSTRAINT `management_user_user_permission_id_1cf8b5b7_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `management_user_user_user_id_195d266b_fk_managemen` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
