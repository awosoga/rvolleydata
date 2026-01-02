# Load cleaned lovb schedule data from the volleydata repository.

Load cleaned lovb schedule data from the volleydata repository.

## Usage

``` r
load_lovb_schedule(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the schedule data for the specified seasons.

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
| match_link         | string |
| secondary_link     | string |
| match_id           | int    |

## Examples

``` r
try({load_lovb_schedule(2025)})
#> Rows: 60 Columns: 9
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (4): home_team, away_team, match_link, secondary_link
#> dbl  (4): season, home_team_set_wins, away_team_set_wins, match_id
#> date (1): date
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 60 × 9
#>    season date       home_team away_team home_team_set_wins away_team_set_wins
#>     <dbl> <date>     <chr>     <chr>                  <dbl>              <dbl>
#>  1   2025 2025-01-09 Salt Lake Atlanta                    1                  3
#>  2   2025 2025-01-10 Austin    Houston                    3                  2
#>  3   2025 2025-01-10 Madison   Austin                     3                  0
#>  4   2025 2025-01-11 Omaha     Houston                    0                  3
#>  5   2025 2025-01-16 Atlanta   Austin                     1                  3
#>  6   2025 2025-01-18 Salt Lake Madison                    3                  2
#>  7   2025 2025-01-19 Houston   Salt Lake                  1                  3
#>  8   2025 2025-01-19 Omaha     Madison                    1                  3
#>  9   2025 2025-01-23 Houston   Salt Lake                  3                  1
#> 10   2025 2025-01-25 Madison   Omaha                      3                  1
#> # ℹ 50 more rows
#> # ℹ 3 more variables: match_link <chr>, secondary_link <chr>, match_id <dbl>
```
