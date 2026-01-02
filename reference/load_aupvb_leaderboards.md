# Load cleaned aupvb leaderboards data from the volleydata repository

Load cleaned aupvb leaderboards data from the volleydata repository

## Usage

``` r
load_aupvb_leaderboards(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

Returns a data frame containing leaderboards for the specified seasons.

|                                    |      |
|------------------------------------|------|
| Column Name                        | Type |
| season                             | dbl  |
| week_number                        | dbl  |
| game_number                        | dbl  |
| game_rank                          | dbl  |
| first_name                         | chr  |
| last_name                          | chr  |
| uniform_number                     | dbl  |
| total_points                       | dbl  |
| mvp_points                         | dbl  |
| win_points                         | dbl  |
| stat_points                        | dbl  |
| first_place_mvp                    | lgl  |
| first_place_total_points           | dbl  |
| second_place_mvp                   | lgl  |
| second_place_total_points          | dbl  |
| third_place_mvp                    | lgl  |
| third_place_total_points           | dbl  |
| defensive_mvp                      | lgl  |
| defensive_mvp_total_points         | dbl  |
| set_wins                           | dbl  |
| set_wins_total_points              | dbl  |
| match_win                          | dbl  |
| match_win_total_points             | dbl  |
| service_aces                       | dbl  |
| service_ace_points                 | dbl  |
| service_errors                     | dbl  |
| service_error_points               | dbl  |
| attack_kills                       | dbl  |
| attack_kill_points                 | dbl  |
| attack_errors                      | dbl  |
| attack_error_points                | dbl  |
| set_assists                        | dbl  |
| set_assist_points                  | dbl  |
| set_errors                         | dbl  |
| set_error_points                   | dbl  |
| digs                               | dbl  |
| dig_points                         | dbl  |
| good_receptions                    | dbl  |
| good_reception_points              | dbl  |
| reception_errors                   | dbl  |
| reception_error_points             | dbl  |
| block_assists                      | dbl  |
| block_assist_points                | dbl  |
| block_stuffs                       | dbl  |
| block_stuff_points                 | dbl  |
| points_behind                      | dbl  |
| has_extra_inning_stats             | lgl  |
| is_captain                         | lgl  |
| roster_status                      | chr  |
| primary_position_position_lk       | chr  |
| primary_position_description       | chr  |
| primary_position_short_description | chr  |
| team_name                          | chr  |
| team_color                         | chr  |
| team_seed                          | dbl  |
| season_id                          | dbl  |
| competitor_id                      | dbl  |
| player_id                          | dbl  |
| player_slug                        | chr  |
| uniform_number_display             | dbl  |
| overall_rank                       | dbl  |
| overall_rank_change                | dbl  |
| total_au_points                    | dbl  |
| percent_change                     | dbl  |
| position_change                    | dbl  |
| updated_flg                        | lgl  |
| tie_flg                            | lgl  |
| missed_games_flg                   | lgl  |
| previous_seqno                     | dbl  |
| has_game_experience                | dbl  |

## Examples

``` r
try({load_aupvb_leaderboards(2024)})
#> Rows: 3130 Columns: 70
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (9): first_name, last_name, roster_status, primary_position_position_lk...
#> dbl (52): season, week_number, game_number, game_rank, uniform_number, total...
#> lgl  (9): first_place_mvp, second_place_mvp, third_place_mvp, defensive_mvp,...
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 660 × 70
#>    season week_number game_number game_rank first_name last_name  uniform_number
#>     <dbl>       <dbl>       <dbl>     <dbl> <chr>      <chr>               <dbl>
#>  1   2024           1           1         1 Khat       Bell                   18
#>  2   2024           1           1         2 Marlie     Monserez               33
#>  3   2024           1           1         3 Claire     Hoffman                21
#>  4   2024           1           1         4 Dani       Drews                   1
#>  5   2024           1           1         5 Madi       Kingdon R…             19
#>  6   2024           1           1         6 Morgan     Hentz                  46
#>  7   2024           1           1         7 Jenna      Rosenthal              16
#>  8   2024           1           1         8 Karis      Watson                 48
#>  9   2024           1           1         9 Taylor     Bruns Teg…             17
#> 10   2024           1           1        10 Natalia    Valentin-…             27
#> # ℹ 650 more rows
#> # ℹ 63 more variables: total_points <dbl>, mvp_points <dbl>, win_points <dbl>,
#> #   stat_points <dbl>, first_place_mvp <lgl>, first_place_total_points <dbl>,
#> #   second_place_mvp <lgl>, second_place_total_points <dbl>,
#> #   third_place_mvp <lgl>, third_place_total_points <dbl>, defensive_mvp <lgl>,
#> #   defensive_mvp_total_points <dbl>, set_wins <dbl>,
#> #   set_wins_total_points <dbl>, match_win <dbl>, …
```
