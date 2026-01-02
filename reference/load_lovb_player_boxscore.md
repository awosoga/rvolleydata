# Load cleaned lovb player boxscore data from the volleydata repository.

Load cleaned lovb player boxscore data from the volleydata repository.

## Usage

``` r
load_lovb_player_boxscore(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the player boxscore data for the specified
seasons.

|                          |      |
|--------------------------|------|
| Column Name              | Type |
| match_id                 | int  |
| season                   | int  |
| match_datetime           | chr  |
| team_involved            | chr  |
| team_name                | chr  |
| player_lastname          | chr  |
| player_firstname         | chr  |
| sets_played              | int  |
| is_captain               | lgl  |
| number                   | chr  |
| libero                   | int  |
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
try({load_lovb_player_boxscore(2025)})
#> Rows: 5218 Columns: 36
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr   (7): team_involved, team_name, player_name, first_name, last_name, set...
#> dbl  (26): match_id, season, sets_played, player_number, set_number, serves,...
#> lgl   (2): is_captain, is_libero
#> dttm  (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 5,218 × 36
#>    match_id season match_datetime      team_involved team_name    player_name   
#>       <dbl>  <dbl> <dttm>              <chr>         <chr>        <chr>         
#>  1  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Tia Jimerson  
#>  2  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Tia Jimerson  
#>  3  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Tia Jimerson  
#>  4  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Tia Jimerson  
#>  5  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Onye Ofoegbu  
#>  6  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Beatrice Negr…
#>  7  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Beatrice Negr…
#>  8  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Beatrice Negr…
#>  9  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Beatrice Negr…
#> 10  2161068   2025 2025-01-09 00:30:00 home          LOVB Atlanta Gia Day       
#> # ℹ 5,208 more rows
#> # ℹ 30 more variables: first_name <chr>, last_name <chr>, sets_played <dbl>,
#> #   player_number <dbl>, is_captain <lgl>, is_libero <lgl>, set_number <dbl>,
#> #   set_starting_position <chr>, serves <dbl>, serve_errors <dbl>,
#> #   serve_aces <dbl>, serve_efficiency <dbl>, attack_attempts <dbl>,
#> #   attack_errors <dbl>, attack_kills <dbl>, attack_success_ratio <dbl>,
#> #   attack_efficiency <dbl>, receptions <dbl>, reception_errors <dbl>, …
```
