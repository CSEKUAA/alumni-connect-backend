create table committee_type
(
    committee_type_id   int auto_increment
        primary key,
    committee_type_name varchar(45) not null,
    committee_type_description varchar(200)
);

create table committee
(
    committee_id          int auto_increment
        primary key,
    committee_type_id     int not null,
    event_id     int null,
    committee_name        varchar(45) not null,
    committee_start_date  datetime    not null,
    committee_end_date    datetime    not null,
    committee_description varchar(200),
    parent_committee_id   int null,
    constraint fk_committee_committee_type
        foreign key (committee_type_id) references committee_type (committee_type_id),
    constraint fk_committee_committee
        foreign key (parent_committee_id) references committee (committee_id),
    constraint fk_committee_event
        foreign key (event_id) references event (event_id)
);