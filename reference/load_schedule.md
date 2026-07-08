# Load cleaned schedule data from the volleydata repository.

Load cleaned schedule data from the volleydata repository.

## Usage

``` r
load_schedule(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

                 All years must be 2022 or later.

## Value

|                    |      |
|--------------------|------|
| Column Name        | Type |
| season             | int  |
| date               | chr  |
| home_team          | chr  |
| away_team          | chr  |
| home_team_set_wins | int  |
| away_team_set_wins | int  |
| result             | chr  |
| match_id           | int  |
| phase              | chr  |
| league             | chr  |

## Examples

``` r
try({load_schedule("mlv", 2024)})
#> # A tibble: 87 × 10
#>    season date       home_team   away_team home_team_set_wins away_team_set_wins
#>     <dbl> <date>     <chr>       <chr>                  <dbl>              <dbl>
#>  1   2024 2024-01-24 Omaha Supe… Atlanta …                  2                  3
#>  2   2024 2024-01-25 Grand Rapi… Columbus…                  3                  0
#>  3   2024 2024-01-26 Orlando Va… Atlanta …                  2                  3
#>  4   2024 2024-02-01 Atlanta Vi… San Dieg…                  3                  0
#>  5   2024 2024-02-03 Omaha Supe… San Dieg…                  3                  0
#>  6   2024 2024-02-07 Omaha Supe… Vegas Th…                  2                  3
#>  7   2024 2024-02-09 Atlanta Vi… Grand Ra…                  1                  3
#>  8   2024 2024-02-10 Orlando Va… Vegas Th…                  3                  1
#>  9   2024 2024-02-12 Grand Rapi… Omaha Su…                  1                  3
#> 10   2024 2024-02-12 Atlanta Vi… Orlando …                  3                  2
#> # ℹ 77 more rows
#> # ℹ 4 more variables: result <chr>, match_id <dbl>, phase <chr>, league <chr>
```
