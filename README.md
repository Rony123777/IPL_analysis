![IPL](https://github.com/Rony123777/IPL_analysis/assets/99428911/e344cde4-56d1-49da-8837-742de14560ce)

# IPL_ANALYSIS
This project provides an analysis of Indian Premier League (IPL) data using SQL statements, including joins, functions like group by, order by, and aggregate functions. The analysis focuses on three IPL seasons: 2017, 2009, and 2008.

Data
The analysis utilizes a comprehensive dataset containing IPL match details, team information, player statistics, and more. The dataset includes data for multiple seasons and provides a rich source of information for extracting insights.

SQL Statements
The following SQL statements and techniques are used in the analysis:

Joins: Perform joins between multiple tables to combine relevant data. This allows for the correlation of information from different tables, such as joining match details with team information or player statistics.

Group By: Group data based on specific columns to perform aggregate calculations on grouped data. This allows for summarizing information based on common attributes, such as finding total runs scored by each team or calculating average player performance.

Order By: Sort data based on specific columns in ascending or descending order. This helps in arranging the data to identify patterns or find top performers based on certain criteria, such as sorting teams by the number of wins or sorting players by their batting average.

Aggregate Functions: Utilize aggregate functions such as SUM, COUNT, AVG, MAX, and MIN to perform calculations on groups of data. These functions allow for deriving meaningful insights from large datasets, such as finding the total number of matches played, the average score per innings, or the maximum wickets taken by a player.

Seasons Analyzed
This analysis focuses on three IPL seasons: 2017, 2009, and 2008. By examining these specific seasons, we aim to gain insights into team performance, player statistics, and overall trends within these years.

Conclusion
The IPL analysis using SQL statements, joins, and various functions offers valuable insights into team and player performance across the selected seasons. By utilizing the power of SQL, we can extract meaningful information from the IPL dataset, allowing us to understand patterns, trends, and statistics that contribute to the excitement of the Indian Premier League.

Matches table attributes : id,season,city,date,team1,team2,toss_winner,toss_decision,result,dl_applied,winner,win_by_runs,win_by_wickets,player_of_match,venue,umpire1,umpire2,umpire3

Deliveries table attributes :match_id,inning,batting_team,bowling_team,over_no,ball,batsman,non_striker,bowler,is_super_over_no,wide_runs,bye_runs
,legbye_runs,noball_runs,penalty_runs,batsman_runs,extra_runs,total_runs,player_dismissed,dismissal_kind,fielder







                                                                      QUESTIONS

IPL-analysis

01 HOW MANY MATCHES WERE WON BY EACH TEAM IN EACH SEASON?

02 WHAT IS THE AVERAGE STRIKE RATE OF BATSMEN IN THE IPL DATASET?

03 WHAT IS THE NUMBER OF MATCHES WON BY EACH TEAM BATTING FIRST VERSUS BATTINGSECOND?


04 WHICH BATSMAN HAS THE HIGHEST STRIKE RATE (MINIMUM 200 RUNS SCORED)?

05 HOW MANY TIMES HAS EACH BATSMAN BEEN DISMISSED BY THE BOWLER 'MALINGA'?

06 WHAT IS THE AVERAGE PERCENTAGE OF BOUNDARIES (FOURS AND SIXESCOMBINED) HIT BY EACH BATSMAN ?

07 WHAT ARE THE TOP 5 PLAYERS WITH THE MOST PLAYER OF THE MATCH AWARDS ?

08 WHAT IS THE HIGHEST PARTNERSHIP (RUNS) FOR EACH TEAM IN EACH SEASON?

09 HOW MANY EXTRAS (WIDES & NO-BALLS) WERE BOWLED BY EACH TEAM IN EACH MATCH?

10 WHICH BOWLER HAS THE BEST BOWLING FIGURES (MOST WICKETS TAKEN) IN A SINGLEMATCH?

11 HOW MANY MATCHES RESULTED IN A WIN FOR EACH TEAM IN EACH CITY?

12 HOW MANY TIMES DID EACH TEAM WIN THE TOSS IN EACH SEASON?

13 HOW MANY MATCHES DID EACH PLAYER WIN THE "PLAYER OF THE MATCH" AWARD?

14 WHAT IS THE AVERAGE NUMBER OF BOUNDARIES HIT BY EACH TEAM IN EACH SEASON ?

15 WHICH TEAM HAS THE HIGHEST TOTAL SCORE IN A SINGLE MATCH?

16 WHICH BATSMAN HAS SCORED THE MOST RUNS IN A SINGLE MATCH?

17 WHAT IS THE AVERAGE NUMBER OF RUNS SCORED IN EACH OVER OF THE INNINGS INEACH MATCH?


