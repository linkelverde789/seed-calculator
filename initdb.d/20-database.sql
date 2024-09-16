create user admin with encrypted password 'admin';
create database stardew with owner admin encoding 'utf8';
revoke all privileges on database stardew from public;
grant all privileges on database stardew to admin;
alter database stardew set search_path to stardew;

\connect stardew;
drop schema if exists stardew cascade;
create schema if not exists stardew authorization admin;

create user app with encrypted password 'app';
grant connect on database stardew to app;
grant usage on schema stardew to app;
alter default privileges in schema stardew
    grant select, insert, update, delete on tables to app;
alter default privileges in schema stardew
    grant usage on sequences to app;
