validate_seasons <- function(seasons, start_year) {
  if (!is.numeric(seasons)) {
    stop("Expected a numeric vector of years")
  }
  current_year <- lubridate::year(Sys.Date())

  for (year in seasons) {
    if (!is.numeric(year) || length(year) != 1) {
        stop(sprintf("Expected an integer for year, got %s", typeof(year)))
    }
    if (year < start_year || year > current_year) {
      stop(sprintf("Year %d is out of range. Valid range is %d to %d",
                   year, start_year, current_year))
    }
  }
}
