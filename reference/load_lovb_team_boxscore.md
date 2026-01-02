# Load cleaned lovb team boxscore data from the volleydata repository.

Load cleaned lovb team boxscore data from the volleydata repository.

## Usage

``` r
load_lovb_team_boxscore(seasons = NULL)
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
try({load_lovb_team_boxscore(2025)})
#> Rows: 490 Columns: 28
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr   (3): team_involved, team_name, id
#> dbl  (24): match_id, season, set_number, serves, serve_errors, serve_aces, s...
#> dttm  (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 490 × 28
#>    match_id season match_datetime      team_involved team_name set_number serves
#>       <dbl>  <dbl> <dttm>              <chr>         <chr>          <dbl>  <dbl>
#>  1  2161068   2025 2025-01-09 00:30:00 home          LOVB Atl…          1     23
#>  2  2161068   2025 2025-01-09 00:30:00 home          LOVB Atl…          2     25
#>  3  2161068   2025 2025-01-09 00:30:00 home          LOVB Atl…          3     24
#>  4  2161068   2025 2025-01-09 00:30:00 home          LOVB Atl…          4     21
#>  5  2161068   2025 2025-01-09 00:30:00 away          LOVB Sal…          1     24
#>  6  2161068   2025 2025-01-09 00:30:00 away          LOVB Sal…          2     27
#>  7  2161068   2025 2025-01-09 00:30:00 away          LOVB Sal…          3     21
#>  8  2161068   2025 2025-01-09 00:30:00 away          LOVB Sal…          4     25
#>  9  2161288   2025 2025-01-10 01:00:00 home          LOVB Hou…          1     26
#> 10  2161288   2025 2025-01-10 01:00:00 home          LOVB Hou…          2     24
#> # ℹ 480 more rows
#> # ℹ 21 more variables: serve_errors <dbl>, serve_aces <dbl>,
#> #   serve_efficiency <dbl>, attack_attempts <dbl>, attack_errors <dbl>,
#> #   attack_kills <dbl>, attack_success_ratio <dbl>, attack_efficiency <dbl>,
#> #   receptions <dbl>, reception_errors <dbl>, positive_reception_ratio <dbl>,
#> #   perfect_reception_ratio <dbl>, block_points <dbl>, block_touches <dbl>,
#> #   earned_points <dbl>, net_points <dbl>, assists <dbl>, …
```
