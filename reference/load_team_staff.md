# Load cleaned team staff data from the volleydata repository.

Load cleaned team staff data from the volleydata repository.

## Usage

``` r
load_team_staff(league = NULL, seasons = NULL)
```

## Arguments

- league:

  A string specifying which of "mlv", "lovb", or "au" to load data for.

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
| league         | chr  |

## Examples

``` r
try({load_team_staff("mlv", 2024)})
#> Warning: Failed to open 'https://github.com/awosoga/volleydata/releases/download/pvf-team-staff/pvf_team_staff.csv': The requested URL returned error: 404
#> Error in open.connection(structure(4L, class = c("curl", "connection"), conn_id = <pointer: 0x559b6229f620>),  : 
#>   cannot open the connection
```
