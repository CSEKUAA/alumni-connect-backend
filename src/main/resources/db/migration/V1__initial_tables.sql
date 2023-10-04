create table discipline
(
    discipline_id         tinyint(1) auto_increment
        primary key,
    discipline_code       varchar(10)  not null,
    discipline_short_name varchar(10)  not null,
    discipline_full_name  varchar(200) not null
);

create table external_link_type
(
    external_link_type_id   tinyint auto_increment
        primary key,
    external_link_type_name varchar(45) not null
);

create table external_link
(
    external_link_id      int auto_increment
        primary key,
    external_link_name    varchar(45)  not null,
    external_link_type_id tinyint      not null,
    external_link_url     varchar(200) not null,
    constraint fk_external_link_type
        foreign key (external_link_type_id) references external_link_type (external_link_type_id)
);

create index fk_external_link_type_idx
    on external_link (external_link_type_id);

create table membership_type
(
    membership_type_id tinyint(1) auto_increment
        primary key,
    membership_type    varchar(45)    null,
    membership_fee     decimal(10, 2) not null
);

create table menu
(
    menu_id        smallint     not null
        primary key,
    menu_name      varchar(200) not null,
    parent_menu_id smallint     null,
    menu_order     smallint     null,
    menu_link      varchar(200) null,
    is_active      bit          not null
);

create table role
(
    role_id   tinyint(1) auto_increment
        primary key,
    role_name varchar(20) not null
);

create table menu_role
(
    menu_role_id smallint   not null
        primary key,
    role_id      tinyint(1) not null,
    menu_id      smallint   not null,
    constraint fk_menu_menurole
        foreign key (menu_id) references menu (menu_id),
    constraint fk_role_menurole
        foreign key (role_id) references role (role_id)
);

create index fk_menu_menurole_idx
    on menu_role (menu_id);

create index fk_role_menurole_idx
    on menu_role (role_id);

create table user
(
    user_id                int auto_increment
        primary key,
    roll                   varchar(10)  not null,
    password               varchar(100) not null,
    role_id                tinyint(1)   not null,
    is_enabled             bit          not null,
    is_account_non_expired bit          not null,
    is_account_non_locked  bit          not null,
    constraint roll_UNIQUE
        unique (roll),
    constraint fk_user_role
        foreign key (role_id) references role (role_id)
);

create table alumni
(
    alumni_id         int auto_increment
        primary key,
    roll              varchar(10)                        not null,
    discipline_id     tinyint(1)                         not null,
    name              varchar(100)                       not null,
    nick              varchar(100)                       null,
    birth_date        datetime                           null,
    blood_group       varchar(10)                        null,
    photo             varchar(255)                       null,
    present_address   varchar(200)                       null,
    present_city      varchar(45)                        null,
    present_country   varchar(45)                        null,
    permanent_address varchar(200)                       null,
    permanent_city    varchar(45)                        null,
    permanent_country varchar(45)                        null,
    phone             varchar(45)                        null,
    email             varchar(100)                       not null,
    profession        varchar(100)                       null,
    designation       varchar(100)                       null,
    company           varchar(50)                        null,
    company_address   varchar(200)                       null,
    creation_time     datetime default CURRENT_TIMESTAMP null,
    modified_time     datetime                           null,
    approval_date     date                               null,
    membership_type   int                                null,
    user_id           int                                not null,
    constraint fk_discipline_alumni
        foreign key (discipline_id) references discipline (discipline_id),
    constraint fk_user_alumni
        foreign key (user_id) references user (user_id)
);

create index fk_discipline_alumni_idx
    on alumni (discipline_id);

create index fk_user_alumni_idx
    on alumni (user_id);

create table alumni_external_link
(
    alumni_external_link_id int auto_increment
        primary key,
    alumni_id               int          not null,
    url                     varchar(200) null,
    description             varchar(500) null,
    external_link_id        int          not null,
    constraint fk_alumni
        foreign key (alumni_id) references alumni (alumni_id),
    constraint fk_external_link
        foreign key (external_link_id) references external_link (external_link_id)
);

create index fk_alumni_idx
    on alumni_external_link (alumni_id);

create index fk_external_link_idx
    on alumni_external_link (external_link_id);

create table audit
(
    audit_id   int auto_increment
        primary key,
    user_id    int          not null,
    api        varchar(200) not null,
    ip         varchar(45)  not null,
    audit_time datetime     not null,
    remarks    varchar(45)  null,
    constraint fk_user_audit
        foreign key (user_id) references user (user_id)
);

create index fk_user_audit_idx
    on audit (user_id);

create table membership
(
    membership_id            int auto_increment
        primary key,
    membership_type_id       tinyint(1) not null,
    user_id                  int        not null,
    is_approved              bit        not null,
    membership_end_time      datetime   not null,
    membership_approved_by   int        not null,
    membership_approved_time datetime   not null,
    constraint fk_membership_membership_type
        foreign key (membership_type_id) references membership_type (membership_type_id),
    constraint fk_membership_user
        foreign key (user_id) references user (user_id)
);

create index fk_membership_membership_type_idx
    on membership (membership_type_id);

create index fk_membership_user_idx
    on membership (user_id);

create table password_reset
(
    reset_id     int auto_increment
        primary key,
    email_mobile varchar(100) not null,
    otp          varchar(10)  not null,
    created_time datetime     not null,
    is_reset     bit          null,
    user_id      int          not null,
    constraint fk_user_password
        foreign key (user_id) references user (user_id)
);

create index fk_user_password_idx
    on password_reset (user_id);

create table token
(
    token_id         int auto_increment
        primary key,
    user_id          int          not null,
    token            varchar(500) not null,
    token_start_time datetime     not null,
    token_end_time   datetime     not null,
    ip               varchar(45)  not null,
    constraint fk_user_token
        foreign key (user_id) references user (user_id)
);

create index fk_user_token_idx
    on token (user_id);

create index fk_user_role_idx
    on user (role_id);

