# Load cleaned play-by-play data form the volleydata repository.

Load cleaned play-by-play data form the volleydata repository.

## Usage

``` r
load_pbp(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the play-by-play data for the specified seasons.

|                |        |
|----------------|--------|
| Column Name    | Type   |
| match_id       | int    |
| season         | int    |
| match_datetime | string |
| home_team_name | string |
| away_team_name | string |
| team_involved  | string |
| jersey_number  | int    |
| action         | string |
| outcome        | string |
| set            | int    |
| point_number   | int    |
| point_winner   | string |
| home_score     | int    |
| away_score     | int    |

## Examples

``` r
try({load_pbp("mlv", 2024)})
#> # A tibble: 107,849 × 15
#>    match_id season match_datetime      home_team_name   away_team_name
#>       <dbl>  <dbl> <dttm>              <chr>            <chr>         
#>  1  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  2  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  3  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  4  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  5  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  6  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  7  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  8  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#>  9  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#> 10  2125267   2024 2024-01-25 01:00:00 Omaha Supernovas Atlanta Vibe  
#> # ℹ 107,839 more rows
#> # ℹ 10 more variables: team_involved <chr>, jersey_number <dbl>, action <chr>,
#> #   outcome <chr>, set <dbl>, point_number <dbl>, point_winner <chr>,
#> #   home_score <dbl>, away_score <dbl>, league <chr>
```
