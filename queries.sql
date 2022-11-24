--Страны с максимальным кол-вом соревнований за указанный период
select count(*) as count, host_country from competitions where year between 2015 and 2017 group by host_country;

--Страны, где проводились чемпионаты мира по указанному виду спорта
select host_country from competitions where kind_id = 1;

--Все соперники указанной команды в соревнованиях в заданном году
select team_id from competions_teams_result where competition_id in (select competition_id from competions_teams_result where team_id = 1);

--Все команды, участвовавшие в указанных соревнованиях в заданной стране
select * from competions_teams_result where competition_id in (select id from competitions where kind_id = 7 and host_country = 'Страна 7');

--Все команды, у которых не было ничьих
select team_id from competions_teams_result where team_result != 'Ничья';