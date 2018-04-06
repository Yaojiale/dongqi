-- 用户openID表
DROP TABLE IF  EXISTS  `dq_user_wechat`;
CREATE TABLE IF NOT EXISTS`dq_user_wechat`(
    `user_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户主键',
    `openid` CHAR(28) NOT NULL DEFAULT '' COMMENT '用户微信ID',
    `is_freeze` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=正常;1=冻结',
    `register_time` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '注册时间',
    PRIMARY KEY (`user_id`) USING BTREE,
    INDEX (`openid`) USING BTREE,
    INDEX (`is_freeze`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '用户openID表';

-- 用户基本信息表
DROP TABLE IF  EXISTS  `dq_user_info`;
CREATE TABLE IF NOT EXISTS `dq_user_info`(
    `info_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息表主键',
    `uid` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联用户id',
    `nickname` VARCHAR (20) NOT NULL DEFAULT '' COMMENT '用户昵称:微信昵称或用户定义',
    `gender` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=未知;1=男性;2=女性',
    `avatarUrl` VARCHAR (255) NOT NULL DEFAULT '' COMMENT '用户头像:微信头像或用户定义',
    `mobile` CHAR (11) NOT NULL DEFAULT '' COMMENT '用户手机号',
    `updated_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
    PRIMARY KEY (`info_id`) USING BTREE,
    INDEX `info` (`uid`,`nickname`,`gender`) USING BTREE,
    INDEX (`avatarUrl`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '用户信息表';

-- 用户服务申请表
DROP TABLE IF  EXISTS  `dq_user_service`;
CREATE TABLE IF NOT EXISTS `dq_user_service`(
    `service_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '服务主键',
    `uid` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联用户id',
    `mobile` CHAR (11) NOT NULL DEFAULT '' COMMENT '用户手机号',
    `remark` VARCHAR (120) NOT NULL DEFAULT '' COMMENT '备注',
    `updated_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
    `is_deal` TINYINT (1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=未处理;1=已受理',
    PRIMARY KEY (`service_id`) USING BTREE,
    INDEX `info` (`uid`,`mobile`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '用户服务表';

-- 用户配件申请表
DROP TABLE IF  EXISTS  `dq_user_fitting`;
CREATE TABLE IF NOT EXISTS `dq_user_fitting`(
    `fittinge_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '服务主键',
    `uid` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '关联用户id',
    `mobile` CHAR (11) NOT NULL DEFAULT '' COMMENT '用户手机号',
    `remark` VARCHAR (120) NOT NULL DEFAULT '' COMMENT '备注',
    `updated_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
    `is_deal` TINYINT (1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=未处理;1=已受理',
    PRIMARY KEY (`fittinge_id`) USING BTREE,
    INDEX `info` (`uid`,`mobile`) USING BTREE,
    INDEX `tip` (`is_deal`,`remark`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '用户配件申请表';