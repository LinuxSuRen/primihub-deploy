-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: resource_demo1
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `resource_demo1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `resource_demo1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resource_demo1`;

--
-- Current Database: `resource_demo2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `resource_demo2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `resource_demo2`;

--
-- Current Database: `resource_demo3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `resource_demo3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `resource_demo3`;

--
-- Current Database: `nacos_config`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `nacos_config` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `nacos_config`;

--
-- Table structure for table `config_info`
--

DROP TABLE IF EXISTS `config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info`
--

LOCK TABLES `config_info` WRITE;
/*!40000 ALTER TABLE `config_info` DISABLE KEYS */;
INSERT INTO `config_info` VALUES (101,'database.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    type: com.alibaba.druid.pool.DruidDataSource\n    sql-script-encoding: utf-8\n    druid:\n      primary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo1?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      secondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo1?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourcePrimary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo1?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourceSecondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo1?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n','bc1fbb8795a977bcbe1f3ca854d8941d','2022-06-16 09:01:01','2022-06-17 09:05:06','nacos','10.244.0.0','','46b6b568-e6ae-45ca-baa1-819932fc8947','','','','yaml',''),(102,'base.json','DEFAULT_GROUP','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50051,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"选择数据集\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','41141987d9ae2de74dadbbcf1962de6f','2022-06-16 09:26:31','2022-07-19 08:00:41','nacos','118.26.65.66','','46b6b568-e6ae-45ca-baa1-819932fc8947','','','','json',''),(103,'redis.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    redis:\n      primary:\n        hostName: redis\n        port: 6379\n        password: primihub\n        database: 0\n        minIdle: 0\n        maxIdle: 10\n        maxTotal: 100\n        lifo: false\n        maxWaitMillis: 1000\n        minEvictableIdleTimeMillis: 1800000\n        softMinEvictableIdleTimeMillis: 1800000','c7410257a901774ad260e6fa8740f87a','2022-06-16 09:28:22','2022-06-17 09:18:27','nacos','10.244.0.0','','46b6b568-e6ae-45ca-baa1-819932fc8947','','','','yaml',''),(106,'database.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    type: com.alibaba.druid.pool.DruidDataSource\n    sql-script-encoding: utf-8\n    druid:\n      primary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo2?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      secondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo2?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourcePrimary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo2?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourceSecondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo2?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n','de333f9c4e8fccdf735752d168bd416d','2022-06-16 09:29:29','2022-06-17 09:20:37','nacos','10.244.0.0','','71843998-b60a-42ed-81d7-c3c9940d11c0','','','','yaml',''),(107,'base.json','DEFAULT_GROUP','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50052,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"选择数据集\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','fce165fcc850cfec7b66b3761da5c1bb','2022-06-16 09:29:29','2022-07-19 08:01:06','nacos','118.26.65.66','','71843998-b60a-42ed-81d7-c3c9940d11c0','','','','json',''),(108,'redis.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    redis:\n      primary:\n        hostName: redis\n        port: 6379\n        password: primihub\n        database: 1\n        minIdle: 0\n        maxIdle: 10\n        maxTotal: 100\n        lifo: false\n        maxWaitMillis: 1000\n        minEvictableIdleTimeMillis: 1800000\n        softMinEvictableIdleTimeMillis: 1800000','cac51f9a54a982b8210c36f1708fe486','2022-06-16 09:29:29','2022-06-17 09:21:22','nacos','10.244.0.0','','71843998-b60a-42ed-81d7-c3c9940d11c0','','','','yaml',''),(119,'organ_info.json','DEFAULT_GROUP','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway1:8080/prod-api/\",\"organId\":\"7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0\",\"organName\":\"Primihub01\",\"pinCode\":\"71HtcET1ZaUlLcLu\"}','44ea22435e59f323e9f3805218a30da8','2022-06-29 06:57:06','2022-07-04 03:45:07',NULL,'10.244.3.112','','46b6b568-e6ae-45ca-baa1-819932fc8947',NULL,NULL,NULL,'json',NULL),(121,'organ_info.json','DEFAULT_GROUP','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway2:8080/prod-api\",\"organId\":\"3abfcb2a-8335-4bcc-b6f9-704a92e392fd\",\"organName\":\"Primihub02\",\"pinCode\":\"yGxfgPu0s2Bsh5ol\"}','3f992c087337cc8c3b1d5b2a2f785e19','2022-06-29 06:58:11','2022-07-04 05:30:16',NULL,'10.244.3.113','','71843998-b60a-42ed-81d7-c3c9940d11c0',NULL,NULL,NULL,'json',NULL),(127,'database.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    type: com.alibaba.druid.pool.DruidDataSource\n    sql-script-encoding: utf-8\n    druid:\n      primary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo3?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      secondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/privacy_demo3?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourcePrimary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo3?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n      resourceSecondary:\n        driver-class-name: com.mysql.cj.jdbc.Driver\n        username: primihub\n        url: jdbc:mysql://mysql:3306/resource_demo3?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true&serverTimezone=GMT&useSSL=false\n        password: primihub@123\n        connection-properties: config.decrypt=true;config.decrypt.key=MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJI/xqbyvpVttxfAKulKeSTIb7tZAGaFcPyTnE2r7AHTQ8kOnqKXDda4u59umt9XBFxi7db28KxeVooB138zuRUCAwEAAQ==\n        filter:\n          config:\n            enabled: true\n        initial-size: 3\n        min-idle: 3\n        max-active: 20\n        max-wait: 60000\n        test-while-idle: true\n        time-between-connect-error-millis: 60000\n        min-evictable-idle-time-millis: 30000\n        validationQuery: select \'x\'\n        test-on-borrow: false\n        test-on-return: false\n        pool-prepared-statements: true\n        max-pool-prepared-statement-per-connection-size: 20\n        use-global-data-source-stat: false\n        filters: stat,wall,slf4j\n        connect-properties: druid.stat.mergeSql=true;druid.stat.slowSqlMillis=5000\n        time-between-log-stats-millis: 300000\n        web-stat-filter:\n          enabled: true\n          url-pattern: \'/*\'\n          exclusions: \'*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*\'\n        stat-view-servlet:\n          enabled: true\n          url-pattern: \'/druid/*\'\n          reset-enable: false\n          login-username: admin\n          login-password: admin\n','51397bfdb70c60a18443eda93e915a4e','2022-06-29 09:36:09','2022-06-29 10:49:44','nacos','118.26.65.66','','35674f9d-3369-42f6-9f30-c8de2535adc6','','','','yaml',''),(128,'base.json','DEFAULT_GROUP','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50052,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"选择数据集\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','fce165fcc850cfec7b66b3761da5c1bb','2022-06-29 09:36:09','2022-07-19 08:01:27','nacos','118.26.65.66','','35674f9d-3369-42f6-9f30-c8de2535adc6','','','','json',''),(129,'redis.yaml','DEFAULT_GROUP','spring:\n  datasource:\n    redis:\n      primary:\n        hostName: redis\n        port: 6379\n        password: primihub\n        database: 1\n        minIdle: 0\n        maxIdle: 10\n        maxTotal: 100\n        lifo: false\n        maxWaitMillis: 1000\n        minEvictableIdleTimeMillis: 1800000\n        softMinEvictableIdleTimeMillis: 1800000','cac51f9a54a982b8210c36f1708fe486','2022-06-29 09:36:09','2022-06-29 10:50:17','nacos','118.26.65.66','','35674f9d-3369-42f6-9f30-c8de2535adc6','','','','yaml',''),(134,'organ_info.json','DEFAULT_GROUP','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway3:8080/prod-api/\",\"organId\":\"eb734dd0-773e-411b-ba29-794e41ba0e63\",\"organName\":\"Primihub03\",\"pinCode\":\"82r0WRMBX2S8WodL\"}','1040aad81e05a349e7020be44cb7f4b0','2022-06-29 11:28:23','2022-07-04 07:28:35',NULL,'10.244.3.124','','35674f9d-3369-42f6-9f30-c8de2535adc6',NULL,NULL,NULL,'json',NULL);
/*!40000 ALTER TABLE `config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_aggr`
--

DROP TABLE IF EXISTS `config_info_aggr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_aggr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `gmt_modified` datetime NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_aggr`
--

LOCK TABLES `config_info_aggr` WRITE;
/*!40000 ALTER TABLE `config_info_aggr` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_aggr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_beta`
--

