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

start_season <- function(league) {
  switch(league,
         "mlv" = 2024,
         "au" = 2022,
         "lovb" = 2025
  )
}

internal_name <- function(league) {
  switch(league,
         "mlv" = "pvf",
         "au" = "aupvb",
         "lovb" = "lovb"
  )
}


get_data <- function(league = NULL, seasons) {

  stopifnot("league must be one of 'mlv', 'lovb', or 'au'" =
              !is.null(league) ||
              league %in% c("mlv", "lovb", "au") ||
              length(league) == 1)

  league <- tolower(league)

  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- start_season(league):current_year
  } else {
    validate_seasons(seasons, start_season(league))
  }

  type = gsub("^.*load", "", as.character(sys.call(-1))[1]) # get the function name

  lg <- internal_name(league)

  if(type %in% c("_pbp", "_events_log")) {

    data <- tibble::tibble()

    for(season in seasons) {
      temp <- readr::read_csv(
        paste0("https://github.com/awosoga/volleydata/releases/download/",
               lg,
               gsub("_","-",type),
               "/",
               lg,
               type,
               "_",
               season,
               ".csv"),
        show_col_types = FALSE
      )
      data <- dplyr::bind_rows(data, temp)
    }

  } else {

  data <- readr::read_csv(
    paste0(
      "https://github.com/awosoga/volleydata/releases/download/",
      lg,
      gsub("_","-",type),
      "/",
      lg,
      type,
      ".csv"
    ),
    show_col_types = FALSE
  )
  data <- data |> dplyr::filter(season %in% seasons)
  }

  return(data |> dplyr::mutate(league = league))

}
