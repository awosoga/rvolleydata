# Load cleaned mlv schedule data from the volleydata repository.

Load cleaned mlv schedule data from the volleydata repository.

## Usage

``` r
load_mlv_schedule(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

                 All years must be 2024 or later.

## Value

|                    |        |
|--------------------|--------|
| Column Name        | Type   |
| season             | int    |
| date               | string |
| round              | string |
| home_team          | string |
| away_team          | string |
| home_team_set_wins | int    |
| away_team_set_wins | int    |
| result             | string |
| match_link         | string |

## Examples

``` r
try({load_mlv_schedule(2024)})
#> Rows: 203 Columns: 9
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (5): round, home_team, away_team, result, match_link
#> dbl  (3): season, home_team_set_wins, away_team_set_wins
#> date (1): date
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 87 × 9
#>    season date       round     home_team         away_team    home_team_set_wins
#>     <dbl> <date>     <chr>     <chr>             <chr>                     <dbl>
#>  1   2024 2024-05-18 Round: 1  Omaha Supernovas  Grand Rapid…                  3
#>  2   2024 2024-05-15 Round: 2  Omaha Supernovas  San Diego M…                  3
#>  3   2024 2024-05-15 Round: 1  Atlanta Vibe      Grand Rapid…                  2
#>  4   2024 2024-05-12 Round: 16 Grand Rapids Rise Omaha Super…                  3
#>  5   2024 2024-05-11 Round: 16 Orlando Valkyries Vegas Thrill                  3
#>  6   2024 2024-05-11 Round: 16 Columbus Fury     San Diego M…                  1
#>  7   2024 2024-05-09 Round: 16 Omaha Supernovas  Columbus Fu…                  3
#>  8   2024 2024-05-09 Round: 16 Orlando Valkyries San Diego M…                  2
#>  9   2024 2024-05-07 Round: 16 San Diego Mojo    Columbus Fu…                  3
#> 10   2024 2024-05-06 Round: 16 Vegas Thrill      Omaha Super…                  0
#> # ℹ 77 more rows
#> # ℹ 3 more variables: away_team_set_wins <dbl>, result <chr>, match_link <chr>
```
