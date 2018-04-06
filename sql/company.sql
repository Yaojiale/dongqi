-- 活动资讯表
DROP TABLE IF  EXISTS  `dq_activity`;
CREATE TABLE IF NOT EXISTS `dq_activity`(
  `activity_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid`   INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员主键',
  `title` VARCHAR (20)  NOT NULL DEFAULT '' COMMENT '标题',
  `image` VARCHAR (120)  NOT NULL DEFAULT '' COMMENT '轮播图',
  `content` TEXT NOT NULL COMMENT '文章内容',
  `created_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `is_del` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=发布;1=删除',
  PRIMARY KEY (`activity_id`) USING BTREE,
  INDEX `bulletin` (`title`,`created_time`,`is_del`) USING BTREE,
  INDEX (`image`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '活动资讯表';

-- 关于我们
DROP TABLE IF  EXISTS  `dq_about`;
CREATE TABLE IF NOT EXISTS `dq_about`(
  `about_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `aid`   INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员主键',
  `image` VARCHAR (120)  NOT NULL DEFAULT '' COMMENT '轮播图:3张',
  `content` TEXT NOT NULL COMMENT '公司介绍',
  `address` VARCHAR(50) NOT NULL COMMENT '详细地址',
  `created_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `is_del` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=发布;1=删除',
  PRIMARY KEY (`about_id`) USING BTREE,
  INDEX `bulletin` (`image`,`is_del`) USING BTREE,
  INDEX (`image`) USING BTREE,
  INDEX (`address`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '活动资讯表';