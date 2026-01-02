# Load cleaned aupvb player info data from the volleydata repository

Load cleaned aupvb player info data from the volleydata repository

## Usage

``` r
load_aupvb_player_info(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing player information for the specified seasons.

|                                      |      |
|--------------------------------------|------|
| Column Name                          | Type |
| season                               | dbl  |
| week_number                          | dbl  |
| game_number                          | dbl  |
| game_date                            | chr  |
| rank                                 | dbl  |
| rank_change                          | dbl  |
| cumulative_podbls                    | dbl  |
| points_this_match                    | dbl  |
| played_this_match                    | lgl  |
| first_name                           | chr  |
| last_name                            | chr  |
| uniform_number                       | dbl  |
| sets_played                          | dbl  |
| kills                                | dbl  |
| kill_per_set                         | dbl  |
| attack_attempts                      | dbl  |
| attack_errors                        | dbl  |
| attack_percentage                    | dbl  |
| assists                              | dbl  |
| assists_per_set                      | dbl  |
| setting_errors                       | dbl  |
| service_aces                         | dbl  |
| service_aces_per_set                 | dbl  |
| service_errors                       | dbl  |
| total_reception_attempts             | dbl  |
| reception_errors                     | dbl  |
| positive_reception_pct               | dbl  |
| digs                                 | dbl  |
| digs_per_set                         | dbl  |
| blocks                               | dbl  |
| blocks_per_set                       | dbl  |
| block_assists                        | dbl  |
| block_assists_per_set                | dbl  |
| primary_position_position_lk         | chr  |
| primary_position_description         | chr  |
| primary_position_short_description   | chr  |
| secondary_position_position_lk       | chr  |
| secondary_position_description       | chr  |
| secondary_position_short_description | chr  |
| current_roster_status_lk             | chr  |
| current_roster_status_description    | chr  |
| is_home_team                         | lgl  |
| team_color                           | chr  |
| home_team_name                       | chr  |
| away_team_name                       | chr  |
| season_id                            | dbl  |
| season_type                          | chr  |
| player_id                            | dbl  |
| player_slug                          | chr  |
| uniform_number_display               | chr  |
| team_id                              | dbl  |
| type                                 | chr  |
| stat_type                            | chr  |

## Examples

``` r
try({load_aupvb_player_info(2024)})
#> Rows: 2904 Columns: 53
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (17): first_name, last_name, primary_position_position_lk, primary_posi...
#> dbl  (33): season, week_number, game_number, rank, rank_change, cumulative_p...
#> lgl   (2): played_this_match, is_home_team
#> dttm  (1): game_date
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 648 × 53
#>    season week_number game_number game_date            rank rank_change
#>     <dbl>       <dbl>       <dbl> <dttm>              <dbl>       <dbl>
#>  1   2024           1           1 2024-10-03 00:00:00    43          -1
#>  2   2024           1           1 2024-10-03 00:00:00    37           4
#>  3   2024           1           1 2024-10-03 00:00:00    32           0
#>  4   2024           1           1 2024-10-03 00:00:00     4          -1
#>  5   2024           1           1 2024-10-03 00:00:00    26          -1
#>  6   2024           1           1 2024-10-03 00:00:00     6           0
#>  7   2024           1           1 2024-10-03 00:00:00    44          -1
#>  8   2024           1           1 2024-10-03 00:00:00    13           1
#>  9   2024           1           1 2024-10-03 00:00:00     8           2
#> 10   2024           1           1 2024-10-03 00:00:00    36           0
#> # ℹ 638 more rows
#> # ℹ 47 more variables: cumulative_points <dbl>, points_this_match <dbl>,
#> #   played_this_match <lgl>, first_name <chr>, last_name <chr>,
#> #   uniform_number <dbl>, sets_played <dbl>, kills <dbl>, kills_per_set <dbl>,
#> #   attack_attempts <dbl>, attack_errors <dbl>, attack_percentage <dbl>,
#> #   assists <dbl>, assists_per_set <dbl>, setting_errors <dbl>,
#> #   service_aces <dbl>, service_aces_per_set <dbl>, service_errors <dbl>, …
```
