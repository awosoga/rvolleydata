# Load cleaned lovb officials data from the volleydata repository.

Load cleaned lovb officials data from the volleydata repository.

## Usage

``` r
load_lovb_officials(seasons = NULL)
```

## Arguments

- seasons:

  An integer or vector of integers of seasons to fetch data for.
  Defaults to all available seasons.

## Value

A data frame containing the officials data for the specified seasons.

|                |      |
|----------------|------|
| Column Name    | Type |
| match_id       | dbl  |
| season         | dbl  |
| match_datetime | chr  |
| officials_type | chr  |
| full_name      | chr  |
| first_name     | chr  |
| last_name      | chr  |
| level          | chr  |

## Examples

``` r
try({load_lovb_officials(2025)})
#> Rows: 141 Columns: 8
#> ── Column specification ────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr  (5): officials_type, full_name, first_name, last_name, level
#> dbl  (2): match_id, season
#> dttm (1): match_datetime
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> # A tibble: 141 × 8
#>    match_id season match_datetime      officials_type   full_name     first_name
#>       <dbl>  <dbl> <dttm>              <chr>            <chr>         <chr>     
#>  1  2161068   2025 2025-01-09 00:30:00 supervisor       MICHELLE PRA… MICHELLE  
#>  2  2161068   2025 2025-01-09 00:30:00 referee1         PATI ROFF     PATI      
#>  3  2161068   2025 2025-01-09 00:30:00 referee2         SAMARA SEVOR  SAMARA    
#>  4  2161068   2025 2025-01-09 00:30:00 refereeChallenge MARK PRATER   MARK      
#>  5  2161068   2025 2025-01-09 00:30:00 scorer1          APRIL MIFFLIN APRIL     
#>  6  2161068   2025 2025-01-09 00:30:00 scorer2          ALAINA SMITH… ALAINA    
#>  7  2161300   2025 2025-02-01 00:30:00 referee1         Andrew Robb   Andrew    
#>  8  2161300   2025 2025-02-01 00:30:00 referee2         Samara Sevor  Samara    
#>  9  2161300   2025 2025-02-01 00:30:00 refereeChallenge Mark Prater   Mark      
#> 10  2161300   2025 2025-02-01 00:30:00 scorer1          Alaina Smith… Alaina    
#> # ℹ 131 more rows
#> # ℹ 2 more variables: last_name <chr>, level <chr>
```
