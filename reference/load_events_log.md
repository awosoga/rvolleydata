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

|                                 |        |
|---------------------------------|--------|
| Column Name                     | Type   |
| match_id                        | int    |
| season                          | int    |
| match_datetime                  | string |
| set                             | int    |
| set_start_time                  | string |
| set_end_time                    | string |
| set_duration                    | int    |
| set_final_home_score            | int    |
| set_final_away_score            | int    |
| event_type                      | string |
| event_time                      | string |
| libero_enters                   | bool   |
| team_involved                   | string |
| libero_jersey_number            | int    |
| libero_substitute_jersey_number | int    |
| rally_start_time                | string |
| rally_end_time                  | string |
| rally_point_winner              | string |
| substitute_in_jersey_number     | int    |
| substitute_out_jersey_number    | int    |
| challenge_approved              | string |
| challenge_reason                | string |
| challenge_method                | string |
| challenge_response              | string |
| challenge_at_home_score         | float  |
| challenge_at_away_score         | float  |
| challenge_score_change          | string |
| serving_team                    | string |
| current_home_score              | float  |
| current_away_score              | float  |
| home_team_p1                    | float  |
| home_team_p2                    | float  |
| home_team_p3                    | float  |
| home_team_p4                    | float  |
| home_team_p5                    | float  |
| home_team_p6                    | float  |
| away_team_p1                    | float  |
| away_team_p2                    | float  |
| away_team_p3                    | float  |
| away_team_p4                    | float  |
| away_team_p5                    | float  |
| away_team_p6                    | float  |
| verified_time                   | string |
| verified_method                 | string |
| sanction_type                   | string |
| sanction_remark                 | float  |
| sanction_staff_role             | string |
| staff_first_name                | string |
| staff_last_name                 | string |
| staff_type                      | string |
| is_exceptional                  | string |

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
