# Load cleaned mlv officials data from the volleydata repository.

Load cleaned mlv officials data from the volleydata repository.

## Usage

``` r
load_mlv_officials(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

|                |        |
|----------------|--------|
| Column Name    | Type   |
| match_id       | int    |
| season         | int    |
| match_datetime | string |
| officials_type | string |
| full_name      | string |
| first_name     | string |
| last_name      | string |
| level          | string |

## Examples

``` r
try({load_mlv_officials(2024)})
#> Rows: 743 Columns: 8
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (5): officials_type, full_name, first_name, last_name, level
#> dbl  (2): match_id, season
#> dttm (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 375 × 8
#>    match_id season match_datetime      officials_type full_name       first_name
#>       <dbl>  <dbl> <dttm>              <chr>          <chr>           <chr>     
#>  1  2125268   2024 2024-01-26 00:00:00 referee1       Michelle Prater Michelle  
#>  2  2125268   2024 2024-01-26 00:00:00 referee2       Devonie McLarty Devonie   
#>  3  2125268   2024 2024-01-26 00:00:00 scorer1        Henry Yun Ping… Henry Yun…
#>  4  2125268   2024 2024-01-26 00:00:00 scorer2        Jeff TerMolen   Jeff      
#>  5  2125270   2024 2024-02-02 00:00:00 referee1       Michelle Prater Michelle  
#>  6  2125270   2024 2024-02-02 00:00:00 referee2       Suzanne Lowery  Suzanne   
#>  7  2125270   2024 2024-02-02 00:00:00 scorer1        April  Carroll  April     
#>  8  2125270   2024 2024-02-02 00:00:00 scorer2        Alaina Smith W… Alaina    
#>  9  2125271   2024 2024-02-04 00:00:00 referee1       Michelle Prater Michelle  
#> 10  2125271   2024 2024-02-04 00:00:00 referee2       William Stanley William   
#> # ℹ 365 more rows
#> # ℹ 2 more variables: last_name <chr>, level <chr>
```
