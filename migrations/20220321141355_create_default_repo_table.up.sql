create table if not exists default_repos
(
    id          integer primary key,
    created_at  timestamp default CURRENT_TIMESTAMP,
    updated_at  timestamp default CURRENT_TIMESTAMP,
    deleted_at  timestamp default null,
    user_id     integer not null unique,

    name                varchar(50) not null,
    visibility          varchar(20) not null,
    default_branch      varchar(50) not null,
    constraint fk_user foreign key(user_id) references users(id)
);