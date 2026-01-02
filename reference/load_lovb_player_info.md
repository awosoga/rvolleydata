# Load cleaned lovb player info data from the volleydata repository.

Load cleaned lovb player info data from the volleydata repository.

## Usage

``` r
load_lovb_player_info(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

  |                         |      |
  |-------------------------|------|
  | Column Name             | Type |
  | match_id                | int  |
  | season                  | int  |
  | match_datetime          | chr  |
  | player_id               | int  |
  | player_name             | chr  |
  | first_name              | chr  |
  | last_name               | chr  |
  | jersey_number           | int  |
  | primary_position        | int  |
  | roster_status           | chr  |
  | is_foreign              | lgl  |
  | is_confederation        | lgl  |
  | is_captain              | lgl  |
  | is_libero               | lgl  |
  | set_1_is_starter        | lgl  |
  | set_1_starting_position | int  |
  | set_2_is_starter        | lgl  |
  | set_2_starting_position | int  |
  | set_3_is_starter        | lgl  |
  | set_3_starting_position | int  |
  | set_4_is_starter        | lgl  |
  | set_4_starting_position | int  |
  | set_5_is_starter        | lgl  |
  | set_5_starting_position | int  |
  | team_name               | chr  |
  | team_short_name         | chr  |
  | team_code               | chr  |
  | team_color              | chr  |

## Examples

``` r
try({load_lovb_player_info(2025)})
#> Rows: 1846 Columns: 28
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr   (8): player_name, first_name, last_name, roster_status, team_name, tea...
#> dbl  (10): match_id, season, player_id, jersey_number, primary_position, set...
#> lgl   (9): is_foreign, is_confederation, is_captain, is_libero, set_1_is_sta...
#> dttm  (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 1,846 × 28
#>    match_id season match_datetime      player_id player_name          first_name
#>       <dbl>  <dbl> <dttm>                  <dbl> <chr>                <chr>     
#>  1  2161068   2025 2025-01-09 00:30:00   2344566 Piyanut Pannoy       Piyanut   
#>  2  2161068   2025 2025-01-09 00:30:00   2344565 Marta Bechis         Marta     
#>  3  2161068   2025 2025-01-09 00:30:00   2344568 Jessica Rivero Marin Jessica   
#>  4  2161068   2025 2025-01-09 00:30:00   2344571 Kayla Haneline       Kayla     
#>  5  2161068   2025 2025-01-09 00:30:00   2344564 Iga Wasilewska       Iga       
#>  6  2161068   2025 2025-01-09 00:30:00   2344427 Madi Bugg            Madi      
#>  7  2161068   2025 2025-01-09 00:30:00   2349081 Onye Ofoegbu         Onye      
#>  8  2161068   2025 2025-01-09 00:30:00   2351343 Rachel Fairbanks     Rachel    
#>  9  2161068   2025 2025-01-09 00:30:00   2344425 McKenzie Adams       McKenzie  
#> 10  2161068   2025 2025-01-09 00:30:00   2344570 Tia Jimerson         Tia       
#> # ℹ 1,836 more rows
#> # ℹ 22 more variables: last_name <chr>, jersey_number <dbl>,
#> #   primary_position <dbl>, roster_status <chr>, is_foreign <lgl>,
#> #   is_confederation <lgl>, is_captain <lgl>, is_libero <lgl>,
#> #   set_1_is_starter <lgl>, set_1_starting_position <dbl>,
#> #   set_2_is_starter <lgl>, set_2_starting_position <dbl>,
#> #   set_3_is_starter <lgl>, set_3_starting_position <dbl>, …
```
