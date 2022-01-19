-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 12:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add department', 6, 'add_department'),
(22, 'Can change department', 6, 'change_department'),
(23, 'Can delete department', 6, 'delete_department'),
(24, 'Can view department', 6, 'view_department'),
(25, 'Can add employee', 7, 'add_employee'),
(26, 'Can change employee', 7, 'change_employee'),
(27, 'Can delete employee', 7, 'delete_employee'),
(28, 'Can view employee', 7, 'view_employee'),
(29, 'Can add recruitment', 8, 'add_recruitment'),
(30, 'Can change recruitment', 8, 'change_recruitment'),
(31, 'Can delete recruitment', 8, 'delete_recruitment'),
(32, 'Can view recruitment', 8, 'view_recruitment'),
(33, 'Can add leave', 9, 'add_leave'),
(34, 'Can change leave', 9, 'change_leave'),
(35, 'Can delete leave', 9, 'delete_leave'),
(36, 'Can view leave', 9, 'view_leave'),
(37, 'Can add kin', 10, 'add_kin'),
(38, 'Can change kin', 10, 'change_kin'),
(39, 'Can delete kin', 10, 'delete_kin'),
(40, 'Can view kin', 10, 'view_kin'),
(41, 'Can add attendance', 11, 'add_attendance'),
(42, 'Can change attendance', 11, 'change_attendance'),
(43, 'Can delete attendance', 11, 'delete_attendance'),
(44, 'Can view attendance', 11, 'view_attendance'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-09-07 21:13:30.380159', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Thumb\"]}}]', 12, 1),
(2, '2021-09-07 21:51:29.305902', '1', 'hr', 1, '[{\"added\": {}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(11, 'management', 'attendance'),
(6, 'management', 'department'),
(7, 'management', 'employee'),
(10, 'management', 'kin'),
(9, 'management', 'leave'),
(8, 'management', 'recruitment'),
(12, 'management', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-09-07 20:38:32.895363'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-09-07 20:38:34.162532'),
(3, 'auth', '0001_initial', '2021-09-07 20:38:35.566154'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-09-07 20:38:43.591297'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-09-07 20:38:43.754203'),
(6, 'auth', '0004_alter_user_username_opts', '2021-09-07 20:38:43.814179'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-09-07 20:38:43.896132'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-09-07 20:38:43.958096'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-09-07 20:38:44.030047'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-09-07 20:38:44.120997'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-09-07 20:38:44.337870'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-09-07 20:38:45.813030'),
(13, 'auth', '0011_update_proxy_permissions', '2021-09-07 20:38:46.115856'),
(14, 'management', '0001_initial', '2021-09-07 20:38:55.900561'),
(15, 'admin', '0001_initial', '2021-09-07 20:39:09.063201'),
(16, 'admin', '0002_logentry_remove_auto_add', '2021-09-07 20:39:12.550168'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2021-09-07 20:39:12.713060'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-09-07 20:39:13.166798'),
(19, 'management', '0002_auto_20210907_2338', '2021-09-07 20:39:13.519149'),
(20, 'sessions', '0001_initial', '2021-09-07 20:39:13.973977'),
(21, 'management', '0003_auto_20210908_0012', '2021-09-07 21:12:43.337235'),
(22, 'management', '0004_auto_20210908_0049', '2021-09-07 21:49:15.099810');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('daq6bqwgeqxobzm0jjb402jrh2zj3sul', '.eJxVjDsOwjAQBe_iGlnxL2tT0nMGa73r4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVZKHH63RLSI9cd8B3rrUlqdV3mJHdFHrTLa-P8vBzu30HBXr61dsyM4BPYKQ-gANg4VmSUZsujVcbDGJwLBJTShJnVQN76rMEYF6x4fwDg8zeC:1mNj8Q:qcqvVYTcdGMnjdHbuLp2vGH49_-j3sPXJaMwQATTIxc', '2021-09-21 22:00:06.587399');

-- --------------------------------------------------------

--
-- Table structure for table `management_attendance`
--

CREATE TABLE `management_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `first_in` time(6) NOT NULL,
  `last_out` time(6) DEFAULT NULL,
  `status` varchar(15) NOT NULL,
  `staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_attendance`
--

INSERT INTO `management_attendance` (`id`, `date`, `first_in`, `last_out`, `status`, `staff_id`) VALUES
(1, '2021-09-08', '22:07:04.963064', NULL, 'PRESENT', 1),
(2, '2021-09-08', '22:07:17.770459', NULL, 'PRESENT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_department`
--

CREATE TABLE `management_department` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `history` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_department`
--

INSERT INTO `management_department` (`id`, `name`, `history`) VALUES
(1, 'Accounting', 'No History');
(2, 'ICT', 'No History');
(3, 'General', 'No History');

-- --------------------------------------------------------

--
-- Table structure for table `management_employee`
--

CREATE TABLE `management_employee` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(70) NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(125) NOT NULL,
  `address` longtext NOT NULL,
  `emergency` varchar(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `joined` datetime(6) NOT NULL,
  `language` varchar(10) NOT NULL,
  `account_no` varchar(10) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `salary` varchar(16) NOT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_employee`
--

INSERT INTO `management_employee` (`id`, `emp_id`, `thumb`, `first_name`, `last_name`, `mobile`, `email`, `address`, `emergency`, `gender`, `joined`, `language`, `account_no`, `bank`, `salary`, `department_id`) VALUES
(1, 'emp642', 'banner.jpg', 'Titus', 'Oww', '0700000', 'titusowuor30@gmail.com', '', '88909090-', 'male', '2021-09-07 22:00:58.309700', 'english', '0123456789', 'KCB', '30000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_kin`
--

CREATE TABLE `management_kin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` longtext NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_kin`
--

INSERT INTO `management_kin` (`id`, `first_name`, `last_name`, `address`, `occupation`, `mobile`, `employee_id`) VALUES
(1, 'Owino', 'Tiema', '1234', 'ed', '66555555555', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_leave`
--

CREATE TABLE `management_leave` (
  `id` int(11) NOT NULL,
  `start` varchar(15) NOT NULL,
  `end` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_leave`
--

INSERT INTO `management_leave` (`id`, `start`, `end`, `status`, `employee_id`) VALUES
(1, '2021-09-08', '2021-09-23', 'unapproved', 1);

-- --------------------------------------------------------

--
-- Table structure for table `management_recruitment`
--

CREATE TABLE `management_recruitment` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `position` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_recruitment`
--

INSERT INTO `management_recruitment` (`id`, `first_name`, `last_name`, `position`, `email`, `phone`) VALUES
(1, 'Titus', 'Oww', 'manager', 'titusowuor30@gmail.com', '0700000');

-- --------------------------------------------------------

--
-- Table structure for table `management_user`
--

CREATE TABLE `management_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `thumb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `management_user`
--

INSERT INTO `management_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `thumb`) VALUES
(1, 'pbkdf2_sha256$216000$w7zY7lWH9wCT$8WhsCf7pJNg76Ovre1PnhLDADzKejF1WCnYZLIOnp8M=', '2021-09-07 22:00:06.469663', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-09-07 20:45:39.000000', 'media/user/IMG_20210613_182451_915_8x2o5Sv.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `management_user_groups`
--

CREATE TABLE `management_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `management_user_user_permissions`
--

CREATE TABLE `management_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_management_user_id` (`user_id`);

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
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `management_attendance`
--
ALTER TABLE `management_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `management_attendanc_staff_id_c8504f78_fk_managemen` (`staff_id`);

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
  ADD KEY `management_employee_department_id_3393fad4_fk_managemen` (`department_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `management_attendance`
--
ALTER TABLE `management_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `management_kin`
--
ALTER TABLE `management_kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_leave`
--
ALTER TABLE `management_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_recruitment`
--
ALTER TABLE `management_recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_management_user_id` FOREIGN KEY (`user_id`) REFERENCES `management_user` (`id`);

--
-- Constraints for table `management_attendance`
--
ALTER TABLE `management_attendance`
  ADD CONSTRAINT `management_attendanc_staff_id_c8504f78_fk_managemen` FOREIGN KEY (`staff_id`) REFERENCES `management_employee` (`id`);

--
-- Constraints for table `management_employee`
--
ALTER TABLE `management_employee`
  ADD CONSTRAINT `management_employee_department_id_3393fad4_fk_managemen` FOREIGN KEY (`department_id`) REFERENCES `management_department` (`id`);

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
