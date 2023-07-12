use ipl;

# Q1 WHAT ARE THE TOP 5 PLAYERS WITH THE MOST PLAYER OF THE MATCH AWARDS?

select count(player_of_match) from ipl.matches;
select player_of_match,count(*) as award_win from matches 
group by player_of_match order by award_win desc limit 5;

# HOW MANY MATCHES WERE WON BY EACH TEAM IN EACH SEASON?

select team1,count(winner) as time_winner from matches group by team1 order by time_winner desc;
select team2,count(winner) as time_winner from matches group by team2 order by time_winner desc;

select season,winner as team,count(*) as matches_won from matches 
group by season,winner;

select season,winner,count(*) as matches_wins from matches group by season,winner;

# Q3 WHAT IS THE AVERAGE STRIKE RATE OF BATSMEN IN THE IPL DATASET?
select batsman,(sum(total_runs)/count(ball)*100) as avg_strike_rate from deliveries group by batsman
order by avg_strike_rate desc;
# overal strike rate independent of specifi batsman
select avg(strike_rate) as avg_strike_rate 
from(select batsman,(sum(total_runs)/count(ball)*100) as strike_rate  from deliveries 
group by batsman) as batsman_stats;

#Q4 WHAT IS THE NUMBER OF MATCHES WON BY EACH TEAM BATTING FIRST VERSUS BATTINGSECOND?
select batting_first,count(*) as matches_won
from(
select case when win_by_runs>0 then team1
else team2
end as batting_first
from matches
where winner!="Tie") as batting_first_teams
group by batting_first;

# Q5 WHICH BATSMAN HAS THE HIGHEST STRIKE RATE (MINIMUM 200 RUNS SCORED)?
select batsman,(sum(batsman_runs)/count(ball)*100) as strike_rate 
from ipl.deliveries 
group by batsman  having sum(batsman_runs)>=200
order by strike_rate desc
limit 1 ;

#or

select batsman,(sum(batsman_runs)*100/count(*))
as strike_rate
from deliveries group by batsman
having sum(batsman_runs)>=200
order by strike_rate desc
limit 1;

# Q6 HOW MANY TIMES HAS EACH BATSMAN BEEN DISMISSED BY THE BOWLER 'MALINGA'?
select batsman,count(*) as total_dismissed
from deliveries 
where player_dismissed is not null 
and bowler='SL Malinga'
group by batsman;

#Q7 WHAT IS THE AVERAGE PERCENTAGE OF BOUNDARIES (FOURS AND SIXESCOMBINED) HIT BY EACH BATSMAN?
Select batsman,avg(case when batsman_runs=4 or batsman_runs=6
then 1 else 0 end )*100 as avg_boundries from ipl.deliveries group by batsman;

#Q8 WHAT IS THE AVERAGE NUMBER OF BOUNDARIES HIT BY EACH TEAM IN EACH SEASON?
#select count(distinct(batting_team)) from deliveries;
#select distinct(batting_team) from deliveries;
#select season,team1,count(winner) as mathes_wins from matches group by team1,season order by season ;

select season,batting_team,avg(fours+sixes) as average_boundaries
from(select season,match_id,batting_team,
sum(case when batsman_runs=4 then 1 else 0 end)as fours,
sum(case when batsman_runs=6 then 1 else 0 end) as sixes
from deliveries,matches 
where deliveries.match_id=matches.id
group by season,match_id,batting_team) as team_bounsaries
group by season,batting_team;

#Q10 How many extra(wide and no ball) were bowled by each team in each season ?

select m.id as match_no, d.batting_team ,
sum(d.extra_runs) as extra from
matches as m
join deliveries as d
on d.match_id=m.id 
where extra_runs>0
group by m.id,d.batting_team;

# Q11 Which bowler has taken most wicket in single match ?
select m.id as match_no,d.bowler,count(*) as wickets
from matches as m
join deliveries as d
on d.match_id=m.id
where d.player_dismissed is not null
group by m.id,bowler
order by wickets desc limit 5; 

# Q12 how many matches resulted in a win for each team from each city ?

select m.city ,case when m.team1=m.winner then m.team1 
when m.team2=m.winner then m.team2 
else "Draw"
end as winner_team,count(*) as winner_teams
from matches as m 
join deliveries as d
on d.match_id=m.id
where m.result!='tie'
group by m.city,winner_team;

#Q13 How many time each team win the toss in each season ?

select m.season,m.toss_winner ,count(*) as toss_wins
from matches as m group by season,toss_winner;

#Q14 How many palyer of the match award wins by each player ?

select m.player_of_match,count(*) as tottal_wins
from matches as m 
where m.player_of_match is not null
group by m.player_of_match order by tottal_wins desc;

#Q15 What is the average runs scored per each over of the innings in eadh match?
select m.id,d.inning,d.over_no,
avg(d.total_runs) as avg_runs_per_over
from matches as m
join deliveries as d
on d.match_id=m.id
group by m.id,d.inning,d.over_no;

#Q16 which team has the highest runs in a single match ?

select m.season,m.id as match_no,d.batting_team
,sum(d.total_runs) as total_score
from matches as m
join deliveries as d
on d.match_id=m.id
group by m.season,m.id,d.batting_team
order by total_score desc limit  1;

#Q17 Which batsman has scored maximus runs in a single match ?
select m.season,m.id as match_no,d.batsman,
sum(d.batsman_runs) as total_runs
from matches as m
join deliveries as d
on d.match_id=m.id
group by m.season,m.id,d.batsman
order by total_runs desc limit 1;



