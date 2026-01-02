# Load cleaned lovb play-by-play data from the volleydata repository.

Load cleaned lovb play-by-play data from the volleydata repository.

## Usage

``` r
load_lovb_pbp(seasons = NULL)
```

## Arguments

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
try({load_lovb_pbp(2025)})
#> Rows: 73416 Columns: 14
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (6): home_team_name, away_team_name, team_involved, action, outcome, po...
#> dbl  (7): match_id, season, jersey_number, set, point_number, home_score, aw...
#> dttm (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 73,416 × 14
#>    match_id season match_datetime      home_team_name away_team_name
#>       <dbl>  <dbl> <dttm>              <chr>          <chr>         
#>  1  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  2  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  3  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  4  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  5  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  6  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  7  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  8  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#>  9  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#> 10  2161068   2025 2025-01-09 00:30:00 LOVB Atlanta   LOVB Salt Lake
#> # ℹ 73,406 more rows
#> # ℹ 9 more variables: team_involved <chr>, jersey_number <dbl>, action <chr>,
#> #   outcome <chr>, set <dbl>, point_number <dbl>, point_winner <chr>,
#> #   home_score <dbl>, away_score <dbl>
```
