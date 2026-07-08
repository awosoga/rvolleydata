# Load cleaned events log data from the volleydata repository.

Load cleaned events log data from the volleydata repository.

## Usage

``` r
load_events_log(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the events log data for the specified seasons.

|                                 |      |
|---------------------------------|------|
| Column Name                     | Type |
| match_id                        | int  |
| season                          | int  |
| match_datetime                  | chr  |
| opening_set_coin_toss_winner    | chr  |
| opening_set_serving_team        | chr  |
| opening_set_left_side_team      | chr  |
| deciding_set_coin_toss_winner   | chr  |
| deciding_set_serving_team       | chr  |
| deciding_set_left_side_team     | chr  |
| set                             | int  |
| set_start_time                  | chr  |
| set_end_time                    | chr  |
| set_duration                    | int  |
| set_final_home_score            | int  |
| set_final_away_score            | int  |
| home_team_starter_position_1    | int  |
| home_team_starter_position_2    | int  |
| home_team_starter_position_3    | int  |
| home_team_starter_position_4    | int  |
| home_team_starter_position_5    | int  |
| home_team_starter_position_6    | int  |
| away_team_starter_position_1    | int  |
| away_team_starter_position_2    | int  |
| away_team_starter_position_3    | int  |
| away_team_starter_position_4    | int  |
| away_team_starter_position_5    | int  |
| away_team_starter_position_6    | int  |
| event_type                      | chr  |
| event_time                      | chr  |
| libero_enters                   | lgl  |
| team_involved                   | chr  |
| libero_jersey_number            | int  |
| libero_substitute_jersey_number | int  |
| rally_start_time                | chr  |
| rally_end_time                  | chr  |
| rally_point_winner              | chr  |
| substitute_in_jersey_number     | int  |
| substitute_out_jersey_number    | int  |
| challenge_approved              | chr  |
| challenge_reason                | chr  |
| challenge_method                | chr  |
| challenge_response              | chr  |
| challenge_at_home_score         | dbl  |
| challenge_at_away_score         | dbl  |
| challenge_score_change          | chr  |
| serving_team                    | chr  |
| current_home_score              | dbl  |
| current_away_score              | dbl  |
| home_team_p1                    | dbl  |
| home_team_p2                    | dbl  |
| home_team_p3                    | dbl  |
| home_team_p4                    | dbl  |
| home_team_p5                    | dbl  |
| home_team_p6                    | dbl  |
| away_team_p1                    | dbl  |
| away_team_p2                    | dbl  |
| away_team_p3                    | dbl  |
| away_team_p4                    | dbl  |
| away_team_p5                    | dbl  |
| away_team_p6                    | dbl  |
| verified_time                   | chr  |
| verified_method                 | chr  |
| sanction_type                   | chr  |
| sanction_remark                 | dbl  |
| sanction_staff_role             | chr  |
| staff_first_name                | chr  |
| staff_last_name                 | chr  |
| staff_type                      | chr  |
| is_exceptional                  | chr  |
| league                          | chr  |

## Examples

``` r
try({load_events_log("mlv", 2024)})
#> # A tibble: 25,558 × 70
#>    match_id season match_datetime      opening_set_coin_toss_winner
#>       <dbl>  <dbl> <dttm>              <chr>                       
#>  1  2125309   2024 2024-03-24 23:00:00 away                        
#>  2  2125309   2024 2024-03-24 23:00:00 away                        
#>  3  2125309   2024 2024-03-24 23:00:00 away                        
#>  4  2125309   2024 2024-03-24 23:00:00 away                        
#>  5  2125309   2024 2024-03-24 23:00:00 away                        
#>  6  2125309   2024 2024-03-24 23:00:00 away                        
#>  7  2125309   2024 2024-03-24 23:00:00 away                        
#>  8  2125309   2024 2024-03-24 23:00:00 away                        
#>  9  2125309   2024 2024-03-24 23:00:00 away                        
#> 10  2125309   2024 2024-03-24 23:00:00 away                        
#> # ℹ 25,548 more rows
#> # ℹ 66 more variables: opening_set_serving_team <chr>,
#> #   opening_set_left_side_team <chr>, set <dbl>, set_start_time <dttm>,
#> #   set_end_time <dttm>, set_duration <dbl>, set_final_home_score <dbl>,
#> #   set_final_away_score <dbl>, home_team_starter_position_1 <dbl>,
#> #   home_team_starter_position_2 <dbl>, home_team_starter_position_3 <dbl>,
#> #   home_team_starter_position_4 <dbl>, home_team_starter_position_5 <dbl>, …
```
