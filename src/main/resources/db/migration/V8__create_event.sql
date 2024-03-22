create table event_type
(
    event_type_id   tinyint(1) auto_increment
        primary key,
    event_type_name varchar(45) not null,
    event_type_description varchar(200)
);

create table event
(
    event_id          int auto_increment
        primary key,
    event_type_id     tinyint(1) not null,
    event_name        varchar(45) not null,
    event_description varchar(200),
    event_date        datetime    not null,
    event_time        time        not null,
    event_location    varchar(45) not null,
    event_link        varchar(200) null,
    constraint fk_event_event_type
        foreign key (event_type_id) references event_type (event_type_id)
);