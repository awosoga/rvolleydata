source("R/utils.R")
utils::globalVariables(c("season"))

#' Load cleaned schedule data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#'                All years must be 2023 or later.
#'
#' @returns
#' |Column Name                      |  Type   |
#' |:------------------------------- |:--------|
#' |season                           |  int    |
#' |date                             |  string |
#' |home_team                        |  string |
#' |away_team                        |  string |
#' |home_team_set_wins               |  int    |
#' |away_team_set_wins               |  int    |
#' |result                           |  string |
#' |match_id                         |  int    |
#' |phase                            |  string |
#' |league                           |  string |
#' @export
#'
#' @examples
#' try({load_schedule("mlv", 2024)})

load_schedule <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned officials data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
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
#' try({load_officials("mlv", 2024)})
#'
load_officials <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned play-by-play data form the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
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
#' \donttest{try({load_pbp("mlv", 2024)})}

load_pbp <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned player info from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#' @returns A data frame containing the player info data for the specified seasons.
#' |Column Name               |  Type |
#' |------------------------- |:------|
#' |match_id                  |  int  |
#' |season                    |  int  |
#' |match_datetime            |  chr  |
#' |player_id                 |  int  |
#' |player_name               |  chr  |
#' |first_name                |  chr  |
#' |last_name                 |  chr  |
#' |jersey_number             |  int  |
#' |primary_position          |  int  |
#' |roster_status             |  chr  |
#' |is_foreign                |  lgl  |
#' |is_confederation          |  lgl  |
#' |is_captain                |  lgl  |
#' |is_libero                 |  lgl  |
#' |set_1_is_starter          |  lgl  |
#' |set_1_starting_position   |  int  |
#' |set_2_is_starter          |  lgl  |
#' |set_2_starting_position   |  int  |
#' |set_3_is_starter          |  lgl  |
#' |set_3_starting_position   |  int  |
#' |set_4_is_starter          |  lgl  |
#' |set_4_starting_position   |  int  |
#' |set_5_is_starter          |  lgl  |
#' |set_5_starting_position   |  int  |
#' |team_name                 |  chr  |
#' |team_short_name           |  chr  |
#' |team_code                 |  chr  |
#' |team_color                |  chr  |
#' @export
#'
#' @examples
#' try({load_player_info("mlv", 2024)})

load_player_info <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned player boxscore data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
#' @param seasons An integer or vector of integers of seasons to fetch data for. Defaults to all available seasons.
#'
#'
#' @returns A data frame containing player boxscore data for the specified seasons.
#' |Column Name              |  Type |
#' |------------------------ |:------|
#' |match_id                 |  int  |
#' |season                   |  int  |
#' |match_datetime           |  chr  |
#' |team_involved            |  chr  |
#' |team_name                |  chr  |
#' |player_name              |  chr  |
#' |last_name                |  chr  |
#' |first_name               |  chr  |
#' |sets_played              |  int  |
#' |player_number            |  chr  |
#' |is_captain               |  lgl  |
#' |is_libero                |  int  |
#' |set_starting_position    |  chr  |
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
#' \donttest{try({load_player_boxscore("mlv", 2024)})}

load_player_boxscore <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned team boxscore data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
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
#' try({load_team_boxscore("mlv", 2024)})

load_team_boxscore <- function(league = NULL, seasons = NULL) {

return(get_data(league, seasons))
}

#' Load cleaned team staff data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
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
#' try({load_team_staff("mlv", 2024)})

load_team_staff <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}

#' Load cleaned events log data from the volleydata repository.
#'
#' @param league A string specifying which of "mlv", "lovb", or "au" to load data for.
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
#' \donttest{try({load_events_log("mlv", 2024)})}

load_events_log <- function(league = NULL, seasons = NULL) {

  return(get_data(league, seasons))
}
