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

                 All years must be 2023 or later.

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
#>  1   2024 2024-05-12 Grand Rapi… Omaha Su…                  3                  2
#>  2   2024 2024-05-11 Columbus F… San Dieg…                  1                  3
#>  3   2024 2024-05-11 Orlando Va… Vegas Th…                  3                  0
#>  4   2024 2024-05-09 Omaha Supe… Columbus…                  3                  0
#>  5   2024 2024-05-09 Orlando Va… San Dieg…                  2                  3
#>  6   2024 2024-05-07 San Diego … Columbus…                  3                  1
#>  7   2024 2024-05-06 Vegas Thri… Omaha Su…                  0                  3
#>  8   2024 2024-05-05 Grand Rapi… San Dieg…                  3                  0
#>  9   2024 2024-05-04 Columbus F… Omaha Su…                  1                  3
#> 10   2024 2024-05-04 Grand Rapi… San Dieg…                  1                  3
#> # ℹ 77 more rows
#> # ℹ 4 more variables: result <chr>, match_id <dbl>, phase <chr>, league <chr>
```
