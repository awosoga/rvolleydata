# Load cleaned player boxscore data from the volleydata repository.

Load cleaned player boxscore data from the volleydata repository.

## Usage

``` r
load_player_boxscore(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing player boxscore data for the specified seasons.

|                          |      |
|--------------------------|------|
| Column Name              | Type |
| match_id                 | int  |
| season                   | int  |
| match_datetime           | chr  |
| team_involved            | chr  |
| team_name                | chr  |
| player_name              | chr  |
| last_name                | chr  |
| first_name               | chr  |
| sets_played              | int  |
| player_number            | chr  |
| is_captain               | lgl  |
| is_libero                | int  |
| set_starting_position    | chr  |
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
try({load_player_boxscore("mlv", 2024)})
#> # A tibble: 6,881 × 37
#>    match_id season match_datetime      team_involved team_name       player_name
#>       <dbl>  <dbl> <dttm>              <chr>         <chr>           <chr>      
#>  1  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Tori Dixon 
#>  2  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Tori Dixon 
#>  3  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Tori Dixon 
#>  4  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Tori Dixon 
#>  5  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Tori Dixon 
#>  6  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Paige Brig…
#>  7  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Paige Brig…
#>  8  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Paige Brig…
#>  9  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Paige Brig…
#> 10  2125267   2024 2024-01-25 01:00:00 home          Omaha Supernov… Paige Brig…
#> # ℹ 6,871 more rows
#> # ℹ 31 more variables: first_name <chr>, last_name <chr>, sets_played <dbl>,
#> #   player_number <dbl>, is_captain <lgl>, is_libero <lgl>, set_number <dbl>,
#> #   set_starting_position <chr>, serves <dbl>, serve_errors <dbl>,
#> #   serve_aces <dbl>, serve_efficiency <dbl>, attack_attempts <dbl>,
#> #   attack_errors <dbl>, attack_kills <dbl>, attack_success_ratio <dbl>,
#> #   attack_efficiency <dbl>, receptions <dbl>, reception_errors <dbl>, …
```
