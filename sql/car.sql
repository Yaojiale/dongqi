-- 汽车分类
DROP TABLE IF  EXISTS  `dq_category`;
CREATE TABLE IF NOT EXISTS `dq_category`(
    `category_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类主键',
    `title` CHAR (11) NOT NULL DEFAULT '' COMMENT '分类名',
    `created_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
    `is_deal` TINYINT (1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=正常;1=删除',
    PRIMARY KEY (`category_id`) USING BTREE,
    INDEX `info` (`title`,`is_deal`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '汽车分类表';

-- 汽车表
DROP TABLE IF  EXISTS  `dq_car`;
CREATE TABLE IF NOT EXISTS `dq_car`(
    `car_id` INT(10) UNSIGNED NOT NULL  AUTO_INCREMENT COMMENT '汽车主键',
    `catrgory_id` INT(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT'分类主键',
    `title` CHAR (11) NOT NULL DEFAULT '' COMMENT '汽车标题',
    `banner` VARCHAR (40) NOT NULL DEFAULT '' COMMENT '展示图',
    `created_time` INT (10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
    `is_deal` TINYINT (1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=正常;1=删除',
    PRIMARY KEY (`car_id`) USING BTREE,
    INDEX `info` (`title`,`banner`,`is_deal`) USING BTREE,
    INDEX (`catrgory_id`) USING BTREE
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '汽车表';