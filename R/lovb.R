source("R/utils.R")
utils::globalVariables(c("season", "player_info"))

#' Load cleaned lovb schedule data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the schedule data for the specified seasons.
#' |Column Name                      |   Type  |
#' |:------------------------------- |:--------|
#' |season                           |  int    |
#' |date                             |  string |
#' |round                            |  string |
#' |home_team                        |  string |
#' |away_team                        |  string |
#' |home_team_set_wins               |  int    |
#' |away_team_set_wins               |  int    |
#' |match_link                       |  string |
#' |secondary_link                   |  string |
#' |match_id                         |  int    |
#' @export
#'
#' @examples
#' try({load_lovb_schedule(2025)})

load_lovb_schedule <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  schedule <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  schedule <- schedule |> dplyr::filter(season %in% seasons)
  return(schedule)
}

#' Load cleaned lovb officials data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the officials data for the specified seasons.
#' |Column Name                      |  Type  |
#' |:------------------------------- |:-------|
#' |match_id                         |  dbl   |
#' |season                           |  dbl   |
#' |match_datetime                   |  chr   |
#' |officials_type                   |  chr   |
#' |full_name                        |  chr   |
#' |first_name                       |  chr   |
#' |last_name                        |  chr   |
#' |level                            |  chr   |
#' @export
#'
#' @examples
#' try({load_lovb_officials(2025)})

load_lovb_officials <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  officials <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-officials/lovb_officials.csv"
  )
  officials <- officials |> dplyr::filter(season %in% seasons)
  return(officials)
}


#' Load cleaned lovb play-by-play data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the play-by-play data for the specified seasons.
#' |Column Name                      |  Type   |
#' |-------------------------------- |:--------|
#' |match_id                         |  int    |
#' |season                           |  int    |
#' |match_datetime                   |  string |
#' |home_team_name                   |  string |
#' |away_team_name                   |  string |
#' |team_involved                    |  string |
#' |jersey_number                    |  int    |
#' |action                           |  string |
#' |outcome                          |  string |
#' |set                              |  int    |
#' |point_number                     |  int    |
#' |point_winner                     |  string |
#' |home_score                       |  int    |
#' |away_score                       |  int    |
#' @export
#'
#' @examples
#' \donttest{try({load_lovb_pbp(2025)})}

load_lovb_pbp <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  pbp <- tibble::tibble()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/lovb-pbp/lovb_pbp_", season, ".csv"),
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }

  return(pbp)
}

#' Load cleaned lovb player boxscore data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the player boxscore data for the specified seasons.
#' |Column Name                      |  Type  |
#' |:------------------------------- |:-------|
#' |match_id                         |  dbl   |
#' |season                           |  dbl   |
#' |match_datetime                   |  chr   |
#' |player_id                        |  dbl   |
#' |player_name                      |  chr   |
#' |first_name                       |  chr   |
#' |last_name                        |  chr   |
#' |jersey_number                    |  dbl   |
#' |primary_position                 |  dbl   |
#' |roster_status                    |  chr   |
#' |is_foreign                       |  lgl   |
#' |is_confederation                 |  lgl   |
#' |is_captain                       |  lgl   |
#' |is_libero                        |  lgl   |
#' |set_1_is_starter                 |  lgl   |
#' |set_1_starting_position          |  dbl   |
#' |set_2_is_starter                 |  lgl   |
#' |set_2_starting_position          |  dbl   |
#' |set_3_is_starter                 |  lgl   |
#' |set_3_starting_position          |  dbl   |
#' |set_4_is_starter                 |  lgl   |
#' |set_4_starting_position          |  dbl   |
#' |set_5_is_starter                 |  lgl   |
#' |set_5_starting_position          |  dbl   |
#' |team_name                        |  chr   |
#' |team_short_name                  |  chr   |
#' |team_code                        |  chr   |
#' |team_color                       |  chr   |
#' @export
#'
#' @examples
#' try({load_lovb_player_info(2025)})

load_lovb_player_info <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  player_info <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-player-info/lovb_player_info.csv"
  )
  player_info <- player_info |> dplyr::filter(season %in% seasons)
  return(player_info)
}


