CREATE TABLE `bank_account` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增唯一ID',
	`bank_name` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '银行名字(Bank Name)',
	`name` VARCHAR(50) NOT NULL DEFAULT '0' COMMENT '帐号名称(Name on account)',
	`account_number` VARCHAR(100) NOT NULL DEFAULT '0' COMMENT '银行帐号(Account Number)',
	`branch_location` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '支行位置(Branch Location)',
	`description` VARCHAR(255) NOT NULL DEFAULT '0' COMMENT '银行描述',
	`status` ENUM('Y','N') NOT NULL DEFAULT 'N' COMMENT '银行帐号状态',
	`ctime` DATETIME NOT NULL COMMENT '创建时间',
	`mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更改时间',
	PRIMARY KEY (`id`)
)
COMMENT='银行帐号'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=84;

CREATE TABLE `bank_account_group` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '唯一ID',
	`name` VARCHAR(50) NULL DEFAULT NULL COMMENT '组名',
	`description` VARCHAR(255) NOT NULL COMMENT '组描述',
	`status` ENUM('Y','N') NOT NULL DEFAULT 'N' COMMENT '组状态',
	`ctime` DATETIME NOT NULL COMMENT '组创建时间',
	`mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '组修改时间',
	PRIMARY KEY (`id`)
)
COMMENT='银行帐号组'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=41;

CREATE TABLE `bank_account_group_has_bank_account` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`bank_account_group_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`bank_account_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`),
	INDEX `FK_bank_account_group_has_bank_account_bank_account` (`bank_account_id`),
	INDEX `FK_bank_account_group_has_bank_account_bank_account_group` (`bank_account_group_id`),
	CONSTRAINT `FK_bank_account_group_has_bank_account_bank_account` FOREIGN KEY (`bank_account_id`) REFERENCES `bank_account` (`id`),
	CONSTRAINT `FK_bank_account_group_has_bank_account_bank_account_group` FOREIGN KEY (`bank_account_group_id`) REFERENCES `bank_account_group` (`id`)
)
COMMENT='bank_account_group 与 bank_account 的 N:M 关系'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=84;

CREATE TABLE `bank` (
	`id` INT(11) UNSIGNED NOT NULL,
	`bank_name` VARCHAR(10) NULL DEFAULT NULL,
	`account_number` VARCHAR(20) NULL DEFAULT NULL,
	`branch_location` VARCHAR(10) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;

