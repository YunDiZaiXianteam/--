/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/7 14:11:04                            */
/*==============================================================*/


drop table if exists Contentg;

drop table if exists Course;

drop table if exists CourseWare;

drop table if exists File;

drop table if exists Genre;

drop table if exists Pin;

drop table if exists Program;

drop table if exists ZyAdmin;

drop table if exists admin;

drop table if exists agency;

drop table if exists channel;

drop table if exists class_fl;

drop table if exists class_time;

drop table if exists classify;

drop table if exists dictionary;

drop table if exists mycalss;

drop table if exists openclass;

drop table if exists question;

drop table if exists qw;

drop table if exists qwzs;

drop table if exists role;

drop table if exists staff;

drop table if exists teach;

drop table if exists traing;

drop table if exists wt;

drop table if exists zs;

/*==============================================================*/
/* Table: Contentg                                              */
/*==============================================================*/
create table Contentg
(
   nrxx_id              int not null,
   nrxx_name            varchar(255),
   nrxx_content         varchar(255),
   nrxx_state           varchar(255),
   primary key (nrxx_id)
);

/*==============================================================*/
/* Table: Course                                                */
/*==============================================================*/
create table Course
(
   kcxx_id              int not null,
   kcxx_name            varchar(255),
   kcxx_type            varchar(255),
   kcxx_score           varchar(255),
   kcxx_time            varchar(255),
   kcxx_state           varchar(255),
   kcxx_test            varchar(255),
   kcxx_author          varchar(255),
   kcxx_upAuthor        varchar(255),
   kcxx_updateTime      varchar(255),
   class_id             int not null,
   primary key (kcxx_id)
);

/*==============================================================*/
/* Table: CourseWare                                            */
/*==============================================================*/
create table CourseWare
(
   kjxx_id              int not null,
   staff_id             varchar(255),
   kjxx_name            varchar(255),
   kjxx_type            varchar(255),
   kjxx_size            varchar(255),
   kjxx_time            date,
   kjxx_author          varchar(255),
   kjxx_updateTime      varchar(255),
   kjxx_load            date,
   kjxx_testLearn       varchar(255),
   kcxx_id              int,
   primary key (kjxx_id)
);

/*==============================================================*/
/* Table: File                                                  */
/*==============================================================*/
create table File
(
   wjxx_id              int not null,
   wjxx_name            varchar(255),
   wjxx_time            varchar(255),
   wjxx_size            varchar(255),
   wjxx_content         varchar(255),
   wjxx_type            varchar(255),
   wjxx_limit           varchar(255),
   primary key (wjxx_id)
);

/*==============================================================*/
/* Table: Genre                                                 */
/*==============================================================*/
create table Genre
(
   lbxx_id              int not null,
   lbxx_name            varchar(255),
   lbxx_type            varchar(255),
   classify_id          int,
   primary key (lbxx_id)
);

/*==============================================================*/
/* Table: Pin                                                   */
/*==============================================================*/
create table Pin
(
   pdxx_id              int not null,
   pdxx_name            varchar(255),
   pdxx_type            varchar(255),
   pdxx_role            varchar(255),
   lbxx_id              int,
   primary key (pdxx_id)
);

/*==============================================================*/
/* Table: Program                                               */
/*==============================================================*/
create table Program
(
   faxx_id              int not null,
   faxx_name            varchar(255),
   faxx_score           varchar(255),
   faxx_time            varchar(255),
   faxx_state           varchar(255),
   faxx_test            varchar(255),
   faxx_author          varchar(255),
   faxx_upAuthor        varchar(255),
   faxx_updateTime      varchar(255),
   primary key (faxx_id)
);

/*==============================================================*/
/* Table: ZyAdmin                                               */
/*==============================================================*/
create table ZyAdmin
(
   ZyAdmin_id           int not null,
   ZyAdmin_name         varchar(255),
   ZyAdmin_pwd          varchar(255),
   primary key (ZyAdmin_id)
);

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   admin_uid            int not null,
   admin_username       varchar(255),
   admin_password       varchar(255),
   primary key (admin_uid)
);

/*==============================================================*/
/* Table: agency                                                */
/*==============================================================*/
create table agency
(
   agency_name          varchar(255),
   agency_id            int not null,
   agency_info          varchar(255),
   agency_type          varchar(255),
   father_agency        varchar(255),
   primary key (agency_id)
);

/*==============================================================*/
/* Table: channel                                               */
/*==============================================================*/
create table channel
(
   channel_name         varchar(255),
   channel_visits       int,
   years                date,
   years_visits         int,
   month                date,
   month_visits         int,
   date                 date,
   date_visits          int,
   web_name             varchar(255) not null,
   primary key (web_name)
);

/*==============================================================*/
/* Table: class_fl                                              */
/*==============================================================*/
create table class_fl
(
   class_name           varchar(255),
   class_id             int not null,
   class_info           varchar(255),
   father_class         varchar(255),
   avalibility          varchar(255),
   dictionary_id        int,
   classify_id          int,
   primary key (class_id)
);

