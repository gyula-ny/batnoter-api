create table if not exists users
(
    id              integer primary key,
    created_at      timestamp default CURRENT_TIMESTAMP,
    updated_at      timestamp default CURRENT_TIMESTAMP,
    deleted_at      timestamp default null,
    disabled_at     timestamp default null,
    email           varchar(255) not null unique,
    name            varchar(255) null,
    location        varchar(255) null,
    avatar_url      varchar(255) null,
    github_id       int null,
    github_username varchar(255) null,
    github_token    varchar(255) not null
);