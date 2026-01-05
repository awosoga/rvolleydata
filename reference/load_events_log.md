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
| set                             | int  |
| set_start_time                  | chr  |
| set_end_time                    | chr  |
| set_duration                    | int  |
| set_final_home_score            | int  |
| set_final_away_score            | int  |
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
#> Warning: One or more parsing issues, call `problems()` on your data frame for details,
#> e.g.:
#>   dat <- vroom(...)
#>   problems(dat)
#> # A tibble: 25,558 × 52
#>    match_id season match_datetime        set set_start_time     
#>       <dbl>  <dbl> <dttm>              <dbl> <dttm>             
#>  1  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  2  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  3  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  4  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  5  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  6  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  7  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  8  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#>  9  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#> 10  2125267   2024 2024-01-25 01:00:00     1 2024-01-25 01:00:00
#> # ℹ 25,548 more rows
#> # ℹ 47 more variables: set_end_time <dttm>, set_duration <dbl>,
#> #   set_final_home_score <dbl>, set_final_away_score <dbl>, event_type <chr>,
#> #   event_time <dttm>, libero_enters <lgl>, team_involved <chr>,
#> #   libero_jersey_number <dbl>, libero_substitute_jersey_number <dbl>,
#> #   rally_start_time <dttm>, rally_end_time <dttm>, rally_point_winner <chr>,
#> #   substitute_in_jersey_number <dbl>, substitute_out_jersey_number <dbl>, …
```
