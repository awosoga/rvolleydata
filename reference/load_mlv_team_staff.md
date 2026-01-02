# Load cleaned mlv team staff data from the volleydata repository.

Load cleaned mlv team staff data from the volleydata repository.

## Usage

``` r
load_mlv_team_staff(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the team staff data for the specified seasons.

|                |      |
|----------------|------|
| Column Name    | Type |
| match_id       | dbl  |
| season         | dbl  |
| match_datetime | chr  |
| team_name      | chr  |
| staff_type     | chr  |
| full_name      | chr  |
| first_name     | chr  |
| last_name      | chr  |

## Examples

``` r
try({load_mlv_team_staff(2024)})
#> Rows: 602 Columns: 8
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (5): team_name, staff_type, full_name, first_name, last_name
#> dbl  (2): match_id, season
#> dttm (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 352 × 8
#>    match_id season match_datetime      team_name staff_type full_name first_name
#>       <dbl>  <dbl> <dttm>              <chr>     <chr>      <chr>     <chr>     
#>  1  2125268   2024 2024-01-26 00:00:00 Grand Ra… coach      Cathy Ge… Cathy     
#>  2  2125268   2024 2024-01-26 00:00:00 Grand Ra… assistant1 Bill Wal… Bill      
#>  3  2125268   2024 2024-01-26 00:00:00 Grand Ra… assistant2 Denis Di… Denis     
#>  4  2125268   2024 2024-01-26 00:00:00 Columbus… coach      Angel Pe… Angel     
#>  5  2125268   2024 2024-01-26 00:00:00 Columbus… assistant1 Carlos C… Carlos    
#>  6  2125270   2024 2024-02-02 00:00:00 Atlanta … coach      Todd Dag… Todd      
#>  7  2125270   2024 2024-02-02 00:00:00 Atlanta … assistant1 Brian Do… Brian     
#>  8  2125270   2024 2024-02-02 00:00:00 Atlanta … assistant2 Sally Po… Sally     
#>  9  2125270   2024 2024-02-02 00:00:00 San Dieg… coach      Tayyiba … Tayyiba   
#> 10  2125271   2024 2024-02-04 00:00:00 Omaha Su… coach      Shelton … Shelton   
#> # ℹ 342 more rows
#> # ℹ 1 more variable: last_name <chr>
```