#' Load cleaned lovb player boxscore data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the player boxscore data for the specified seasons.
#' |Column Name              |  Type |
#' |-------------------------|:------|
#' |match_id                 |  int  |
#' |season                   |  int  |
#' |match_datetime           |  chr  |
#' |team_involved            |  chr  |
#' |team_name                |  chr  |
#' |player_lastname          |  chr  |
#' |player_firstname         |  chr  |
#' |sets_played              |  int  |
#' |is_captain               |  lgl  |
#' |number                   |  chr  |
#' |libero                   |  int  |
#' |set_number               |  int  |
#' |serves                   |  int  |
#' |serve_errors             |  int  |
#' |serve_aces               |  int  |
#' |serve_efficiency         |  dbl  |
#' |attack_attempts          |  int  |
#' |attack_errors            |  int  |
#' |attack_kills             |  int  |
#' |attack_success_ratio     |  dbl  |
#' |attack_efficiency        |  dbl  |
#' |receptions               |  int  |
#' |reception_errors         |  int  |
#' |positive_reception_ratio |  dbl  |
#' |perfect_reception_ratio  |  dbl  |
#' |block_points             |  int  |
#' |block_touches            |  int  |
#' |earned_points            |  int  |
#' |net_points               |  int  |
#' |assists                  |  int  |
#' |successful_digs          |  int  |
#' |id                       |  chr  |
#' |spike_hp                 |  int  |
#' |points                   |  int  |
#' @export
#'
#' @examples
#' try({load_lovb_player_boxscore(2025)})

load_lovb_player_boxscore <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  player_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-player-boxscore/lovb_player_boxscore.csv"
  )
  player_boxscore <- player_boxscore |> dplyr::filter(season %in% seasons)
  return(player_boxscore)
}

#' Load cleaned lovb team boxscore data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing team boxscore data for the specified seasons.
#' |Column Name              |  Type |
#' |-------------------------|:------|
#' |match_id                 |  int  |
#' |season                   |  int  |
#' |match_datetime           |  chr  |
#' |team_involved            |  chr  |
#' |team_name                |  chr  |
#' |set_number               |  int  |
#' |serves                   |  int  |
#' |serve_errors             |  int  |
#' |serve_aces               |  int  |
#' |serve_efficiency         |  dbl  |
#' |attack_attempts          |  int  |
#' |attack_errors            |  int  |
#' |attack_kills             |  int  |
#' |attack_success_ratio     |  dbl  |
#' |attack_efficiency        |  dbl  |
#' |receptions               |  int  |
#' |reception_errors         |  int  |
#' |positive_reception_ratio |  dbl  |
#' |perfect_reception_ratio  |  dbl  |
#' |block_points             |  int  |
#' |block_touches            |  int  |
#' |earned_points            |  int  |
#' |net_points               |  int  |
#' |assists                  |  int  |
#' |successful_digs          |  int  |
#' |id                       |  chr  |
#' |spike_hp                 |  int  |
#' |points                   |  int  |
#' @export
#'
#' @examples
#' try({load_lovb_team_boxscore(2025)})

load_lovb_team_boxscore <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  team_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-team-boxscore/lovb_team_boxscore.csv"
  )
  team_boxscore <- team_boxscore |> dplyr::filter(season %in% seasons)
  return(team_boxscore)
}

#' Load cleaned lovb team staff data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the team staff data for the specified seasons.
#' |Column Name                      |  Type  |
#' |:------------------------------- |:-------|
#' |match_id                         |  dbl   |
#' |season                           |  dbl   |
#' |match_datetime                   |  chr   |
#' |team_name                        |  chr   |
#' |staff_type                       |  chr   |
#' |full_name                        |  chr   |
#' |first_name                       |  chr   |
#' |last_name                        |  chr   |
#' @export
#'
#' @examples
#' try({load_lovb_team_staff(2025)})

load_lovb_team_staff <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  team_staff <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/lovb-team-staff/lovb_team_staff.csv"
  )
  team_staff <- team_staff |> dplyr::filter(season %in% seasons)
  return(team_staff)
}

#' Load cleaned lovb events log data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the events log data for the specified seasons.
#' |Column Name                      |  Type  |
#' |:------------------------------- |:-------|
#' |match_id                         |int     |
#' |season                           |int     |
#' |match_datetime                   |string  |
#' |team_name                        |string  |
#' |staff_type                       |string  |
#' |full_name                        |string  |
#' |first_name                       |string  |
#' |last_name                        |string  |
#' @export
#'
#' @examples
#' \donttest{try({load_lovb_events_log(2025)})}

load_lovb_events_log <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2025:current_year
  } else {
    validate_seasons(seasons, 2025)
  }

  events_log <- tibble::tibble()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/lovb-events-log/lovb_events_log_", season, ".csv")
    )
    events_log <- dplyr::bind_rows(events_log, temp)
  }
  return(events_log)
}
