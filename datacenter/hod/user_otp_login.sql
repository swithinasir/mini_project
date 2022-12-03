CREATE TABLE `registered_users` (
`id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `email` varchar(255) NOT NULL
)
CREATE TABLE `otp_expiry` (
`id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `otp` varchar(10) NOT NULL,
  `is_expired` int(11) NOT NULL,
  `create_at` datetime NOT NULL
)