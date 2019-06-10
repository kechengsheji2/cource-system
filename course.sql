/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/6/10 17:11:03                           */
/*==============================================================*/


drop table if exists course;

drop table if exists student;

drop table if exists student_course;

drop table if exists user;

/*==============================================================*/
/* Table: course                                                */
/*==============================================================*/
create table course
(
   id                   int not null auto_increment comment 'id',
   number               char(50) comment '课程编号',
   name                 char(50) comment '课程名称',
   credit               int comment '学分',
   time                 int comment '学时',
   num                  int comment '课程人数',
   teacher              char(20) comment '教师名称',
   primary key (id)
);

alter table course comment '课程表';

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   id                   int not null auto_increment comment 'id',
   name                 char(20) comment '姓名',
   password             char(50) comment '密码',
   number               char(50) comment '学号',
   grade                char(20) comment '年级',
   connect_number       char(20) comment '联系电话',
   sex                  char(10) comment '性别',
   college              char(20) comment '学院',
   speciality           char(20) comment '专业',
   class                char(50) comment '班级',
   primary key (id)
);

alter table student comment '学生信息表';

/*==============================================================*/
/* Table: student_course                                        */
/*==============================================================*/
create table student_course
(
   id                   int not null comment 'id',
   student_id           int comment '学生id',
   course_id            int comment '课程id',
   primary key (id)
);

alter table student_course comment '学生课程表';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null auto_increment comment 'id',
   username             char(20) comment '用户名',
   password             char(50) comment '密码',
   primary key (id)
);

alter table user comment '后台管理员';

alter table student_course add constraint FK_Reference_2 foreign key (student_id)
      references student (id) on delete restrict on update restrict;

alter table student_course add constraint FK_外键关系 foreign key (course_id)
      references course (id) on delete restrict on update restrict;

