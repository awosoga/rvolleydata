# Load cleaned mlv team boxscore data from the volleydata repository.

Load cleaned mlv team boxscore data from the volleydata repository.

## Usage

``` r
load_mlv_team_boxscore(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing team boxscore data for the specified seasons.

|                          |      |
|--------------------------|------|
| Column Name              | Type |
| match_id                 | int  |
| season                   | int  |
| match_datetime           | chr  |
| team_involved            | chr  |
| team_name                | chr  |
| set_number               | int  |
| serves                   | int  |
| serve_errors             | int  |
| serve_aces               | int  |
| serve_efficiency         | dbl  |
| attack_attempts          | int  |
| attack_errors            | int  |
| attack_kills             | int  |
| attack_success_ratio     | dbl  |
| attack_efficiency        | dbl  |
| receptions               | int  |
| reception_errors         | int  |
| positive_reception_ratio | dbl  |
| perfect_reception_ratio  | dbl  |
| block_points             | int  |
| block_touches            | int  |
| earned_points            | int  |
| net_points               | int  |
| assists                  | int  |
| successful_digs          | int  |
| id                       | chr  |
| spike_hp                 | int  |
| points                   | int  |

## Examples

``` r
try({load_mlv_team_boxscore(2024)})
#> Rows: 1612 Columns: 28
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr   (3): team_involved, team_name, id
#> dbl  (24): match_id, season, set_number, serves, serve_errors, serve_aces, s...
#> dttm  (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 694 × 28
#>    match_id season match_datetime      team_involved team_name set_number serves
#>       <dbl>  <dbl> <dttm>              <chr>         <chr>          <dbl>  <dbl>
#>  1  2125267   2024 2024-01-25 01:00:00 home          Omaha Su…          1     25
#>  2  2125267   2024 2024-01-25 01:00:00 home          Omaha Su…          2     23
#>  3  2125267   2024 2024-01-25 01:00:00 home          Omaha Su…          3     25
#>  4  2125267   2024 2024-01-25 01:00:00 home          Omaha Su…          4     25
#>  5  2125267   2024 2024-01-25 01:00:00 home          Omaha Su…          5     14
#>  6  2125267   2024 2024-01-25 01:00:00 away          Atlanta …          1     25
#>  7  2125267   2024 2024-01-25 01:00:00 away          Atlanta …          2     25
#>  8  2125267   2024 2024-01-25 01:00:00 away          Atlanta …          3     17
#>  9  2125267   2024 2024-01-25 01:00:00 away          Atlanta …          4     20
#> 10  2125267   2024 2024-01-25 01:00:00 away          Atlanta …          5     14
#> # ℹ 684 more rows
#> # ℹ 21 more variables: serve_errors <dbl>, serve_aces <dbl>,
#> #   serve_efficiency <dbl>, attack_attempts <dbl>, attack_errors <dbl>,
#> #   attack_kills <dbl>, attack_success_ratio <dbl>, attack_efficiency <dbl>,
#> #   receptions <dbl>, reception_errors <dbl>, positive_reception_ratio <dbl>,
#> #   perfect_reception_ratio <dbl>, block_points <dbl>, block_touches <dbl>,
#> #   earned_points <dbl>, net_points <dbl>, assists <dbl>, …
```
