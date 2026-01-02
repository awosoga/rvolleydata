# Load cleaned player info from the volleydata repository.

Load cleaned player info from the volleydata repository.

## Usage

``` r
load_player_info(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the player info data for the specified seasons.

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
try({load_player_info("mlv", 2024)})
#> # A tibble: 2,418 × 29
#>    match_id season match_datetime      player_id player_name          first_name
#>       <dbl>  <dbl> <dttm>                  <dbl> <chr>                <chr>     
#>  1  2125267   2024 2024-01-25 01:00:00   2130330 Natalia Valentin-An… Natalia   
#>  2  2125267   2024 2024-01-25 01:00:00   2130314 Sydney Hilley        Sydney    
#>  3  2125267   2024 2024-01-25 01:00:00   2130327 Kendall White        Kendall   
#>  4  2125267   2024 2024-01-25 01:00:00   2130317 Brooke Nuneviller    Brooke    
#>  5  2125267   2024 2024-01-25 01:00:00   2130312 Tori Dixon           Tori      
#>  6  2125267   2024 2024-01-25 01:00:00   2130329 Gina Prososki        Gina      
#>  7  2125267   2024 2024-01-25 01:00:00   2130320 Jess Schaben-Lansman Jess      
#>  8  2125267   2024 2024-01-25 01:00:00   2130332 Paige Briggs         Paige     
#>  9  2125267   2024 2024-01-25 01:00:00   2130319 Nia Reed             Nia       
#> 10  2125267   2024 2024-01-25 01:00:00   2130316 Allison Mayfield     Allison   
#> # ℹ 2,408 more rows
#> # ℹ 23 more variables: last_name <chr>, jersey_number <dbl>,
#> #   primary_position <dbl>, roster_status <chr>, is_foreign <lgl>,
#> #   is_confederation <lgl>, is_captain <lgl>, is_libero <lgl>,
#> #   set_1_is_starter <lgl>, set_1_starting_position <dbl>,
#> #   set_2_is_starter <lgl>, set_2_starting_position <dbl>,
#> #   set_3_is_starter <lgl>, set_3_starting_position <dbl>, …
```
