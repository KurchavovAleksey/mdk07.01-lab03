drop table if exists competions_teams_result;
drop table if exists competitions;
drop table if exists teams;
drop table if exists competition_kind;

create table competition_kind (
    id serial primary key,
    rank text not null,
    sport_kind text not null
);

create table teams (
    id serial primary key,
    name text not null,
    country text not null
);

create table competitions (
    id serial primary key,
    kind_id integer not null,
    year integer not null,
    host_country text not null,
    foreign key (kind_id) references competition_kind(id)
);

create table competions_teams_result (
    team_id integer not null,
    competition_id integer not null,
    team_result text not null,
    foreign key (team_id) references teams(id),
    foreign key (competition_id) references competitions(id)
);
