source("R/utils.R")
utils::globalVariables(c("season", "player_info"))

#' Load cleaned mlv schedule data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#'                All years must be 2024 or later.
#'
#' @returns
#' |Column Name                      |  Type   |
#' |:------------------------------- |:--------|
#' |season                           |  int    |
#' |date                             |  string |
#' |round                            |  string |
#' |home_team                        |  string |
#' |away_team                        |  string |
#' |home_team_set_wins               |  int    |
#' |away_team_set_wins               |  int    |
#' |result                           |  string |
#' |match_link                       |  string |
#' @export
#'
#' @examples
#' try({load_mlv_schedule(2024)})

load_mlv_schedule <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  schedule <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-schedule/pvf_schedule.csv"
  )
  schedule <- schedule |> dplyr::filter(season %in% seasons)
  return(schedule)
}

#' Load cleaned mlv officials data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns
#' |Column Name                      |  Type   |
#' |-------------------------------- |:--------|
#' |match_id                         |  int    |
#' |season                           |  int    |
#' |match_datetime                   |  string |
#' |officials_type                   |  string |
#' |full_name                        |  string |
#' |first_name                       |  string |
#' |last_name                        |  string |
#' |level                            |  string |
#' @export
#'
#' @examples
#' try({load_mlv_officials(2024)})
#'
load_mlv_officials <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  officials <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-officials/pvf_officials.csv"
  )
  officials <- officials |> dplyr::filter(season %in% seasons)
  return(officials)
}

#' Load cleaned mlv points log data form the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the play-by-play data for the specified seasons.
#' |Column Name                      |  Type   |
#' |:------------------------------- |:--------|
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
#' \donttest{try({load_mlv_pbp(2024)})}

load_mlv_pbp <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  pbp <- tibble::tibble()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/pvf-pbp/pvf_pbp_", season, ".csv")
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }

  return(pbp)
}

#' Load cleaned mlv player info data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the player info data for the specified seasons.
#' |Column Name                      |  Type |
#' |-------------------------------- |:------|
#' |match_id                         |  dbl  |
#' |season                           |  dbl  |
#' |match_datetime                   |  chr  |
#' |set                              |  dbl  |
#' |set_start_time                   |  chr  |
#' |set_end_time                     |  chr  |
#' |set_duration                     |  dbl  |
#' |set_home_score                   |  dbl  |
#' |set_away_score                   |  dbl  |
#' |event_type                       |  chr  |
#' |event_time                       |  chr  |
#' |libero_enters                    |  lgl  |
#' |team_involved                    |  chr  |
#' |libero_jersey_number             |  dbl  |
#' |libero_subsitute_jersey_number   |  dbl  |
#' |rally_start_time                 |  chr  |
#' |rally_end_time                   |  chr  |
#' |point_team                       |  chr  |
#' |call_approved                    |  lgl  |
#' |player_in_jersey_number          |  dbl  |
#' |player_out_jersey_number         |  dbl  |
#' |challenge_reason                 |  chr  |
#' |challenge_method                 |  chr  |
#' |challenge_response               |  chr  |
#' |challenge_result                 |  chr  |
#' |home_score_after_challenge       |  dbl  |
#' |away_score_after_challenge       |  dbl  |
#' @export
#'
#' @examples
#' try({load_mlv_player_info(2024)})

load_mlv_player_info <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  player_info <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-player-info/pvf_player_info.csv"
  )
  player_info <- player_info |> dplyr::filter(season %in% seasons)
  return(player_info)
}

#' Load cleaned mlv player boxscore data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#'
#' @returns A data frame containing player boxscore data for the specified seasons.
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
#' try({load_mlv_player_boxscore(2024)})

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
  player_boxscore <- player_boxscore |> dplyr::filter(season %in% seasons)
  return(player_boxscore)
}

#' Load cleaned mlv team boxscore data from the volleydata repository.
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
#' try({load_mlv_team_boxscore(2024)})

load_mlv_team_boxscore <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  team_boxscore <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/pvf-team-boxscore/pvf_team_boxscore.csv"
  )
  team_boxscore <- team_boxscore |> dplyr::filter(season %in% seasons)
  return(team_boxscore)
}

#' Load cleaned mlv team staff data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the team staff data for the specified seasons.
#' |Column Name                      |  Type |
#' |-------------------------------- |:------|
#' |match_id                         |  dbl  |
#' |season                           |  dbl  |
#' |match_datetime                   |  chr  |
#' |team_name                        |  chr  |
#' |staff_type                       |  chr  |
#' |full_name                        |  chr  |
#' |first_name                       |  chr  |
#' |last_name                        |  chr  |
#' @export
#
#' @examples
#' try({load_mlv_team_staff(2024)})

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
  team_staff <- team_staff |> dplyr::filter(season %in% seasons)
  return(team_staff)
}

#' Load cleaned mlv events log data from the volleydata repository.
#'
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the events log data for the specified seasons.
#' |Column Name                      |  Type   |
#' |:------------------------------- |:--------|
#' |match_id                         |  int    |
#' |season                           |  int    |
#' |match_datetime                   |  string |
#' |set                              |  int    |
#' |set_start_time                   |  string |
#' |set_end_time                     |  string |
#' |set_duration                     |  int    |
#' |set_final_home_score             |  int    |
#' |set_final_away_score             |  int    |
#' |event_type                       |  string |
#' |event_time                       |  string |
#' |libero_enters                    |  bool   |
#' |team_involved                    |  string |
#' |libero_jersey_number             |  int    |
#' |libero_substitute_jersey_number  |  int    |
#' |rally_start_time                 |  string |
#' |rally_end_time                   |  string |
#' |rally_point_winner               |  string |
#' |substitute_in_jersey_number      |  int    |
#' |substitute_out_jersey_number     |  int    |
#' |challenge_approved               |  string |
#' |challenge_reason                 |  string |
#' |challenge_method                 |  string |
#' |challenge_response               |  string |
#' |challenge_at_home_score          |  float  |
#' |challenge_at_away_score          |  float  |
#' |challenge_score_change           |  string |
#' |serving_team                     |  string |
#' |current_home_score               |  float  |
#' |current_away_score               |  float  |
#' |home_team_p1                     |  float  |
#' |home_team_p2                     |  float  |
#' |home_team_p3                     |  float  |
#' |home_team_p4                     |  float  |
#' |home_team_p5                     |  float  |
#' |home_team_p6                     |  float  |
#' |away_team_p1                     |  float  |
#' |away_team_p2                     |  float  |
#' |away_team_p3                     |  float  |
#' |away_team_p4                     |  float  |
#' |away_team_p5                     |  float  |
#' |away_team_p6                     |  float  |
#' |verified_time                    |  string |
#' |verified_method                  |  string |
#' |sanction_type                    |  string |
#' |sanction_remark                  |  float  |
#' |sanction_staff_role              |  string |
#' |staff_first_name                 |  string |
#' |staff_last_name                  |  string |
#' |staff_type                       |  string |
#' |is_exceptional                   |  string |
#' @export
#'
#' @examples
#' \donttest{try({load_mlv_events_log(2024)})}

load_mlv_events_log <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2024:current_year
  } else {
    validate_seasons(seasons, 2024)
  }

  events_log <- tibble::tibble()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/pvf-events-log/pvf_events_log_", seasons, ".csv")
    )
    events_log <- dplyr::bind_rows(events_log, temp)
  }
  return(events_log)
}