DROP TABLE IF EXISTS `config_info_beta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_beta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_beta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_beta`
--

LOCK TABLES `config_info_beta` WRITE;
/*!40000 ALTER TABLE `config_info_beta` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_beta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_tag`
--

DROP TABLE IF EXISTS `config_info_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_info_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_info_tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_tag`
--

LOCK TABLES `config_info_tag` WRITE;
/*!40000 ALTER TABLE `config_info_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tags_relation`
--

DROP TABLE IF EXISTS `config_tags_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_tags_relation` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='config_tag_relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tags_relation`
--

LOCK TABLES `config_tags_relation` WRITE;
/*!40000 ALTER TABLE `config_tags_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_tags_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_capacity`
--

DROP TABLE IF EXISTS `group_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `usage` int(10) unsigned NOT NULL DEFAULT '0',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_capacity`
--

LOCK TABLES `group_capacity` WRITE;
/*!40000 ALTER TABLE `group_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `his_config_info`
--

DROP TABLE IF EXISTS `his_config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `his_config_info` (
  `id` bigint(64) unsigned NOT NULL,
  `nid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `his_config_info`
--

LOCK TABLES `his_config_info` WRITE;
/*!40000 ALTER TABLE `his_config_info` DISABLE KEYS */;
INSERT INTO `his_config_info` VALUES (119,281,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway1/prod-api/\",\"organId\":\"7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0\",\"organName\":\"信联科技\",\"pinCode\":\"71HtcET1ZaUlLcLu\"}','213f1429118e8e4e120177b1c2d76b6a','2022-07-01 11:26:02','2022-07-01 11:26:02',NULL,'10.244.3.41','U','46b6b568-e6ae-45ca-baa1-819932fc8947'),(134,282,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway3/prod-api/\",\"organId\":\"eb734dd0-773e-411b-ba29-794e41ba0e63\",\"organName\":\"机构三\",\"pinCode\":\"82r0WRMBX2S8WodL\"}','27f692ba49b4e42f973f34ee85f6d227','2022-07-01 11:26:12','2022-07-01 11:26:12',NULL,'10.244.3.42','U','35674f9d-3369-42f6-9f30-c8de2535adc6'),(121,283,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway2/prod-api\",\"organId\":\"3abfcb2a-8335-4bcc-b6f9-704a92e392fd\",\"organName\":\"用户2\",\"pinCode\":\"yGxfgPu0s2Bsh5ol\"}','e14b062ba13923740ea1ef9644d4929c','2022-07-01 11:26:23','2022-07-01 11:26:23',NULL,'10.244.3.43','U','71843998-b60a-42ed-81d7-c3c9940d11c0'),(121,284,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway2/prod-api\",\"organId\":\"3abfcb2a-8335-4bcc-b6f9-704a92e392fd\",\"organName\":\"原语科技Primihub02\",\"pinCode\":\"yGxfgPu0s2Bsh5ol\"}','16f31c890491f3856c9e148a3fa07515','2022-07-04 01:20:18','2022-07-04 01:20:18',NULL,'10.244.3.113','U','71843998-b60a-42ed-81d7-c3c9940d11c0'),(119,285,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway1/prod-api/\",\"organId\":\"7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0\",\"organName\":\"原语科技Primihub01\",\"pinCode\":\"71HtcET1ZaUlLcLu\"}','11040e6faff3ebd45589827e0d8d7a58','2022-07-04 03:45:07','2022-07-04 03:45:07',NULL,'10.244.3.112','U','46b6b568-e6ae-45ca-baa1-819932fc8947'),(121,286,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway2/prod-api\",\"organId\":\"3abfcb2a-8335-4bcc-b6f9-704a92e392fd\",\"organName\":\"原语科技Primihub03\",\"pinCode\":\"yGxfgPu0s2Bsh5ol\"}','a779ce8f4787506b5ef601b7629ca250','2022-07-04 05:30:16','2022-07-04 05:30:16',NULL,'10.244.3.113','U','71843998-b60a-42ed-81d7-c3c9940d11c0'),(134,287,'organ_info.json','DEFAULT_GROUP','','{\"fusionMap\":{\"http://fusion:8080/\":{\"registered\":true,\"serverAddress\":\"http://fusion:8080/\",\"show\":true}},\"gatewayAddress\":\"http://gateway3/prod-api/\",\"organId\":\"eb734dd0-773e-411b-ba29-794e41ba0e63\",\"organName\":\"原语科技Primihub03\",\"pinCode\":\"82r0WRMBX2S8WodL\"}','73db794a3448d54fb02278ed999325f2','2022-07-04 07:28:34','2022-07-04 07:28:35',NULL,'10.244.3.124','U','35674f9d-3369-42f6-9f30-c8de2535adc6'),(102,288,'base.json','DEFAULT_GROUP','','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50051,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"数据对齐\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 1,\n                    \"type_code\": \"projectName\",\n                    \"type_name\": \"项目名称\",\n                    \"input_type\": \"label\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"modelName\",\n                    \"type_name\": \"模型名称\",\n                    \"input_type\": \"text\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"yField\",\n                    \"type_name\": \"Y值字段\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','f3369e8df4f95d2f4761cfe59a4437f2','2022-07-19 08:00:40','2022-07-19 08:00:41','nacos','118.26.65.66','U','46b6b568-e6ae-45ca-baa1-819932fc8947'),(107,289,'base.json','DEFAULT_GROUP','','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50052,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"数据对齐\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 1,\n                    \"type_code\": \"projectName\",\n                    \"type_name\": \"项目名称\",\n                    \"input_type\": \"label\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"modelName\",\n                    \"type_name\": \"模型名称\",\n                    \"input_type\": \"text\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"yField\",\n                    \"type_name\": \"Y值字段\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','513a6c6aa4d450fd16b9e1fb46e5f5fc','2022-07-19 08:01:05','2022-07-19 08:01:06','nacos','118.26.65.66','U','71843998-b60a-42ed-81d7-c3c9940d11c0'),(128,290,'base.json','DEFAULT_GROUP','','{\n    \"tokenValidateUriBlackList\":[\n        \"/user/login\",\n        \"/common/getValidatePublicKey\",\n        \"/shareData/syncProject\"\n    ],\n    \"needSignUriList\":[\n\n    ],\n    \"defaultPassword\":\"123456\",\n    \"defaultPasswordVector\":\"excalibur\",\n    \"grpcClientAddress\": \"primihubnode\",\n    \"grpcClientPort\": 50050,\n    \"grpcDataSetClientAddress\": \"primihubnode\",\n    \"grpcDataSetClientPort\": 50052,\n    \"grpcDataSet1ClientPort\": 50052,\n    \"grpcServerPort\": 9090,\n    \"uploadUrlDirPrefix\": \"/data/upload/\",\n    \"resultUrlDirPrefix\": \"/data/result/\",\n    \"runModelFileUrlDirPrefix\": \"/data/result/runModel/\",\n    \"usefulToken\": \"excalibur_forever_ABCDEFGHIJKLMN\",\n    \"model_components\":[\n        {\n            \"component_code\": \"dataAlignment\",\n            \"component_name\": \"数据对齐\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 1,\n                    \"type_code\": \"projectName\",\n                    \"type_name\": \"项目名称\",\n                    \"input_type\": \"label\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"modelName\",\n                    \"type_name\": \"模型名称\",\n                    \"input_type\": \"text\",\n                    \"input_value\": \"\"\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"selectData\",\n                    \"type_name\": \"选择数据\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                },{\n                    \"is_show\": 0,\n                    \"type_code\": \"yField\",\n                    \"type_name\": \"Y值字段\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": []\n                }\n            ]\n        },{\n            \"component_code\": \"features\",\n            \"component_name\": \"特征筛选\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"features\",\n                    \"type_name\": \"特征筛选\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"唯一值筛选\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"缺失值比例筛选\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"IV值筛选\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"相关性筛选\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"用户自定义筛选\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"sample\",\n            \"component_name\": \"样本抽样设计\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"sample\",\n                    \"type_name\": \"样本抽样设计\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"最大/最小样本\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"提出灰样本\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"处理样本不均衡和分层\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"exception\",\n            \"component_name\": \"异常处理\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"exception\",\n                    \"type_name\": \"异常处理\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"删除\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"视为缺失值\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"平均值修正\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"盖帽法\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"分箱法\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"回归插补\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"多重插补\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"不处理\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"featureCoding\",\n            \"component_name\": \"特征编码\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"featureCoding\",\n                    \"type_name\": \"特征编码\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"1\",\n                            \"val\": \"标签编码\"\n                        },{\n                            \"key\": \"2\",\n                            \"val\": \"哈希编码\"\n                        },{\n                            \"key\": \"3\",\n                            \"val\": \"独热编码\"\n                        },{\n                            \"key\": \"4\",\n                            \"val\": \"计数编码\"\n                        },{\n                            \"key\": \"5\",\n                            \"val\": \"直方图编码\"\n                        },{\n                            \"key\": \"6\",\n                            \"val\": \"WOE编码\"\n                        },{\n                            \"key\": \"7\",\n                            \"val\": \"目标编码\"\n                        },{\n                            \"key\": \"8\",\n                            \"val\": \"平均编码\"\n                        },{\n                            \"key\": \"9\",\n                            \"val\": \"模型编码\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"model\",\n            \"component_name\": \"模型选择\",\n            \"is_show\": 0,\n            \"is_mandatory\": 0,\n            \"component_types\": [\n                {\n                    \"is_show\": 0,\n                    \"type_code\": \"modelType\",\n                    \"type_name\": \"模型选择\",\n                    \"input_type\": \"select\",\n                    \"input_value\": \"\",\n                    \"input_values\": [\n                        {\n                            \"key\": \"2\",\n                            \"val\": \"V-XGBoost\"\n                        }\n                    ]\n                }\n            ]\n        },{\n            \"component_code\": \"assessment\",\n            \"component_name\": \"评估模型\",\n            \"is_show\": 0,\n            \"is_mandatory\": 1,\n            \"component_types\": []\n        }\n    ]\n}','513a6c6aa4d450fd16b9e1fb46e5f5fc','2022-07-19 08:01:26','2022-07-19 08:01:27','nacos','118.26.65.66','U','35674f9d-3369-42f6-9f30-c8de2535adc6');
/*!40000 ALTER TABLE `his_config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `action` varchar(8) NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `idx_user_role` (`username`,`role`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('nacos','ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_capacity`
--

DROP TABLE IF EXISTS `tenant_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_capacity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `usage` int(10) unsigned NOT NULL DEFAULT '0',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `max_aggr_count` int(10) unsigned NOT NULL DEFAULT '0',
  `max_aggr_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0',
  `max_history_count` int(10) unsigned NOT NULL DEFAULT '0',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_capacity`
--

LOCK TABLES `tenant_capacity` WRITE;
/*!40000 ALTER TABLE `tenant_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_info`
--

DROP TABLE IF EXISTS `tenant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint(20) NOT NULL,
  `gmt_modified` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='tenant_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_info`
--

LOCK TABLES `tenant_info` WRITE;
/*!40000 ALTER TABLE `tenant_info` DISABLE KEYS */;
INSERT INTO `tenant_info` VALUES (3,'1','46b6b568-e6ae-45ca-baa1-819932fc8947','demo1','demo1','nacos',1655369938742,1655369938742),(4,'1','71843998-b60a-42ed-81d7-c3c9940d11c0','demo2','demo2','nacos',1655369947525,1655369947525),(5,'1','35674f9d-3369-42f6-9f30-c8de2535adc6','demo3','demo3','nacos',1656495327434,1656495327434);
/*!40000 ALTER TABLE `tenant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('nacos','$2a$10$EuWPZHzz32dJN7jexM34MOeYirDdFAZm2kuWj7VEOJhhZkDrxfvUu',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `fusion_demo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fusion_demo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fusion_demo`;

--
-- Table structure for table `data_fusion_copy_task`
--

DROP TABLE IF EXISTS `data_fusion_copy_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_fusion_copy_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_type` tinyint(4) NOT NULL COMMENT '任务类型 1 批量 2 单条',
  `current_offset` bigint(20) NOT NULL COMMENT '当前偏移量',
  `target_offset` bigint(20) NOT NULL COMMENT '目标便宜量',
  `task_table` varchar(64) NOT NULL COMMENT '复制任务表名',
  `fusion_server_address` varchar(64) NOT NULL COMMENT '连接中心地址',
  `latest_error_msg` varchar(1024) NOT NULL COMMENT '最近一次复制失败原因',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `current_offset_ix` (`current_offset`) USING BTREE,
  KEY `target_offset_ix` (`target_offset`) USING BTREE,
  KEY `c_time_ix` (`c_time`) USING BTREE,
  KEY `u_time_ix` (`u_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_fusion_copy_task`
--

LOCK TABLES `data_fusion_copy_task` WRITE;
/*!40000 ALTER TABLE `data_fusion_copy_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_fusion_copy_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_go`
--

DROP TABLE IF EXISTS `fusion_go`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_go` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_id` bigint(20) NOT NULL COMMENT '群组id',
  `organ_global_id` varchar(64) NOT NULL COMMENT '机构唯一id',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `group_id_and global_id_ix` (`group_id`,`organ_global_id`) USING BTREE,
  KEY `group_id_ix` (`group_id`) USING BTREE,
  KEY `global_id_ix` (`organ_global_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_go`
--

LOCK TABLES `fusion_go` WRITE;
/*!40000 ALTER TABLE `fusion_go` DISABLE KEYS */;
INSERT INTO `fusion_go` VALUES (2,1,'7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:59:51.959','2022-06-29 06:59:51.959'),(5,2,'eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-04 09:44:04.469','2022-07-04 09:44:04.469'),(7,1,'eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-04 09:49:56.932','2022-07-04 09:49:56.932'),(9,1,'3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-04 11:04:26.621','2022-07-04 11:04:26.621'),(10,2,'3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-05 03:18:04.235','2022-07-05 03:18:04.235'),(11,3,'3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-06 02:42:39.478','2022-07-06 02:42:39.478');
/*!40000 ALTER TABLE `fusion_go` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_group`
--

DROP TABLE IF EXISTS `fusion_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_name` varchar(64) NOT NULL COMMENT '群组名称',
  `group_organ_id` varchar(64) NOT NULL COMMENT '群主id',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_group`
--

LOCK TABLES `fusion_group` WRITE;
/*!40000 ALTER TABLE `fusion_group` DISABLE KEYS */;
INSERT INTO `fusion_group` VALUES (1,'企业1','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:59:04.428','2022-06-29 06:59:04.428'),(2,'群组二','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-04 09:44:04.467','2022-07-04 09:44:04.467'),(3,'zane test','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-06 02:42:39.476','2022-07-06 02:42:39.476');
/*!40000 ALTER TABLE `fusion_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_organ`
--

DROP TABLE IF EXISTS `fusion_organ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_organ` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `global_id` varchar(64) NOT NULL COMMENT '唯一id',
  `global_name` varchar(64) NOT NULL COMMENT '机构名称',
  `pin_code_md` varchar(64) NOT NULL COMMENT 'pin码md5',
  `gateway_address` varchar(255) NOT NULL COMMENT '网关地址',
  `register_time` datetime(3) NOT NULL COMMENT '注册时间',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `global_id_ix` (`global_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_organ`
--

LOCK TABLES `fusion_organ` WRITE;
/*!40000 ALTER TABLE `fusion_organ` DISABLE KEYS */;
INSERT INTO `fusion_organ` VALUES (1,'7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0','Primihub01','98E2104F2B75D3F1B03CABE884774A4B','http://gateway1/prod-api/','2022-06-29 14:57:14.344',0,'2022-06-29 06:57:14.439','2022-07-04 03:45:07.449'),(2,'3abfcb2a-8335-4bcc-b6f9-704a92e392fd','Primihub02','7F852120E99F8E351186AE92EF68C650','http://gateway2/prod-api','2022-06-29 14:58:21.635',0,'2022-06-29 06:58:21.636','2022-07-04 05:30:16.289'),(3,'eb734dd0-773e-411b-ba29-794e41ba0e63','Primihub03','42CEC0EBB928AF1418FAD01D22FDDF42','http://gateway3/prod-api/','2022-06-29 19:28:38.090',0,'2022-06-29 11:28:38.093','2022-07-04 07:28:34.797');
/*!40000 ALTER TABLE `fusion_organ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_public_ro`
--

DROP TABLE IF EXISTS `fusion_public_ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_public_ro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `organ_id` varchar(255) DEFAULT NULL COMMENT '机构ID',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resource_id_ix` (`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_public_ro`
--

LOCK TABLES `fusion_public_ro` WRITE;
/*!40000 ALTER TABLE `fusion_public_ro` DISABLE KEYS */;
/*!40000 ALTER TABLE `fusion_public_ro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_resource`
--

DROP TABLE IF EXISTS `fusion_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `resource_id` varchar(64) DEFAULT NULL COMMENT '资源ID',
  `resource_name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `resource_desc` varchar(255) DEFAULT NULL COMMENT '资源描述',
  `resource_type` tinyint(4) DEFAULT NULL COMMENT '资源类型 上传...',
  `resource_auth_type` tinyint(4) DEFAULT NULL COMMENT '授权类型（公开，私有，可见性）',
  `resource_rows_count` int(11) DEFAULT NULL COMMENT '资源行数',
  `resource_column_count` int(11) DEFAULT NULL COMMENT '资源列数',
  `resource_column_name_list` blob COMMENT '字段列表',
  `resource_contains_y` tinyint(4) DEFAULT NULL COMMENT '资源字段中是否包含y字段 0否 1是',
  `resource_y_rows_count` int(11) DEFAULT NULL COMMENT '文件字段y值内容不为空和0的行数',
  `resource_y_ratio` decimal(10,2) DEFAULT NULL COMMENT '文件字段y值内容不为空的行数在总行的占比',
  `resource_tag` varchar(255) DEFAULT NULL COMMENT '资源标签 格式tag,tag',
  `organ_id` varchar(64) DEFAULT NULL COMMENT '机构ID',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `resource_id_ix` (`resource_id`) USING BTREE,
  KEY `organ_id_ix` (`organ_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_resource`
--

LOCK TABLES `fusion_resource` WRITE;
/*!40000 ALTER TABLE `fusion_resource` DISABLE KEYS */;
INSERT INTO `fusion_resource` VALUES (1,'ea5fd5f5f9f0-368cf3e8-46b4-49b3-81d4-9ac3e366af16','私有资源','我demo1自己的，谁都不见哈哈哈哈',1,2,32,1,_binary 'guaranteetype',NULL,NULL,NULL,'私有','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(2,'ea5fd5f5f9f0-efdb6b65-841d-4a75-8159-d0f526e00b28','psi求交资源demo1','demo的求交资源01',1,1,10,1,_binary 'company',NULL,NULL,NULL,'demo101','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(3,'ea5fd5f5f9f0-7ca16f02-b07e-41da-94cc-926a50ce4a26','psi 测试数据client_e1','client_e1',1,1,10,1,_binary 'company',NULL,NULL,NULL,'psi','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(4,'ea5fd5f5f9f0-7a983261-e46a-4435-87f5-855272f52720','demo1psi01','demo1psi01',1,1,10,1,_binary 'company',NULL,NULL,NULL,'demo1psi01','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(5,'ea5fd5f5f9f0-177cad58-4ee2-4b3f-87ab-7ac6077c9c21','pir','pir测试资源',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(6,'ea5fd5f5f9f0-05752362-d60b-4229-be56-845fc04eea40','pir新数据','pir新数据',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-29 07:10:00.000'),(7,'ea5fd5f5f9f0-4a893e19-6962-4619-9340-d5a1296b744c','psi','psi',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'111','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:57:14.000','2022-06-30 07:40:00.000'),(8,'704a92e392fd-f9bb4aca-8cd5-48da-9615-540c77c6e4b5','我自己的，不给你们看','我自己的，不给你们看',1,2,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'222','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:58:21.000','2022-06-29 07:10:00.000'),(9,'704a92e392fd-c345895a-86ea-4012-bdec-5d8d621f9574','psi求交资源demo2','demo的求交资源02',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'demo201','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:58:21.000','2022-06-29 07:10:00.000'),(10,'704a92e392fd-b1a2301e-0f00-4b7f-8bdf-bf8c15c42317','psi测试数据server_e1','server_e1',1,1,45,1,_binary 'guaranteetype',NULL,NULL,NULL,'psi','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:58:21.000','2022-06-29 07:10:00.000'),(11,'704a92e392fd-185ba954-4939-4a88-954b-8a85f767a0a1','demo2psi01','demo2psi01',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'demo2psi01','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:58:21.000','2022-06-29 07:10:00.000'),(12,'704a92e392fd-0e959113-6c18-442b-ac58-f95114c06185','psi2','psi',1,1,10,1,_binary 'company',NULL,NULL,NULL,'dd','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 06:58:21.000','2022-06-29 07:12:45.000'),(13,'ea5fd5f5f9f0-1c4a1cdc-48f8-48b3-ae30-a0025002897d','pri测试','pir测试',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 06:59:23.000','2022-06-30 07:40:00.000'),(14,'704a92e392fd-9231e799-0a70-49e2-b050-8b4bae4421fa','pir','pir',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 07:03:12.000','2022-06-29 07:30:00.000'),(15,'ea5fd5f5f9f0-8815021d-8b23-40e9-b5f3-057d1d8e5666','PSI1','PSI1',1,1,10,1,_binary 'company',NULL,NULL,NULL,'1','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 07:24:08.000','2022-06-30 07:40:00.000'),(16,'704a92e392fd-82003b16-2db3-4b3d-a03c-65635907d13b','PSI2','PSI2',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'2','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 07:24:33.000','2022-06-30 05:00:00.000'),(17,'704a92e392fd-87fbe004-2ecb-4953-8dc5-660ad37957b0','PIR','PIR',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'PIR','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 07:29:31.000','2022-07-18 03:40:00.000'),(18,'ea5fd5f5f9f0-60be2ae2-3776-4716-a829-c37290074f7d','wisconsin_guest','wisconsin_guest',1,1,699,2,_binary 'Clump Thickness,Uniformity of Cell Size',NULL,NULL,NULL,'g','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-29 08:19:44.000','2022-06-30 07:40:00.000'),(19,'704a92e392fd-377a071e-c7ef-4426-b887-4b60d100e15c','wisconsin_host','wisconsin_host',1,1,699,8,_binary 'Uniformity of Cell Shape,Marginal Adhesion,Single Epithelial Cell Size,Bare Nuclei,Bland Chromatin,Normal Nucleoli,Mitoses,Class',NULL,NULL,NULL,'h','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-29 08:20:23.000','2022-06-30 02:20:00.000'),(20,'794e41ba0e63-acb7bf93-ef24-4f6e-a14a-0d415248565e','333','3333',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'333','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-06-30 06:25:35.000','2022-06-30 07:40:00.000'),(21,'ea5fd5f5f9f0-fe700425-3c39-4de6-b84b-dd35e291dac4','持久化新数据pir','持久化新数据pir',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-30 06:50:48.000','2022-06-30 07:40:00.000'),(22,'ea5fd5f5f9f0-59748b95-cd3f-44c3-9203-c6b48e24805a','持久化新数据psi','持久化新数据psi',1,1,10,1,_binary 'company',NULL,NULL,NULL,'PSI','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-30 06:51:26.000','2022-06-30 07:40:00.000'),(23,'704a92e392fd-095c0355-61a5-40b7-8c74-189528688279','持久化新数据psi2','持久化新数据psi2',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'psi','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-30 06:52:07.000','2022-06-30 07:40:00.000'),(24,'704a92e392fd-d7b79c55-503a-4113-8ebd-e7dc7d19bdd3','持久化新数据pir','持久化新数据pir',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-30 06:53:22.000','2022-06-30 07:40:00.000'),(25,'794e41ba0e63-04d65c6b-3f90-4df5-96cb-637b9275668b','储存了吗','储存了吗',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'哇哦','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-06-30 11:12:59.000','2022-06-30 11:50:00.000'),(26,'794e41ba0e63-fb05ac21-4ff4-4c2b-975f-d908cee338ea','onepsi','222',1,1,10,1,_binary 'company',NULL,NULL,NULL,'psi','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-06-30 11:23:29.000','2022-06-30 11:30:00.000'),(27,'ea5fd5f5f9f0-a33baaf9-bae4-440d-aae9-1bf75134389e','twopsi','2222',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'222','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-30 11:23:51.000','2022-06-30 11:30:00.000'),(28,'794e41ba0e63-c2ca9a07-db64-4e1e-b070-4e798e9234f3','pir新数据','pir新数据',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-06-30 11:38:00.000','2022-07-01 11:40:00.000'),(29,'704a92e392fd-98ccad28-eccf-4cd1-9fd1-f3b95ac16be1','psi111','11111',1,1,10,1,_binary 'company',NULL,NULL,NULL,'111','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-06-30 11:42:08.000','2022-07-11 03:10:00.000'),(30,'ea5fd5f5f9f0-2866d0a5-9623-4af9-af19-d49bcdc2b783','psi222','哈222',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'22','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-06-30 11:42:40.000','2022-06-30 13:10:00.000'),(31,'ea5fd5f5f9f0-e6a95ed0-2ce9-4669-9a0f-74b6ed73a7e1','888','88',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'88','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-01 11:18:28.000','2022-07-01 11:30:00.000'),(32,'ea5fd5f5f9f0-e1600ee3-11bf-418d-875a-fc602879e2f4','999','999',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'999','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-01 11:27:04.000','2022-07-01 12:10:00.000'),(33,'794e41ba0e63-43bde033-b5a5-4551-a8c3-75d957fee4e0','pir','pir',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-01 12:07:03.000','2022-07-01 12:20:00.000'),(34,'704a92e392fd-e1bd0dbe-e782-4036-b741-b9cec0d7a91f','12312','12312',1,1,41,1,_binary 'pip==22.0.4',NULL,NULL,NULL,'1231231232','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-04 01:17:13.000','2022-07-04 01:30:00.000'),(35,'704a92e392fd-35af0d95-9b8c-45ee-baf1-d1e61003fa60','test','test',1,1,41,1,_binary 'pip==22.0.4',NULL,NULL,NULL,'1','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-04 02:06:42.000','2022-07-04 02:10:00.000'),(36,'ea5fd5f5f9f0-7616c46d-bb85-4202-9186-d97c0a286eb4','移动在网数据','222',1,1,569,12,_binary 'id,y,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9',1,357,62.74,'移动','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-07 08:17:22.000','2022-07-07 08:30:00.000'),(37,'ea5fd5f5f9f0-1183f807-ebd8-4e14-a904-a3855bcce5f7','test resource','111',1,3,6446,25,_binary 'id,y,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22',1,31,0.48,'1','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-07 09:33:29.000','2022-07-11 07:10:00.000'),(38,'ea5fd5f5f9f0-bd49b3d8-2a49-4a2f-9ff0-31fb69d362ee','psi01','0111',1,3,10,1,_binary 'company',NULL,NULL,NULL,'01','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-07 12:38:51.000','2022-07-15 07:40:00.000'),(39,'704a92e392fd-22568f0c-df20-49a9-8022-b343f92c5c92','psi02','022',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'02','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-07 12:39:16.000','2022-07-09 05:10:00.000'),(40,'ea5fd5f5f9f0-143a59a7-bf3c-4bcd-a312-a106e15c66d9','pir','pir',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'pir','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-07 12:43:15.000','2022-07-07 12:50:00.000'),(41,'794e41ba0e63-3a83be70-194b-4f78-a5f6-12dcaecce6d6','pir中文','中文数据',1,1,20,1,_binary 'guaranteetype',NULL,NULL,NULL,'中文','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-08 11:14:47.000','2022-07-08 11:40:01.000'),(42,'704a92e392fd-b4a95adf-2f79-4225-a6ff-1140a15eb4e8','wisconsin_host.data','wisconsin_host.data',1,1,699,8,_binary 'Uniformity of Cell Shape,Marginal Adhesion,Single Epithelial Cell Size,Bare Nuclei,Bland Chromatin,Normal Nucleoli,Mitoses,Class',NULL,NULL,NULL,'1','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-09 06:10:51.000','2022-07-18 03:40:00.000'),(43,'ea5fd5f5f9f0-fef1ca00-8405-40dd-86e7-d07f674ce3f3','wisconsin_guest.csv','wisconsin_guest.csv',1,1,699,2,_binary 'Clump Thickness,Uniformity of Cell Size',NULL,NULL,NULL,'2','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-09 06:12:32.000','2022-07-09 06:20:00.000'),(44,'ea5fd5f5f9f0-e7c60724-b54e-4c65-ac2b-40f34855dbd9','wew','wewewe',1,1,10668,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'wewe','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-09 06:34:36.000','2022-07-09 06:40:00.000'),(45,'ea5fd5f5f9f0-012515c9-20ea-4377-bff7-9030b9d97dca','wew2','wew2',1,1,3,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'22','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-09 06:41:23.000','2022-07-09 06:50:00.000'),(46,'704a92e392fd-636ef259-2f55-4a78-91df-666399dd0f09','wew2','wewe2',1,1,3,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'222','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-09 06:45:34.000','2022-07-18 03:40:00.000'),(47,'ea5fd5f5f9f0-ff02f012-5d9a-4a6c-af3e-97e17e954a90','mytest2','mytest2',1,1,10668,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'mt1,mytest2','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-09 07:50:25.000','2022-07-09 16:00:00.000'),(48,'704a92e392fd-250cc5f3-ae3e-4fae-8bf2-e3168aba0c5e','mytest3','mytest3',1,1,3,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'mt2,mytest3','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-09 07:51:10.000','2022-07-09 16:00:00.000'),(49,'ea5fd5f5f9f0-dff6e02b-39c2-464f-b04f-c25e249a4ef2','mytest','mytest',1,1,7,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'mt11,mytest','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-09 07:56:57.000','2022-07-09 16:00:00.000'),(50,'ea5fd5f5f9f0-90ef6e04-5f02-4bc2-81a8-6c3d6aeb0ba9','s11','s11',1,1,68,2,_binary 'guaranteetype,warrantee',NULL,NULL,NULL,'s1','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-10 03:55:13.000','2022-07-10 04:00:00.000'),(51,'704a92e392fd-cbc81f36-49a0-46df-a297-008b5d268b90','s22','s22',1,1,68,2,_binary 'guaranteetype,warrantee',NULL,NULL,NULL,'s2','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-10 03:56:30.000','2022-07-18 03:40:00.000'),(52,'ea5fd5f5f9f0-fb93d21f-82e8-4737-801f-405283466743','A11','A11',1,1,7,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'A11','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-10 14:03:41.000','2022-07-12 01:50:00.000'),(53,'704a92e392fd-a61258f0-0ce2-4ff1-93a8-5008f933ee23','A22','A22',1,1,3,9,_binary 'model,year,price,transmission,mileage,fuelType,tax,mpg,engineSize',NULL,NULL,NULL,'A22','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-10 14:05:55.000','2022-07-18 03:20:00.000'),(54,'704a92e392fd-0da34b7e-9d38-4f9d-bf79-5c37f591ff38','测试数据','测试数据',1,1,9,12,_binary 'seq,marital,race,age,histologic,CT,CN,CM,ER,PR,HER2,RX',NULL,NULL,NULL,'测试2','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-11 08:07:24.000','2022-07-18 03:20:00.000'),(55,'704a92e392fd-5b27a73e-1616-4ee3-ad7d-04eedb3f10a8','seer数据','seer数据',1,1,9,13,_binary 'seq,marital,race,age,histologic,CT,CN,CM,ER,PR,HER2,RX,y',1,4,44.44,'seer数据','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-11 08:09:27.000','2022-07-18 03:20:00.000'),(56,'704a92e392fd-fc9119c2-c361-4701-9362-00460a3e95b0','yfan_test01','yfan_test01',1,1,9,13,_binary 'seq,marital,race,age,histologic,CT,CN,CM,ER,PR,HER2,RX,y',1,4,44.44,'yfan_test0','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-11 08:27:32.000','2022-07-18 03:20:00.000'),(57,'794e41ba0e63-92d6aaf1-2abe-46d9-8320-db3a7abfae4d','demo3_yfan','demo3_yfan',1,1,9,13,_binary 'seq,marital,race,age,histologic,CT,CN,CM,ER,PR,HER2,RX,y',1,4,44.44,'demo3_yfan','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-11 08:45:08.000','2022-07-11 08:50:00.000'),(58,'794e41ba0e63-74d57b0e-d3d4-40d9-931e-2fa48f8bdeaf','demo04','demo04',1,1,9,13,_binary 'seq,marital1,race1,age1,histologic,CT1,CN1,CM1,ER1,PR1,HER21,RX1,y',1,4,44.44,'demo04','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-11 11:59:53.000','2022-07-11 12:10:00.000'),(59,'ea5fd5f5f9f0-d771ed2c-480d-45ab-b9b6-a08f95c77a8d','psi测试','psi',1,1,569,12,_binary 'id,y,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9',1,357,62.74,'a','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-13 03:49:01.000','2022-07-13 05:50:00.000'),(60,'704a92e392fd-e574b4b3-a186-42e9-8cc0-feb48942a466','psi测试','psi',1,1,569,21,_binary 'id,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19',NULL,NULL,NULL,'a','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-13 03:49:48.000','2022-07-18 03:20:00.000'),(61,'ea5fd5f5f9f0-8ba68b34-865c-4259-a0bb-1f43b2121ff2','test编辑','111',1,3,6446,25,_binary 'id,y,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22',1,31,0.48,'1','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-15 07:29:34.000','2022-07-15 07:40:00.000'),(62,'ea5fd5f5f9f0-a7dd4bba-782f-447f-8871-d26bef4dcab3','r r r','r r r',1,1,10,1,_binary 'company',NULL,NULL,NULL,'r r','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-15 07:36:24.000','2022-07-15 07:40:00.000'),(63,'ea5fd5f5f9f0-3eb4ed3a-35f7-44bf-9736-9fe9bdf039b6','ceshi','cs',1,1,10,1,_binary 'company',NULL,NULL,NULL,'cs','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-15 11:00:17.000','2022-07-15 11:10:00.000'),(64,'ea5fd5f5f9f0-0f9df64b-2b5e-427a-9c99-7ccc9a576202','银行测试','银行测试',1,1,68,2,_binary 'guaranteetype,warrantee',NULL,NULL,NULL,'银行测试','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-18 04:35:06.000','2022-07-18 04:40:00.000'),(65,'704a92e392fd-f46cfcde-3e46-4fc4-8f19-25feb6357a02','银行测试2','银行测试2',1,1,10,6,_binary 'company,id,executed amount,execution court,date,case number',NULL,NULL,NULL,'银行测试2','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-18 04:35:39.000','2022-07-18 04:40:00.000'),(66,'704a92e392fd-54f3fe5d-3fb3-489c-9e9e-c5e2a867273f','pir测试','pir测试',1,1,569,13,_binary 'id1,id,y,x0,x1,x2,x3,x4,x5,x6,x7,x8,x9',1,357,62.74,'pir','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-19 07:17:18.000','2022-07-19 07:30:00.000'),(67,'ea5fd5f5f9f0-d3757b4f-1832-408a-9025-d2ea6428fe89','psi','psi',1,1,10,1,_binary 'company',NULL,NULL,NULL,'psi','7aeeb3aa-75cc-4e40-8692-ea5fd5f5f9f0',0,'2022-07-19 12:09:36.000','2022-07-19 12:20:00.000'),(68,'704a92e392fd-d9d0bd89-203d-4849-bdf8-ff313fc6dbe1','psi2','psi2',1,1,83,2,_binary 'guaranteetype,company',NULL,NULL,NULL,'psi','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-19 12:10:04.000','2022-07-19 12:20:00.000');
/*!40000 ALTER TABLE `fusion_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_resource_field`
--

DROP TABLE IF EXISTS `fusion_resource_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_resource_field` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字段id',
  `resource_id` bigint(20) DEFAULT NULL COMMENT '资源id',
  `field_name` varchar(255) DEFAULT NULL COMMENT '字段名称',
  `field_as` varchar(255) DEFAULT NULL COMMENT '字段别名',
  `field_type` int(11) DEFAULT '0' COMMENT '字段类型 默认0 string',
  `field_desc` varchar(255) DEFAULT NULL COMMENT '字段描述',
  `relevance` int(11) DEFAULT '0' COMMENT '关键字 0否 1是',
  `grouping` int(11) DEFAULT '0' COMMENT '分组 0否 1是',
  `protection_status` int(11) DEFAULT '0' COMMENT '保护开关 0关闭 1开启',
  `is_del` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '修改时间',
  PRIMARY KEY (`field_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_resource_field`
--

LOCK TABLES `fusion_resource_field` WRITE;
/*!40000 ALTER TABLE `fusion_resource_field` DISABLE KEYS */;
INSERT INTO `fusion_resource_field` VALUES (1,67,'company',NULL,0,NULL,1,1,1,0,'2022-07-19 12:09:36.000','2022-07-19 12:20:00.000'),(2,68,'guaranteetype',NULL,0,NULL,0,0,0,0,'2022-07-19 12:10:04.000','2022-07-19 12:10:04.000'),(3,68,'company',NULL,0,NULL,1,1,1,0,'2022-07-19 12:10:04.000','2022-07-19 12:20:00.000'),(4,68,'guaranteetype',NULL,0,NULL,0,0,0,0,'2022-07-19 12:20:00.000','2022-07-19 12:20:00.000');
/*!40000 ALTER TABLE `fusion_resource_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_resource_tag`
--

DROP TABLE IF EXISTS `fusion_resource_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_resource_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(255) DEFAULT NULL COMMENT '标签名称',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_resource_tag`
--

LOCK TABLES `fusion_resource_tag` WRITE;
/*!40000 ALTER TABLE `fusion_resource_tag` DISABLE KEYS */;
INSERT INTO `fusion_resource_tag` VALUES (1,'111',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(2,'demo101',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(3,'私有',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(4,'psi',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(5,'demo1psi01',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(6,'pir',0,'2022-06-29 06:57:14.000','2022-06-29 06:57:14.000'),(7,'dd',0,'2022-06-29 06:58:21.000','2022-06-29 06:58:21.000'),(8,'222',0,'2022-06-29 06:58:21.000','2022-06-29 06:58:21.000'),(9,'psi',0,'2022-06-29 06:58:21.000','2022-06-29 06:58:21.000'),(10,'demo201',0,'2022-06-29 06:58:21.000','2022-06-29 06:58:21.000'),(11,'demo2psi01',0,'2022-06-29 06:58:21.000','2022-06-29 06:58:21.000'),(12,'pir',0,'2022-06-29 06:59:23.000','2022-06-29 06:59:23.000'),(13,'pir',0,'2022-06-29 07:03:12.000','2022-06-29 07:03:12.000'),(14,'1',0,'2022-06-29 07:24:08.000','2022-06-29 07:24:08.000'),(15,'2',0,'2022-06-29 07:24:33.000','2022-06-29 07:24:33.000'),(16,'PIR',0,'2022-06-29 07:29:31.000','2022-06-29 07:29:31.000'),(17,'g',0,'2022-06-29 08:19:44.000','2022-06-29 08:19:44.000'),(18,'h',0,'2022-06-29 08:20:23.000','2022-06-29 08:20:23.000'),(19,'333',0,'2022-06-30 06:25:35.000','2022-06-30 06:25:35.000'),(20,'pir',0,'2022-06-30 06:50:48.000','2022-06-30 06:50:48.000'),(21,'PSI',0,'2022-06-30 06:51:26.000','2022-06-30 06:51:26.000'),(22,'psi',0,'2022-06-30 06:52:07.000','2022-06-30 06:52:07.000'),(23,'pir',0,'2022-06-30 06:53:22.000','2022-06-30 06:53:22.000'),(24,'哇哦',0,'2022-06-30 11:12:59.000','2022-06-30 11:12:59.000'),(25,'psi',0,'2022-06-30 11:23:29.000','2022-06-30 11:23:29.000'),(26,'222',0,'2022-06-30 11:23:51.000','2022-06-30 11:23:51.000'),(27,'pir',0,'2022-06-30 11:38:00.000','2022-06-30 11:38:00.000'),(28,'111',0,'2022-06-30 11:42:08.000','2022-06-30 11:42:08.000'),(29,'22',0,'2022-06-30 11:42:40.000','2022-06-30 11:42:40.000'),(30,'88',0,'2022-07-01 11:18:28.000','2022-07-01 11:18:28.000'),(31,'999',0,'2022-07-01 11:27:04.000','2022-07-01 11:27:04.000'),(32,'pir',0,'2022-07-01 12:07:03.000','2022-07-01 12:07:03.000'),(33,'1231231232',0,'2022-07-04 01:17:13.000','2022-07-04 01:17:13.000'),(34,'1',0,'2022-07-04 02:06:42.000','2022-07-04 02:06:42.000'),(35,'移动',0,'2022-07-07 08:17:22.000','2022-07-07 08:17:22.000'),(36,'1',0,'2022-07-07 09:33:29.000','2022-07-07 09:33:29.000'),(37,'01',0,'2022-07-07 12:38:51.000','2022-07-07 12:38:51.000'),(38,'02',0,'2022-07-07 12:39:16.000','2022-07-07 12:39:16.000'),(39,'pir',0,'2022-07-07 12:43:15.000','2022-07-07 12:43:15.000'),(40,'中文',0,'2022-07-08 11:14:47.000','2022-07-08 11:14:47.000'),(41,'1',0,'2022-07-09 06:10:51.000','2022-07-09 06:10:51.000'),(42,'2',0,'2022-07-09 06:12:32.000','2022-07-09 06:12:32.000'),(43,'wewe',0,'2022-07-09 06:34:36.000','2022-07-09 06:34:36.000'),(44,'22',0,'2022-07-09 06:41:23.000','2022-07-09 06:41:23.000'),(45,'222',0,'2022-07-09 06:45:34.000','2022-07-09 06:45:34.000'),(46,'mt1',0,'2022-07-09 07:50:25.000','2022-07-09 07:50:25.000'),(47,'mt2',0,'2022-07-09 07:51:10.000','2022-07-09 07:51:10.000'),(48,'mt11',0,'2022-07-09 07:56:57.000','2022-07-09 07:56:57.000'),(49,'mytest',0,'2022-07-09 15:50:52.000','2022-07-09 15:50:52.000'),(50,'mytest2',0,'2022-07-09 15:51:38.000','2022-07-09 15:51:38.000'),(51,'mytest3',0,'2022-07-09 15:55:20.000','2022-07-09 15:55:20.000'),(52,'s1',0,'2022-07-10 03:55:13.000','2022-07-10 03:55:13.000'),(53,'s2',0,'2022-07-10 03:56:30.000','2022-07-10 03:56:30.000'),(54,'A11',0,'2022-07-10 14:03:41.000','2022-07-10 14:03:41.000'),(55,'A22',0,'2022-07-10 14:05:55.000','2022-07-10 14:05:55.000'),(56,'测试2',0,'2022-07-11 08:07:24.000','2022-07-11 08:07:24.000'),(57,'seer数据',0,'2022-07-11 08:09:27.000','2022-07-11 08:09:27.000'),(58,'yfan_test0',0,'2022-07-11 08:27:32.000','2022-07-11 08:27:32.000'),(59,'demo3_yfan',0,'2022-07-11 08:45:08.000','2022-07-11 08:45:08.000'),(60,'demo04',0,'2022-07-11 11:59:53.000','2022-07-11 11:59:53.000'),(61,'a',0,'2022-07-13 03:49:01.000','2022-07-13 03:49:01.000'),(62,'a',0,'2022-07-13 03:49:48.000','2022-07-13 03:49:48.000'),(63,'1',0,'2022-07-15 07:29:34.000','2022-07-15 07:29:34.000'),(64,'r r',0,'2022-07-15 07:36:24.000','2022-07-15 07:36:24.000'),(65,'cs',0,'2022-07-15 11:00:17.000','2022-07-15 11:00:17.000'),(66,'银行测试',0,'2022-07-18 04:35:06.000','2022-07-18 04:35:06.000'),(67,'银行测试2',0,'2022-07-18 04:35:39.000','2022-07-18 04:35:39.000'),(68,'pir',0,'2022-07-19 07:17:18.000','2022-07-19 07:17:18.000'),(69,'psi',0,'2022-07-19 12:09:36.000','2022-07-19 12:09:36.000'),(70,'psi',0,'2022-07-19 12:10:04.000','2022-07-19 12:10:04.000');
/*!40000 ALTER TABLE `fusion_resource_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fusion_resource_visibility_auth`
--

DROP TABLE IF EXISTS `fusion_resource_visibility_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fusion_resource_visibility_auth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resource_id` varchar(64) NOT NULL COMMENT '资源id',
  `organ_global_id` varchar(64) NOT NULL COMMENT '机构id',
  `is_del` tinyint(4) NOT NULL COMMENT '是否删除',
  `c_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `u_time` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resource_id_ix` (`resource_id`) USING BTREE,
  KEY `organ_global_id_ix` (`organ_global_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fusion_resource_visibility_auth`
--

LOCK TABLES `fusion_resource_visibility_auth` WRITE;
/*!40000 ALTER TABLE `fusion_resource_visibility_auth` DISABLE KEYS */;
INSERT INTO `fusion_resource_visibility_auth` VALUES (7,'ea5fd5f5f9f0-ff02f012-5d9a-4a6c-af3e-97e17e954a90','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-09 08:00:00.030','2022-07-09 08:00:00.030'),(23,'ea5fd5f5f9f0-1183f807-ebd8-4e14-a904-a3855bcce5f7','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-11 07:10:00.122','2022-07-11 07:10:00.122'),(32,'ea5fd5f5f9f0-8ba68b34-865c-4259-a0bb-1f43b2121ff2','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-15 07:40:00.033','2022-07-15 07:40:00.033'),(33,'ea5fd5f5f9f0-bd49b3d8-2a49-4a2f-9ff0-31fb69d362ee','3abfcb2a-8335-4bcc-b6f9-704a92e392fd',0,'2022-07-15 07:40:00.048','2022-07-15 07:40:00.048'),(34,'ea5fd5f5f9f0-bd49b3d8-2a49-4a2f-9ff0-31fb69d362ee','eb734dd0-773e-411b-ba29-794e41ba0e63',0,'2022-07-15 07:40:00.048','2022-07-15 07:40:00.048');
/*!40000 ALTER TABLE `fusion_resource_visibility_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-30 11:47:30
