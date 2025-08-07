#' Load cleaned lovb officials data from the volleydata repository.
#'
#' @param seasons int, list of int, or None, optional
#'                Season(s) to load. By default, None loads all available seasons.
#'                - int: Single season year (e.g., 2025)
#'                - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'                - None: Load all available seasons
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


#' Load cleaned lovb point log data from the volleydata repository.
#'
#' @param seasons int, list of int, or None, optional
#'               Season(s) to load. By default, None loads all available seasons.
#'               - int: Single season year (e.g., 2025)
#'               - list of int: Multiple seasons (e.g., c(2024, 2024), 2024:2025)
#'               - None: Load all available seasons
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
#' home_team_name                     chr
#' away_team_name                     chr
#' team_involved                      chr
#' jersey_number                      dbl
#' action                             chr
#' outcome                            chr
#' set                                dbl
#' point_number                       dbl
#' point_winner                       chr
#' home_score                         dbl
#' away_score                         dbl
#' --------------------------------  -----------
#' @export
#'
#' @examples
#' `load_lovb_points_log(2024)`
#' `load_lovb_points_log(2024:2025)`
#' `load_lovb_points_log()`
load_lovb_points_log <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  points_log <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  points_log <- player_info |> dplyr::filter(season %in% seasons)
  return(points_log)
}


#' Title
#'
#' @param seasons
#'
#' @returns
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
      paste0("https://github.com/awosoga/volleydata/releases/download/aupvb-pbp/aupvb_pbp_", season, ".csv")
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }

  return(pbp)
}

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

load_lovb_team_staff <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

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
