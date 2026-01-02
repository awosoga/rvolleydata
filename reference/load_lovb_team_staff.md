# Load cleaned lovb team staff data from the volleydata repository.

Load cleaned lovb team staff data from the volleydata repository.

## Usage

``` r
load_lovb_team_staff(seasons = NULL)
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
try({load_lovb_team_staff(2025)})
#> Rows: 242 Columns: 8
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (5): team_name, staff_type, full_name, first_name, last_name
#> dbl  (2): match_id, season
#> dttm (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 242 × 8
#>    match_id season match_datetime      team_name staff_type full_name first_name
#>       <dbl>  <dbl> <dttm>              <chr>     <chr>      <chr>     <chr>     
#>  1  2161068   2025 2025-01-09 00:30:00 LOVB Atl… coach      Paulo Co… Paulo     
#>  2  2161068   2025 2025-01-09 00:30:00 LOVB Atl… assistant  Yoko Zet… Yoko      
#>  3  2161068   2025 2025-01-09 00:30:00 LOVB Atl… assistant  Angela G… Angela    
#>  4  2161068   2025 2025-01-09 00:30:00 LOVB Sal… coach      Tama Miy… Tama      
#>  5  2161068   2025 2025-01-09 00:30:00 LOVB Sal… assistant  Bruno Ch… Bruno     
#>  6  2161068   2025 2025-01-09 00:30:00 LOVB Sal… assistant  Kolin Ko… Kolin     
#>  7  2161288   2025 2025-01-10 01:00:00 LOVB Hou… coach      Massimo … Massimo   
#>  8  2161288   2025 2025-01-10 01:00:00 LOVB Hou… assistant  Paula We… Paula     
#>  9  2161288   2025 2025-01-10 01:00:00 LOVB Aus… coach      Marco Bo… Marco     
#> 10  2161288   2025 2025-01-10 01:00:00 LOVB Aus… assistant  Stacy Sy… Stacy     
#> # ℹ 232 more rows
#> # ℹ 1 more variable: last_name <chr>
```
