# Load cleaned aupvb pbp data from the volleydata repository.

Load cleaned aupvb pbp data from the volleydata repository.

## Usage

``` r
load_aupvb_pbp(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing play-by-play data for the specified seasons.

|                         |      |
|-------------------------|------|
| Column Name             | Type |
| season                  | dbl  |
| week_number             | dbl  |
| game_number             | dbl  |
| play_sequence_number    | dbl  |
| set_number              | dbl  |
| rally_number            | dbl  |
| play_code               | chr  |
| narrative_formatted     | chr  |
| played_id               | dbl  |
| serve_ace               | lgl  |
| serve_error             | lgl  |
| serve_continue          | lgl  |
| attack_kill             | lgl  |
| attack_error            | lgl  |
| attack_continue         | lgl  |
| pass_good               | lgl  |
| pass_error              | lgl  |
| pass_continue           | lgl  |
| dig_success             | lgl  |
| dig_continue            | lgl  |
| block_stuff             | lgl  |
| block_assist            | lgl  |
| block_continue          | lgl  |
| set_assist              | lgl  |
| set_error               | lgl  |
| set_continue            | lgl  |
| home_team_score         | dbl  |
| away_team_score         | dbl  |
| scoring_team_id         | dbl  |
| home_team_id            | dbl  |
| away_team_id            | dbl  |
| set_status_lk           | chr  |
| season_id               | dbl  |
| game_id                 | dbl  |
| play_text               | chr  |
| start_time              | dbl  |
| end_time                | dbl  |
| video_minutes           | dbl  |
| video_seconds           | dbl  |
| alternate_video_seconds | dbl  |
| date_time_file_received | chr  |

## Examples

``` r
try({load_aupvb_pbp(2024)})
#> Rows: 30507 Columns: 41
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (4): play_code, narrative_formatted, set_status_lk, play_text
#> dbl (16): season, week_number, game_number, play_sequence_number, set_number...
#> lgl (21): serve_ace, serve_error, serve_continue, attack_kill, attack_error,...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 30,507 × 41
#>    season week_number game_number play_sequence_number set_number rally_number
#>     <dbl>       <dbl>       <dbl>                <dbl>      <dbl>        <dbl>
#>  1   2024           1           1                   -1          0            0
#>  2   2024           1           1                    1          1            2
#>  3   2024           1           1                    2          1            2
#>  4   2024           1           1                    3          1            2
#>  5   2024           1           1                    4          1            2
#>  6   2024           1           1                    5          1            2
#>  7   2024           1           1                    6          1            2
#>  8   2024           1           1                    7          1            2
#>  9   2024           1           1                    8          1            2
#> 10   2024           1           1                    9          1            3
#> # ℹ 30,497 more rows
#> # ℹ 35 more variables: play_code <chr>, narrative_formatted <chr>,
#> #   player_id <dbl>, serve_ace <lgl>, serve_error <lgl>, serve_continue <lgl>,
#> #   attack_kill <lgl>, attack_error <lgl>, attack_continue <lgl>,
#> #   pass_good <lgl>, pass_error <lgl>, pass_continue <lgl>, dig_success <lgl>,
#> #   dig_continue <lgl>, block_stuff <lgl>, block_assist <lgl>,
#> #   block_continue <lgl>, set_assist <lgl>, set_error <lgl>, …
```
