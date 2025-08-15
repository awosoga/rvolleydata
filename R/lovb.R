source("R/utils.R")

#' Load cleaned lovb schedule data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'                Season(s) to load. By default, NULL loads all available seasons.
#'                - int: Single season year (e.g., 2025)
#'                - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'                - NULL: Load all available seasons
#'
#'                All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#' Column Name                        Type
#' --------------------------------  -----------
#' season                             int
#' date                               string
#' round                              string
#' home_team                          string
#' away_team                          string
#' home_team_set_wins                 int
#' away_team_set_wins                 int
#' match_link                         string
#' secondary_link                     string
#' match_id                           int
#' --------------------------------  -----------
#' @export
#'
#' @examples
#' `load_lovb_schedule(2024)`
#' `load_lovb_schedule(2024:2025)`
#' `load_lovb_schedule()`
load_lovb_schedule <- function(seasons = NULL) {
  current_year <- as.dbleger(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  schedule <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  schedule <- player_info |> dplyr::filter(season %in% seasons)
  return(schedule)
}

#' Load cleaned lovb officials data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'                Season(s) to load. By default, NULL loads all available seasons.
#'                - int: Single season year (e.g., 2025)
#'                - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'                - NULL: Load all available seasons
#'
#'                All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#' Column Name                        Type
#' --------------------------------  -----------
#' match_id                           dbl
#' season                             dbl
#' match_datetime                     chr
#' officials_type                     chr
#' full_name                          chr
#' first_name                         chr
#' last_name                          chr
#' level                              chr
#' --------------------------------  -----------
#' @export
#'
#' @examples
#' `load_lovb_officials(2024)`
#' `load_lovb_officials(2024:2025)`
#' `load_lovb_officials()`
load_lovb_officials <- function(seasons = NULL) {
  current_year <- as.dbleger(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  officials <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  officials <- player_info |> dplyr::filter(season %in% seasons)
  return(officials)
}


#' Load cleaned lovb play-by-play data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'               Season(s) to load. By default, NULL loads all available seasons.
#'               - int: Single season year (e.g., 2025)
#'               - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'               - NULL: Load all available seasons
#'
#'               All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#' Column Name                        Type
#' --------------------------------  -----------
#' match_id                           int
#' season                             int
#' match_datetime                     string
#' home_team_name                     string
#' away_team_name                     string
#' team_involved                      string
#' jersey_number                      int
#' action                             string
#' outcome                            string
#' set                                int
#' point_number                       int
#' point_winner                       string
#' home_score                         int
#' away_score                         int
#' --------------------------------  -----------
#' @export
#'
#' @examples
load_lovb_pbp <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }
  if (length(seasons) > 0 && tail(seasons, 1) == current_year) {
    seasons <- head(seasons, -1)
  }

  pbp <- data.frame()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/lovb-pbp/lovb_pbp_", season, ".csv")
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }

  return(pbp)
}

#' Load cleaned lovb player boxscore data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'               Season(s) to load. By default, NULL loads all available seasons.
#'               - int: Single season year (e.g., 2025)
#'               - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'               - NULL: Load all available seasons
#'
#'               All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#' Column Name                        Type
#' --------------------------------  -----------
#' match_id                           dbl
#' season                             dbl
#' match_datetime                     chr
#' player_id                          dbl
#' player_name                        chr
#' first_name                         chr
#' last_name                          chr
#' jersey_number                      dbl
#' primary_position                   dbl
#' roster_status                      chr
#' is_foreign                         lgl
#' is_confederation                   lgl
#' is_captain                         lgl
#' is_libero                          lgl
#' set_1_is_starter                   lgl
#' set_1_starting_position            dbl
#' set_2_is_starter                   lgl
#' set_2_starting_position            dbl
#' set_3_is_starter                   lgl
#' set_3_starting_position            dbl
#' set_4_is_starter                   lgl
#' set_4_starting_position            dbl
#' set_5_is_starter                   lgl
#' set_5_starting_position            dbl
#' team_name                          chr
#' team_short_name                    chr
#' team_code                          chr
#' team_color                         chr
#' --------------------------------  -----------
#' @export
#'
#' @examples
#' `load_lovb_player_boxscore(2024)`
#' `load_lovb_player_boxscore(2024:2025)`
#' `load_lovb_player_boxscore()`
load_lovb_player_boxscore <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  player_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-player-boxscore/lovb_player_boxscore.csv"
  )
  player_boxscore <- player_info |> dplyr::filter(season %in% seasons)
  return(player_boxscore)
}

#' Load cleaned lovb team staff data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'               Season(s) to load. By default, NULL loads all available seasons.
#'               - int: Single season year (e.g., 2025)
#'               - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'               - NULL: Load all available seasons
#'
#'               All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#' Column Name                        Type
#' --------------------------------  -----------
#' match_id                           dbl
#' season                             dbl
#' match_datetime                     chr
#' team_name                          chr
#' staff_type                         chr
#' full_name                          chr
#' first_name                         chr
#' last_name                          chr
#' --------------------------------  -----------
#' @export
#'
#' @examples
#' `load_lovb_team_staff(2024)`
#' `load_lovb_team_staff(2024:2025)`
#' `load_lovb_team_staff()`
load_lovb_team_staff <- function(seasons = NULL) {
  current_year <- as.dbleger(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  team_staff <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-team-staff/lovb_team_staff.csv"
  )
  team_staff <- player_info |> dplyr::filter(season %in% seasons)
  return(team_staff)
}

#' Load cleaned lovb events log data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'               Season(s) to load. By default, NULL loads all available seasons.
#'               - int: Single season year (e.g., 2025)
#'               - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'               - NULL: Load all available seasons
#'
#'               All years must be 2024 or later.
#'
#' @returns
#' --------------------------------  -----------
#'   Column Name                        Type
#' --------------------------------  -----------
#' match_id                           int
#' season                             int
#' match_datetime                     string
#' team_name                          string
#' staff_type                         string
#' full_name                          string
#' first_name                         string
#' last_name                          string
#' --------------------------------  -----------
#' @export
#'
#' @examples
load_lovb_events_log <- function(seasons = NULL) {
  current_year <- as.dbleger(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  events_log <- readr::read_csv(
    paste0("https://github.com/awosoga/volleydata/releases/download/lovb-events-log/lovb_events_log_", season, ".csv")
  )
  events_log <- player_info |> dplyr::filter(season %in% seasons)
  return(events_log)
}
