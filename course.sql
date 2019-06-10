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
   number               char(50) comment '�γ̱��',
   name                 char(50) comment '�γ�����',
   credit               int comment 'ѧ��',
   time                 int comment 'ѧʱ',
   num                  int comment '�γ�����',
   teacher              char(20) comment '��ʦ����',
   primary key (id)
);

alter table course comment '�γ̱�';

/*==============================================================*/
/* Table: student                                               */
/*==============================================================*/
create table student
(
   id                   int not null auto_increment comment 'id',
   name                 char(20) comment '����',
   password             char(50) comment '����',
   number               char(50) comment 'ѧ��',
   grade                char(20) comment '�꼶',
   connect_number       char(20) comment '��ϵ�绰',
   sex                  char(10) comment '�Ա�',
   college              char(20) comment 'ѧԺ',
   speciality           char(20) comment 'רҵ',
   class                char(50) comment '�༶',
   primary key (id)
);

alter table student comment 'ѧ����Ϣ��';

/*==============================================================*/
/* Table: student_course                                        */
/*==============================================================*/
create table student_course
(
   id                   int not null comment 'id',
   student_id           int comment 'ѧ��id',
   course_id            int comment '�γ�id',
   primary key (id)
);

alter table student_course comment 'ѧ���γ̱�';

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null auto_increment comment 'id',
   username             char(20) comment '�û���',
   password             char(50) comment '����',
   primary key (id)
);

alter table user comment '��̨����Ա';

alter table student_course add constraint FK_Reference_2 foreign key (student_id)
      references student (id) on delete restrict on update restrict;

alter table student_course add constraint FK_�����ϵ foreign key (course_id)
      references course (id) on delete restrict on update restrict;