/*==============================================================*/
/* Table: class_time                                            */
/*==============================================================*/
create table class_time
(
   time_start           time,
   time_end             time,
   time_date            date,
   dictionary_id        int,
   class_id             int
);

/*==============================================================*/
/* Table: classify                                              */
/*==============================================================*/
create table classify
(
   classify_name        varchar(255),
   classify_id          int not null,
   classify_info        varchar(255),
   father_class         varchar(255),
   avalibility          varchar(255),
   dictionary_id        int,
   primary key (classify_id)
);

/*==============================================================*/
/* Table: dictionary                                            */
/*==============================================================*/
create table dictionary
(
   dictionary_name      varchar(255),
   dictionary_id        int not null,
   dictionary_value     varchar(255),
   sort                 varchar(255),
   sort_value           int,
   dictionary_info      varchar(255),
   father_class         varchar(255),
   primary key (dictionary_id)
);

/*==============================================================*/
/* Table: mycalss                                               */
/*==============================================================*/
create table mycalss
(
   myclass_id           int not null,
   myclass_name         varchar(255),
   classkind            varchar(255),
   author               varchar(255),
   openclass_id         int,
   primary key (myclass_id)
);

/*==============================================================*/
/* Table: openclass                                             */
/*==============================================================*/
create table openclass
(
   openclass_id         int not null,
   openclass_name       varchar(255),
   classkind            varchar(255),
   author               varchar(255),
   uploader             varchar(255),
   cover                varchar(255),
   myclass_id           int,
   primary key (openclass_id)
);

/*==============================================================*/
/* Table: question                                              */
/*==============================================================*/
create table question
(
   question_id          int not null,
   question_name        varchar(255),
   question_info        varchar(255),
   father_class         varchar(255),
   avalibility          varchar(255),
   dictionary_id        int,
   classify_id          int,
   primary key (question_id)
);

/*==============================================================*/
/* Table: qw                                                    */
/*==============================================================*/
create table qw
(
   qw_id                int not null,
   qw_name              varchar(255),
   qw_password          varchar(255),
   qw_sex               varchar(255),
   qw_telephone         varchar(255),
   qw_postbox           varchar(255),
   qw_date              date,
   primary key (qw_id)
);

/*==============================================================*/
/* Table: qwzs                                                  */
/*==============================================================*/
create table qwzs
(
   qwzs_id              int not null,
   qwzs_title           varchar(255),
   qwzs_qwfenlei        varchar(255),
   qwzs_keywords        varchar(255),
   qwzs_tye             varchar(255),
   qwzs_information     varchar(255),
   qwzs_people          varchar(255),
   qwzs_hits            varchar(255),
   qw_id                int,
   primary key (qwzs_id)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_name            varchar(255),
   role_id              int not null,
   role_power           varchar(255),
   staff_id             int,
   primary key (role_id)
);

/*==============================================================*/
/* Table: staff                                                 */
/*==============================================================*/
create table staff
(
   staff_name           int,
   staff_id             varchar(255) not null,
   staff_sex            varchar(255),
   staff_birthday       varchar(255),
   staff_email          varchar(255),
   staff_class          varchar(255),
   staff_phone          varchar(255),
   staff_type           varchar(255),
   course_id            int,
   staff_password       varchar(255),
   staff_state          varchar(255),
   staff_user           varchar(255),
   staff_web            varchar(255),
   primary key (staff_id)
);

/*==============================================================*/
/* Table: teach                                                 */
/*==============================================================*/
create table teach
(
   teach_id             int not null,
   teach_name           varchar(255),
   teach_info           varchar(255),
   dictionary_id        int,
   class_id             int,
   primary key (teach_id)
);

/*==============================================================*/
/* Table: traing                                                */
/*==============================================================*/
create table traing
(
   pxsxx_id             int not null,
   pxsxx_imge           varchar(255),
   pxsxx_name           varchar(255),
   pxsxx_type           varchar(255),
   pxsxx_technical      varchar(255),
   pxsxx_zhic           varchar(255),
   pxsxx_zhiw           varchar(255),
   pxsxx_xuel           varchar(255),
   pxsxx_year           varchar(255),
   pxsxx_grade          varchar(255),
   primary key (pxsxx_id)
);

/*==============================================================*/
/* Table: wt                                                    */
/*==============================================================*/
create table wt
(
   wt_id                int not null,
   wt_name              varchar(255),
   wt_people            varchar(255),
   wt_date              varchar(255),
   wt_information       varchar(255),
   wt_title             varchar(255),
   wt_state             varchar(255),
   qw_id                int,
   question_id          int not null,
   primary key (wt_id)
);

/*==============================================================*/
/* Table: zs                                                    */
/*==============================================================*/
create table zs
(
   zs_id                int not null,
   zs_title             varchar(255),
   zs_grfenlei          varchar(255),
   zs_keywords          varchar(255),
   zs_type              varchar(255),
   zs_information       varchar(255),
   zs_people            varchar(255),
   zs_hits              varchar(255),
   qw_id                int not null,
   question_id          int not null,
   primary key (zs_id)
);
