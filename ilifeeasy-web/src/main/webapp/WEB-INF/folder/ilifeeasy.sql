/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : ilifeeasy

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-03-10 18:44:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS course;
CREATE TABLE course (
  cid varchar(20) NOT NULL DEFAULT '',
  cname varchar(20) DEFAULT NULL,
  credit int(11) DEFAULT NULL,
  PRIMARY KEY (cid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO course VALUES ('c01', 'Oracle数据库', '5');
INSERT INTO course VALUES ('c02', 'JAVA程序设计', '6');
INSERT INTO course VALUES ('c03', '数据结构', '4');

-- ----------------------------
-- Table structure for ieasy_db_button
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_button;
CREATE TABLE ieasy_db_button (
  Id int(11) NOT NULL COMMENT '主键',
  name varchar(12) NOT NULL COMMENT '按钮名称',
  code varchar(12) NOT NULL COMMENT '按钮编码',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：1：删除，0：有效',
  ts timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='按钮';

-- ----------------------------
-- Records of ieasy_db_button
-- ----------------------------

-- ----------------------------
-- Table structure for ieasy_db_course
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_course;
CREATE TABLE ieasy_db_course (
  Id varchar(32) NOT NULL DEFAULT '',
  major_id varchar(32) NOT NULL DEFAULT '' COMMENT '专业id',
  course_name varchar(40) NOT NULL DEFAULT '' COMMENT '科目名称',
  publishing varchar(50) NOT NULL DEFAULT '' COMMENT '出版社',
  publish_date date NOT NULL DEFAULT '0000-00-00' COMMENT '出版时间',
  author varchar(10) NOT NULL DEFAULT '' COMMENT '作者',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：1：删除，0：有效',
  ts timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='科目';

-- ----------------------------
-- Records of ieasy_db_course
-- ----------------------------
INSERT INTO ieasy_db_course VALUES ('CU20150501185833319000', 'MJ20150501093208781000', '项目时间管理', '中国电力', '2015-05-01', 'Andy', '1', '2015-05-01 18:58:34');
INSERT INTO ieasy_db_course VALUES ('CU20150501190240709000', 'MJ20150501093208781000', '项目时间管理', '中国电力', '2015-05-01', 'Andy', '0', '2015-05-01 19:02:41');
INSERT INTO ieasy_db_course VALUES ('CU20150501190438254000', 'MJ20150501093208781000', '项目时间管理', '中国电力', '2015-05-01', 'Andy', '0', '2015-05-01 19:04:38');

-- ----------------------------
-- Table structure for ieasy_db_department
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_department;
CREATE TABLE ieasy_db_department (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'UUID主键',
  name varchar(30) NOT NULL DEFAULT '' COMMENT '部门名称',
  remark varchar(500) NOT NULL DEFAULT '' COMMENT '部门描述',
  parent_id int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  structure varchar(20) NOT NULL DEFAULT '' COMMENT '部门的层级结构',
  sort_no int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  create_person varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  create_date datetime NOT NULL COMMENT '记录生成时间',
  update_person varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  update_date datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of ieasy_db_department
-- ----------------------------
INSERT INTO ieasy_db_department VALUES ('1', '创力电子商务', '', '0', 's-1', '1', 'system', '2013-10-21 01:04:50', 'root', '2013-10-23 01:03:39');
INSERT INTO ieasy_db_department VALUES ('2', '商品中心', '', '1', 's-1-1', '2', 'root', '2013-10-23 00:55:56', 'root', '2013-10-23 01:05:13');
INSERT INTO ieasy_db_department VALUES ('3', '技术中心', '', '1', 's-1-2', '3', 'root', '2013-10-23 00:56:10', 'root', '2013-10-23 01:06:18');
INSERT INTO ieasy_db_department VALUES ('4', '管理中心', '', '1', 's-1-3', '1', 'root', '2013-10-23 00:56:22', 'root', '2013-10-23 01:04:10');
INSERT INTO ieasy_db_department VALUES ('5', '总裁办', '', '4', 's-1-3-1', '1', 'root', '2013-10-23 00:56:41', 'root', '2013-10-23 01:04:23');
INSERT INTO ieasy_db_department VALUES ('6', '财务部', '', '4', 's-1-3-2', '2', 'root', '2013-10-23 01:03:56', 'root', '2013-10-23 01:04:32');
INSERT INTO ieasy_db_department VALUES ('7', '人力资源部', '', '4', 's-1-3-3', '3', 'root', '2013-10-23 01:04:51', 'root', '2013-10-23 01:04:51');
INSERT INTO ieasy_db_department VALUES ('8', '开发组', '', '3', 's-1-2-1', '1', 'root', '2013-10-23 01:06:02', 'root', '2013-10-23 01:06:57');
INSERT INTO ieasy_db_department VALUES ('9', '测试组', '', '3', 's-1-2-2', '2', 'root', '2013-10-23 01:06:34', 'root', '2013-10-23 01:07:04');
INSERT INTO ieasy_db_department VALUES ('10', '运维组', '', '3', 's-1-2-3', '3', 'root', '2013-10-23 01:07:12', 'root', '2013-10-23 01:07:12');
INSERT INTO ieasy_db_department VALUES ('11', '视觉形象部', '', '2', 's-1-1-3', '3', 'root', '2013-10-23 01:05:47', 'root', '2013-10-23 01:05:47');
INSERT INTO ieasy_db_department VALUES ('12', '女装部', '', '11', 's-1-1-1', '1', 'root', '2013-10-23 01:05:23', 'root', '2013-10-23 01:05:23');
INSERT INTO ieasy_db_department VALUES ('13', '男装部', '', '11', 's-1-1-2', '2', 'root', '2013-10-23 01:05:32', 'root', '2013-10-23 01:05:32');

-- ----------------------------
-- Table structure for ieasy_db_domain
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_domain;
CREATE TABLE ieasy_db_domain (
  Id varchar(32) NOT NULL DEFAULT '',
  user_id varchar(32) NOT NULL DEFAULT '0' COMMENT '创建人',
  domain_name varchar(40) NOT NULL DEFAULT '' COMMENT '领域名称',
  create_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：0：邮箱，1：删除',
  ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='所属领域';

-- ----------------------------
-- Records of ieasy_db_domain
-- ----------------------------
INSERT INTO ieasy_db_domain VALUES ('DM20150430161625354000', 'US20150423162858582000', '工程类', '2015-04-30 16:16:36', '0', '2015-05-01 09:23:16');

-- ----------------------------
-- Table structure for ieasy_db_exam_detail
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_exam_detail;
CREATE TABLE ieasy_db_exam_detail (
  id varchar(32) NOT NULL DEFAULT '',
  title_id varchar(32) NOT NULL DEFAULT '' COMMENT '试题标题id',
  option_type char(2) NOT NULL DEFAULT '' COMMENT '题型：01：判断题，02：单选择题，03：多选题，04：填空题，05：简单题，06：论述题',
  content varchar(255) NOT NULL DEFAULT '' COMMENT '提纲',
  score int(11) NOT NULL DEFAULT '1' COMMENT '分值',
  answer varchar(255) NOT NULL DEFAULT '' COMMENT '答案',
  resolve varchar(255) NOT NULL DEFAULT '' COMMENT '解析',
  option_a varchar(255) DEFAULT NULL COMMENT '选项a',
  option_b varchar(255) DEFAULT NULL COMMENT '选项b',
  option_c varchar(255) DEFAULT NULL COMMENT '选项c',
  option_d varchar(255) DEFAULT NULL COMMENT '选项d',
  option_e varchar(255) DEFAULT NULL COMMENT '选项e',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：0：邮箱，1：删除',
  ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库';

-- ----------------------------
-- Records of ieasy_db_exam_detail
-- ----------------------------
INSERT INTO ieasy_db_exam_detail VALUES ('ED20150501215832618000', 'ET20150501200758150000', '02', '1. 下列对随机抽样的描述不正确的是（  ）', '1', 'A', '暂时无解析', 'A、随机抽样排除了主观因素，所得质量数据可靠性好、代表性强', 'B、对总体缺乏了解，个体之间差异较小时，可以采用系统抽样', 'C、样本容量越大，随机抽样的代表性误差就越小', 'D、单纯随机抽样的随机性最好', null, '0', '2015-05-01 21:58:34');
INSERT INTO ieasy_db_exam_detail VALUES ('ED20150501215832618001', 'ET20150501200758150000', '02', '2. 下列对随机抽样的描述不正确的是（  ）', '2', 'C', '暂时无解析', 'A、随机抽样排除了主观因素，所得质量数据可靠性好、代表性强', 'B、对总体缺乏了解，个体之间差异较小时，可以采用系统抽样', 'C、样本容量越大，随机抽样的代表性误差就越小', 'D、单纯随机抽样的随机性最好', null, '0', '2015-05-01 22:28:00');

-- ----------------------------
-- Table structure for ieasy_db_exam_error
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_exam_error;
CREATE TABLE ieasy_db_exam_error (
  Id varchar(32) NOT NULL DEFAULT '',
  user_id varchar(32) NOT NULL DEFAULT '' COMMENT '用户id',
  course_id varchar(32) NOT NULL DEFAULT '' COMMENT '科目id',
  exam_titleid varchar(32) NOT NULL DEFAULT '' COMMENT '试题id',
  exam_detailid varchar(32) NOT NULL DEFAULT '' COMMENT '题号',
  exam_date timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '错题时间',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：0：邮箱，1：删除',
  ts timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='错题库';

-- ----------------------------
-- Records of ieasy_db_exam_error
-- ----------------------------
INSERT INTO ieasy_db_exam_error VALUES ('EE20150501221657303000', 'US20150423150908974001', 'CU20150501185833319000', 'ET20150501200758150000', 'ED20150501215832618001', '2015-05-01 22:16:57', '0', '2015-05-01 22:16:58');

-- ----------------------------
-- Table structure for ieasy_db_exam_title
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_exam_title;
CREATE TABLE ieasy_db_exam_title (
  Id varchar(32) NOT NULL DEFAULT '',
  course_id varchar(32) NOT NULL DEFAULT '' COMMENT '科目',
  exam_name varchar(50) NOT NULL DEFAULT '' COMMENT '试题名称',
  exam_type char(2) NOT NULL DEFAULT '' COMMENT '练习类型：01：历年考题，02：模拟题，03：课后题',
  create_time date NOT NULL DEFAULT '0000-00-00' COMMENT '上传时间',
  create_user varchar(32) NOT NULL DEFAULT '' COMMENT '上传人',
  exam_date date NOT NULL DEFAULT '0000-00-00' COMMENT '试题时间',
  exam_score int(11) NOT NULL DEFAULT '0' COMMENT '试题分数',
  pass_score int(11) NOT NULL DEFAULT '0' COMMENT '及格分数',
  view_count int(11) DEFAULT '0' COMMENT '浏览次数',
  answer_count int(11) NOT NULL DEFAULT '0' COMMENT '答题次数',
  size int(11) NOT NULL DEFAULT '0' COMMENT '大小',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：0：有效，1：删除',
  ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题头信息';

-- ----------------------------
-- Records of ieasy_db_exam_title
-- ----------------------------
INSERT INTO ieasy_db_exam_title VALUES ('ET20150501195107911000', 'CU20150501190240709000', '2015年4月成本管理', '01', '2015-05-01', 'US20150423150908974001', '2015-05-01', '100', '60', '0', '0', '0', '0', '2015-05-01 19:51:15');
INSERT INTO ieasy_db_exam_title VALUES ('ET20150501195713280000', 'CU20150501190240709000', '2015年4月成本管理', '01', '2015-05-01', 'US20150423150908974001', '2015-05-01', '100', '60', '0', '0', '0', '0', '2015-05-01 19:57:45');
INSERT INTO ieasy_db_exam_title VALUES ('ET20150501200758150000', 'CU20150501190240709000', '2015年4月成本管理', '01', '2015-05-01', 'US20150423150908974001', '2015-05-01', '100', '60', '0', '0', '0', '0', '2015-05-01 20:08:01');
INSERT INTO ieasy_db_exam_title VALUES ('ET20150501201426328000', 'CU20150501190240709000', '2015年4月时间管理考试题', '01', '2015-05-01', 'US20150423150908974001', '2015-05-01', '100', '60', '0', '0', '0', '1', '2015-05-01 20:14:26');
INSERT INTO ieasy_db_exam_title VALUES ('ET20150501201838029000', 'CU20150501190240709000', '2015年4月时间管理考试题', '01', '2015-05-01', 'US20150423150908974001', '2015-05-01', '100', '60', '0', '0', '0', '1', '2015-05-01 20:18:38');

-- ----------------------------
-- Table structure for ieasy_db_major
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_major;
CREATE TABLE ieasy_db_major (
  Id varchar(32) NOT NULL DEFAULT '0' COMMENT '主键',
  domain_id varchar(32) NOT NULL DEFAULT '' COMMENT '领域id',
  major_name varchar(30) NOT NULL DEFAULT '' COMMENT '专业名称',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：0：有效，1：删除',
  ts timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (Id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业类型';

-- ----------------------------
-- Records of ieasy_db_major
-- ----------------------------
INSERT INTO ieasy_db_major VALUES ('MJ20150501093208781000', 'DM20150430161625354000', '计算机', '0', '2015-05-01 09:32:09');
INSERT INTO ieasy_db_major VALUES ('MJ20150501093705641000', 'DM20150430161625354000', '计算机', '0', '2015-05-01 09:37:06');
INSERT INTO ieasy_db_major VALUES ('MJ20150501093957844000', 'DM20150430161625354000', '计算机', '0', '2015-05-01 09:39:58');

-- ----------------------------
-- Table structure for ieasy_db_module
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_module;
CREATE TABLE ieasy_db_module (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  name varchar(50) NOT NULL DEFAULT '' COMMENT '系统模块名称',
  flag varchar(20) NOT NULL DEFAULT '' COMMENT '系统模块标记',
  url varchar(300) NOT NULL DEFAULT '' COMMENT '系统访问URL',
  sort_no int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  create_person varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  create_date datetime NOT NULL COMMENT '记录生成时间',
  update_person varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  update_date datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统模块表';

-- ----------------------------
-- Records of ieasy_db_module
-- ----------------------------
INSERT INTO ieasy_db_module VALUES ('1', '配置中心', 'p', 'http://127.0.0.1:10002/privilege-server', '10', 'system', '2015-12-15 15:30:38', 'system', '2015-12-15 15:30:38');

-- ----------------------------
-- Table structure for ieasy_db_permission
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_permission;
CREATE TABLE ieasy_db_permission (
  id int(11) NOT NULL COMMENT '主键',
  name varchar(12) NOT NULL COMMENT '权限名称',
  dr int(11) NOT NULL DEFAULT '0' COMMENT '删除标记：1：删除，0：有效',
  ts timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '时间戳',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of ieasy_db_permission
-- ----------------------------
INSERT INTO ieasy_db_permission VALUES ('1', 'create', '0', '0000-00-00 00:00:00');
INSERT INTO ieasy_db_permission VALUES ('2', 'delete', '0', '0000-00-00 00:00:00');
INSERT INTO ieasy_db_permission VALUES ('3', 'update', '0', '0000-00-00 00:00:00');
INSERT INTO ieasy_db_permission VALUES ('4', 'query', '0', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for ieasy_db_resource
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_resource;
CREATE TABLE ieasy_db_resource (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  name varchar(50) NOT NULL DEFAULT '' COMMENT '菜单资源名称',
  url varchar(300) DEFAULT '' COMMENT '菜单资源URL',
  parent_id int(11) DEFAULT '0' COMMENT '父级id',
  sort_no int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  module_name varchar(20) NOT NULL DEFAULT '' COMMENT '所属系统模块的标记',
  create_person varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  create_date datetime NOT NULL COMMENT '记录生成时间',
  update_person varchar(30) DEFAULT '' COMMENT '最后更新人',
  update_date datetime NOT NULL COMMENT '最后更新时间',
  level int(11) DEFAULT NULL COMMENT '菜单分级',
  next_flag varchar(20) DEFAULT NULL COMMENT '是否有下级菜单',
  icon varchar(30) DEFAULT NULL COMMENT '图标',
  remark varchar(500) NOT NULL DEFAULT '' COMMENT '菜单资源简要描述',
  PRIMARY KEY (id),
  UNIQUE KEY module_name (module_name)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='权限资源表';

-- ----------------------------
-- Records of ieasy_db_resource
-- ----------------------------
INSERT INTO ieasy_db_resource VALUES ('1', '首页', '#', '0', '1', 'index', 'Andy', '2016-01-21 14:23:17', '', '2016-01-21 14:23:23', '1', 'true', 'fa fa-dashboard', '');
INSERT INTO ieasy_db_resource VALUES ('2', '个人中心', 'http://localhost:8080/role/index.html', '1', '1', 'center', 'System', '2016-01-21 14:31:31', '', '2016-01-21 14:31:35', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('3', '部门管理', '#', '0', '1', 'department', 'Andy', '2016-01-21 14:32:42', '', '2016-01-21 14:32:47', '1', 'true', 'fa fa-sitemap', '');
INSERT INTO ieasy_db_resource VALUES ('4', '权限管理', '#', '0', '1', 'role', 'Andy', '2016-01-21 14:34:01', '', '2016-01-21 14:34:09', '1', 'true', 'fa fa-gear', '');
INSERT INTO ieasy_db_resource VALUES ('5', '菜单管理', '#', '0', '1', 'menu', 'Andy', '2016-01-21 14:37:46', '', '2016-01-21 14:37:50', '1', 'true', 'fa fa-magnet', '');
INSERT INTO ieasy_db_resource VALUES ('6', '资源管理', 'http://localhost:8080/pages/menu/manage.html', '5', '2', 'manage', 'Andy', '2016-01-21 14:39:44', '', '2016-01-21 14:39:47', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('7', '用户管理', '#', '4', '1', 'user', 'System', '2016-02-29 15:14:46', '', '2016-02-29 15:14:50', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('8', '角色管理', '#', '4', '2', 'userRole', 'System', '2016-02-29 15:17:01', '', '2016-02-29 15:17:04', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('9', '权限管理', '#', '4', '3', 'userMenu', 'System', '2016-02-29 15:18:34', '', '2016-02-29 15:18:37', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('10', '资源管理', '#', '4', '4', 'userSource', 'System', '2016-02-29 15:20:11', '', '2016-02-29 15:20:15', '2', 'false', 'fa fa-circle-o', '');
INSERT INTO ieasy_db_resource VALUES ('11', '生活面板', 'http://localhost:8080/pages/lifePanel.html', '1', '2', '', '', '2016-03-02 10:01:55', '', '2016-03-02 10:01:59', '2', 'false', 'fa fa-circle-o', '');

-- ----------------------------
-- Table structure for ieasy_db_role
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_role;
CREATE TABLE ieasy_db_role (
  id int(11) NOT NULL COMMENT '主键',
  name varchar(12) NOT NULL COMMENT '名称',
  description varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ieasy_db_role
-- ----------------------------
INSERT INTO ieasy_db_role VALUES ('1', 'admin', '管理员');

-- ----------------------------
-- Table structure for ieasy_db_user
-- ----------------------------
DROP TABLE IF EXISTS ieasy_db_user;
CREATE TABLE ieasy_db_user (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT 'UUID主键',
  username varchar(30) NOT NULL DEFAULT '' COMMENT '登录用户名',
  password varchar(50) NOT NULL DEFAULT '' COMMENT '登录密码',
  sex varchar(2) NOT NULL DEFAULT '' COMMENT '性别',
  age int(3) NOT NULL DEFAULT '1' COMMENT '年龄',
  is_admin tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否管理员：1是0否',
  is_lock tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定：1是0否',
  failures int(11) NOT NULL COMMENT '失败次数',
  dr tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标记：1是0否',
  ts datetime NOT NULL COMMENT '最后更新时间',
  salt varchar(100) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY idx_username (username) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of ieasy_db_user
-- ----------------------------
INSERT INTO ieasy_db_user VALUES ('1', 'andy', 'b2ff0e060493355ccd5e72a6c7f12334', '男', '20', '0', '0', '0', '0', '2016-02-04 11:50:51', '123456');

-- ----------------------------
-- Table structure for ieasy_re_permission_button
-- ----------------------------
DROP TABLE IF EXISTS ieasy_re_permission_button;
CREATE TABLE ieasy_re_permission_button (
  id int(11) NOT NULL COMMENT '主键Id',
  permissionId int(11) NOT NULL COMMENT '权限Id',
  buttonId int(11) NOT NULL COMMENT '按钮id',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ieasy_re_permission_button
-- ----------------------------

-- ----------------------------
-- Table structure for ieasy_re_permission_module
-- ----------------------------
DROP TABLE IF EXISTS ieasy_re_permission_module;
CREATE TABLE ieasy_re_permission_module (
  id int(11) NOT NULL COMMENT '主键id',
  permissionId int(11) NOT NULL,
  moduleId int(11) NOT NULL COMMENT '模块id',
  PRIMARY KEY (id),
  KEY permissionId (permissionId),
  KEY moduleId (moduleId),
  CONSTRAINT ieasy_re_permission_module_ibfk_1 FOREIGN KEY (permissionId) REFERENCES ieasy_db_permission (id),
  CONSTRAINT ieasy_re_permission_module_ibfk_2 FOREIGN KEY (moduleId) REFERENCES ieasy_db_module (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ieasy_re_permission_module
-- ----------------------------

-- ----------------------------
-- Table structure for ieasy_re_role_permission
-- ----------------------------
DROP TABLE IF EXISTS ieasy_re_role_permission;
CREATE TABLE ieasy_re_role_permission (
  id int(11) NOT NULL COMMENT '主键',
  roleId int(11) NOT NULL COMMENT '角色id',
  permissionId int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (id),
  KEY roleId (roleId),
  KEY privilegeId (permissionId),
  CONSTRAINT ieasy_re_role_permission_ibfk_1 FOREIGN KEY (roleId) REFERENCES ieasy_db_role (id),
  CONSTRAINT ieasy_re_role_permission_ibfk_2 FOREIGN KEY (permissionId) REFERENCES ieasy_db_permission (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ieasy_re_role_permission
-- ----------------------------
INSERT INTO ieasy_re_role_permission VALUES ('1', '1', '1');
INSERT INTO ieasy_re_role_permission VALUES ('2', '1', '2');
INSERT INTO ieasy_re_role_permission VALUES ('3', '1', '3');
INSERT INTO ieasy_re_role_permission VALUES ('4', '1', '4');

-- ----------------------------
-- Table structure for ieasy_re_user_role
-- ----------------------------
DROP TABLE IF EXISTS ieasy_re_user_role;
CREATE TABLE ieasy_re_user_role (
  id int(11) NOT NULL COMMENT '主键',
  userId int(11) NOT NULL COMMENT '用户id',
  roleId int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (id),
  KEY userId (userId),
  KEY roleId (roleId),
  CONSTRAINT ieasy_re_user_role_ibfk_1 FOREIGN KEY (userId) REFERENCES ieasy_db_user (id),
  CONSTRAINT ieasy_re_user_role_ibfk_2 FOREIGN KEY (roleId) REFERENCES ieasy_db_role (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ieasy_re_user_role
-- ----------------------------
INSERT INTO ieasy_re_user_role VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS score;
CREATE TABLE score (
  sid varchar(20) NOT NULL DEFAULT '',
  cid varchar(20) DEFAULT NULL,
  grade int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO score VALUES ('s10001', 'c01', '80');
INSERT INTO score VALUES ('s10001', 'c02', '90');
INSERT INTO score VALUES ('s10002', 'c01', '85');
INSERT INTO score VALUES ('s10002', 'c02', '80');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS student;
CREATE TABLE student (
  sid varchar(20) NOT NULL DEFAULT '',
  sname varchar(20) DEFAULT NULL,
  sex varchar(2) DEFAULT NULL,
  birtday date DEFAULT NULL,
  PRIMARY KEY (sid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO student VALUES ('s10001', '张三', '男', '2016-03-08');
INSERT INTO student VALUES ('s10002', '李四', '男', '2016-03-08');
INSERT INTO student VALUES ('s10003', '王五', '男', '2016-03-08');
INSERT INTO student VALUES ('s10004', '马六', '女', '2016-03-08');
