# Load cleaned lovb events log data from the volleydata repository.

Load cleaned lovb events log data from the volleydata repository.

## Usage

``` r
load_lovb_events_log(seasons = NULL)
```

## Arguments

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
try({load_lovb_events_log(2025)})
#> Rows: 19348 Columns: 49
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (13): event_type, team_involved, rally_point_winner, challenge_reason, ...
#> dbl  (26): match_id, season, set, set_duration, set_final_home_score, set_fi...
#> lgl   (3): libero_enters, challenge_approved, sanction_remark
#> dttm  (7): match_datetime, set_start_time, set_end_time, event_time, rally_s...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 19,348 × 49
#>    match_id season match_datetime        set set_start_time     
#>       <dbl>  <dbl> <dttm>              <dbl> <dttm>             
#>  1  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  2  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  3  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  4  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  5  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  6  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  7  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  8  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#>  9  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#> 10  2161068   2025 2025-01-09 00:30:00     1 2025-01-09 00:30:00
#> # ℹ 19,338 more rows
#> # ℹ 44 more variables: set_end_time <dttm>, set_duration <dbl>,
#> #   set_final_home_score <dbl>, set_final_away_score <dbl>, event_type <chr>,
#> #   event_time <dttm>, libero_enters <lgl>, team_involved <chr>,
#> #   libero_jersey_number <dbl>, libero_substitute_jersey_number <dbl>,
#> #   rally_start_time <dttm>, rally_end_time <dttm>, rally_point_winner <chr>,
#> #   substitute_in_jersey_number <dbl>, substitute_out_jersey_number <dbl>, …
```
