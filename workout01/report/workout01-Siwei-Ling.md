Workout 1
================
Michael Ling

Golden State Warriors' shooting analysis
----------------------------------------

Golden State Warriors' shooting analysis
----------------------------------------

In the 2016-2017 season, the Golden State Warriors have been invincible. With Kevin Durant's participation, they scored 67 wins and 15 losses in the regular season and 16 wins and 1 loss in the play offs. On June 13th, the the Golden State Warriors beat the Cleveland Cavaliers by 129-120 and won the finals by 4-1, making the Golden State Warriors the fourth most-winning team in the NBA history with a total of 5 champions.

<img src="../images/opening.jpg" width="80%" style="display: block; margin: auto;" />

The Golden State Warriors scored an average of 121.6 points in this year's grand finals, which is the fourth highest average score in the history of the NBA finals and the highest average score in the past 50 years. Here we are going to analyze the key to the Golden State Warriors' huge success: **the ability to shoot**.

#### The overall statistics

    ## # A tibble: 1 x 3
    ##   team_name             two_points_perc_made three_points_perc_made
    ##   <fct>                                <dbl>                  <dbl>
    ## 1 Golden State Warriors                0.553                  0.395

> The over all effective shooting percentage of the Golden State Warriors

    ## # A tibble: 28 x 7
    ##    opponent two_points two_points_made two_points_perc~ three_points
    ##    <fct>         <int>           <int>            <dbl>        <int>
    ##  1 Atlanta~         56              28             50             63
    ##  2 Boston ~         47              28             59.6           25
    ##  3 Brookly~         69              28             40.6           56
    ##  4 Charlot~         69              38             55.1           67
    ##  5 Chicago~         67              35             52.2           51
    ##  6 Clevela~         65              40             61.5           62
    ##  7 Dallas ~         67              44             65.7           80
    ##  8 Denver ~        104              59             56.7           70
    ##  9 Detroit~         30              17             56.7           27
    ## 10 Houston~        143              81             56.6          128
    ## # ... with 18 more rows, and 2 more variables: three_points_made <int>,
    ## #   three_points_perc_made <dbl>

> The effective shooting percentage of the Golden State Warriors against other teams

In the 2016-2017 season, the Golden State Warriors have a 55.3% effective 2pt-field-goal percentage, higher than all other teams in the entire season. More impressivel, their effective 2pt-field-goal percentage goes up to nearly 65% when facing teams including the Indiana Pacers and the Dallas Mavericks, which guarantees the victories against these teams.

#### Individual shooting statistics

<img src="../images/opening.JPEG" width="80%" style="display: block; margin: auto;" />

The summarize of the players' shooting statistics are shown below. In the following part, e will analyze each player's shooting performance seperately.

<img src="../images/gsw-shot-charts.png" width="80%" style="display: block; margin: auto;" /> &gt;The shot charts of all GSW players

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   210   134      63.8
    ## 2 Draymond Green   346   171      49.4
    ## 3 Kevin Durant     643   390      60.7
    ## 4 Klay Thompson    640   329      51.4
    ## 5 Stephen Curry    563   304      54.0

> 2PT effective shooting percentage by player

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   161    58      36.0
    ## 2 Draymond Green   232    74      31.9
    ## 3 Kevin Durant     272   105      38.6
    ## 4 Klay Thompson    580   246      42.4
    ## 5 Stephen Curry    687   280      40.8

> 3PT effective shooting percentage by player

    ## # A tibble: 5 x 4
    ##   name           total  made perc_made
    ##   <fct>          <int> <int>     <dbl>
    ## 1 Andre Iguodala   371   192      51.8
    ## 2 Draymond Green   578   245      42.4
    ## 3 Kevin Durant     915   495      54.1
    ## 4 Klay Thompson   1220   575      47.1
    ## 5 Stephen Curry   1250   584      46.7

> Effective shooting percentage by player

<img src="../images/kevin durant.jpg" width="80%" style="display: block; margin: auto;" />

The participation of Kevin Durant surely plays a significant role in the Golden State Warriors gret success. In the entire season, Durant achieved an average of 54.1% effective field-goal percentage, the highest among all Golden State Warriors' players. Durant also hits pull-up 3-pointer late in Game 3 of The Finals, helping the team finish off the Cavaliers.

<img src="../images/kevin durant.jpg" width="80%" style="display: block; margin: auto;" />

    ##   total made perc_made
    ## 1   915  495  54.09836

> Kevin Durant's effective field-goal percentage

<img src="../images/stephen curry.jpg" width="80%" style="display: block; margin: auto;" />

Stephen Curry continued his astonishing performance in the 2016-2017 season. Despite his overall effective field-goal-percentage being lower than Durant's, Curry managed to achieve 40.8% effective 3-points-goal-percentage among 687 attempts, proving to be a great threat for his opponents. Curry also won the Assist of the year (together with his teammate Draymond Green) by assisting Durant.

    ##   total made perc_made
    ## 1  1250  584     46.72

> Stephen Curry's effective field-goal percentage

<img src="../images/draymond green.jpg" width="80%" style="display: block; margin: auto;" />

Despite his effective field-gold percentage being the lowest of the team, Draymond Green proved to be the core of the Golden States Warriors this season. He won the Defensive player of the year and the Assist of the year. He also managed to score 74 3-points for the team while focusing on the team's defence.

    ##   total made perc_made
    ## 1   578  245  42.38754

> Draymond Green's effective field-goal percentage

<img src="../images/klay thompson.jpg" width="80%" style="display: block; margin: auto;" />

Klay Thompson scored the highest effective 3-point-field-goal percentage during the season. Among the 580 3-points attempts, he made 246 of them, proving himself to be the deadliest outer field shooting in the Golden State Warriors. His performance of scoring 60 in three quarters vs. Indiana brought him the Performance of the year, and also yet another solid victory for the Golden State Warriors.

    ##   total made perc_made
    ## 1     0    0       NaN

> Klay Thompson's effective field-goal percentage

<img src="../images/andre iguodala.jpg" width="80%" style="display: block; margin: auto;" />

Comparing to his teammates, Andre Iguodala is less famous and arouse less attention. His performance, however, is also amazing with 36.2% of effective 3-pointss-field-goal percentage. He is also nominated for the Kia NBA Sixth Man Award.

    ##   total made perc_made
    ## 1   371  192  51.75202

> Andre Iguodala's effective field-goal percentage

#### Conclusions

In the 2016-2017 season, the Golden State Warriors performed aggresively, scoring the most points among all NBA teams. In the entire season, the excellence of the entire team produced two Assist of the years and the Performance of the year. We have reasons to believe that the team will continue to dominate the fields and score more points in the next season.

#### References

[link](https://www.nba.com/nbaawards/2017/finalists) [link](https://en.wikipedia.org/wiki/2016%E2%80%9317_NBA_season) [link](https://www.nba.com/article/2017/12/14/one-team-one-stat-warriors-shooting-better-ever)
