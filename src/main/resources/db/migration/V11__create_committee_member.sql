create table committee_member
(
    committee_member_id   int auto_increment
        primary key,
    user_id               int not null,
    designation_id        int not null,
    committee_id          int not null,
    constraint fk_committee_member_user
        foreign key (user_id) references user (user_id),
    constraint fk_committee_member_designation
        foreign key (designation_id) references designation (designation_id),
    constraint fk_committee_member_committee
        foreign key (committee_id) references committee (committee_id)
);
