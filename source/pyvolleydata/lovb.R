load_lovb_officials <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }

  officials <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  officials <- player_info |> dplyr::filter(season %in% seasons)
  return(officials)
}


load_lovb_points_log <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }

  points_log <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  points_log <- player_info |> dplyr::filter(season %in% seasons)
  return(points_log)
}


load_lovb_pbp <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
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
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
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
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }

  team_staff <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-team-staff/lovb_team_staff.csv"
  )
  team_staff <- player_info |> dplyr::filter(season %in% seasons)
  return(team_staff)
}
