source("R/utils.R")

load_mlv_officials <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  player_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-officials/pvf_officials.csv"
  )
  player_boxscore <- player_info |> dplyr::filter(season %in% seasons)
  return(player_boxscore)
}

load_mlv_pbp <- function(seasons = NULL) {
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
      paste0("https://github.com/awosoga/volleydata/releases/download/pvf-pbp/pvf_pbp_", season, ".csv")
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }

  return(pbp)
}

load_mlv_player_boxscore <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  player_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-player-boxscore/pvf_player_boxscore.csv"
  )
  player_boxscore <- player_info |> dplyr::filter(season %in% seasons)
  return(player_boxscore)
}

load_mlv_team_staff <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  team_staff <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-team-staff/pvf_team_staff.csv"
  )
  team_staff <- player_info |> dplyr::filter(season %in% seasons)
  return(team_staff)
}
