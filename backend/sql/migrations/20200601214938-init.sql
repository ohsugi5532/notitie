
-- +migrate Up
CREATE TABLE `team` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime  default CURRENT_TIMESTAMP NOT NULL,
  `updated_time` datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `user` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime  default CURRENT_TIMESTAMP NOT NULL,
  `updated_time` datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `note` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `html_content` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `published_status` int(11) NOT NULL DEFAULT 0,
  `created_time` datetime  default CURRENT_TIMESTAMP NOT NULL,
  `updated_time` datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `team_user` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- +migrate Down
DROP TABLE `team`;
DROP TABLE `user`;
DROP TABLE `note`;
DROP TABLE `team_user`;

