source("R/utils.R")
utils::globalVariables(c("season", "player_info"))

#' Load cleaned aupvb player info data from the volleydata repository
#'
#' @param seasons int, list of int, or NULL, optional
#'                Season(s) to load. By default, NULL loads all available seasons.
#'                - int : Single season year (e.g., 2024)
#'                - list of int : Multiple seasons (e.g., c(2021, 2022), c(2021:2024))
#'                - NULL : Load all available seasons
#'
#'                All years must be 2021 or later
#'
#' @returns A data frame containing player information for the specified seasons.
#' |Column Name                           |  Type |
#' |:------------------------------------ |:------|
#' |season                                |  dbl  |
#' |week_number                           |  dbl  |
#' |game_number                           |  dbl  |
#' |game_date                             |  chr  |
#' |rank                                  |  dbl  |
#' |rank_change                           |  dbl  |
#' |cumulative_podbls                     |  dbl  |
#' |points_this_match                     |  dbl  |
#' |played_this_match                     |  lgl  |
#' |first_name                            |  chr  |
#' |last_name                             |  chr  |
#' |uniform_number                        |  dbl  |
#' |sets_played                           |  dbl  |
#' |kills                                 |  dbl  |
#' |kill_per_set                          |  dbl  |
#' |attack_attempts                       |  dbl  |
#' |attack_errors                         |  dbl  |
#' |attack_percentage                     |  dbl  |
#' |assists                               |  dbl  |
#' |assists_per_set                       |  dbl  |
#' |setting_errors                        |  dbl  |
#' |service_aces                          |  dbl  |
#' |service_aces_per_set                  |  dbl  |
#' |service_errors                        |  dbl  |
#' |total_reception_attempts              |  dbl  |
#' |reception_errors                      |  dbl  |
#' |positive_reception_pct                |  dbl  |
#' |digs                                  |  dbl  |
#' |digs_per_set                          |  dbl  |
#' |blocks                                |  dbl  |
#' |blocks_per_set                        |  dbl  |
#' |block_assists                         |  dbl  |
#' |block_assists_per_set                 |  dbl  |
#' |primary_position_position_lk          |  chr  |
#' |primary_position_description          |  chr  |
#' |primary_position_short_description    |  chr  |
#' |secondary_position_position_lk        |  chr  |
#' |secondary_position_description        |  chr  |
#' |secondary_position_short_description  |  chr  |
#' |current_roster_status_lk              |  chr  |
#' |current_roster_status_description     |  chr  |
#' |is_home_team                          |  lgl  |
#' |team_color                            |  chr  |
#' |home_team_name                        |  chr  |
#' |away_team_name                        |  chr  |
#' |season_id                             |  dbl  |
#' |season_type                           |  chr  |
#' |player_id                             |  dbl  |
#' |player_slug                           |  chr  |
#' |uniform_number_display                |  chr  |
#' |team_id                               |  dbl  |
#' |type                                  |  chr  |
#' |stat_type                             |  chr  |
#' @export
#'
#' @examples
#' try({load_aupvb_player_info(2024)})

load_aupvb_player_info <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }

  player_info <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/aupvb-player-info/aupvb_player_info.csv"
  )
  player_info <- player_info |> dplyr::filter(season %in% seasons)
  return(player_info)
}


#' Load cleaned aupvb leaderboards data from the volleydata repository
#'
#' @param seasons int, list of int, or NULL, optional
#'                Season(s) to load. By default, NULL loads all available seasons.
#'                - int: Single season year (e.g., 2024)
#'                - list of int: Multiple seasons (e.g., c(2021, 2022), c(2021:2024))
#'                - NULL: Load all available seasons
#'
#'                All years must be 2021 or later.
#'
#' @returns Returns a data frame containing leaderboards for the specified seasons.
#' |Column Name                           |  Type |
#' |:------------------------------------ |:------|
#' |season                                |  dbl  |
#' |week_number                           |  dbl  |
#' |game_number                           |  dbl  |
#' |game_rank                             |  dbl  |
#' |first_name                            |  chr  |
#' |last_name                             |  chr  |
#' |uniform_number                        |  dbl  |
#' |total_points                          |  dbl  |
#' |mvp_points                            |  dbl  |
#' |win_points                            |  dbl  |
#' |stat_points                           |  dbl  |
#' |first_place_mvp                       |  lgl  |
#' |first_place_total_points              |  dbl  |
#' |second_place_mvp                      |  lgl  |
#' |second_place_total_points             |  dbl  |
#' |third_place_mvp                       |  lgl  |
#' |third_place_total_points              |  dbl  |
#' |defensive_mvp                         |  lgl  |
#' |defensive_mvp_total_points            |  dbl  |
#' |set_wins                              |  dbl  |
#' |set_wins_total_points                 |  dbl  |
#' |match_win                             |  dbl  |
#' |match_win_total_points                |  dbl  |
#' |service_aces                          |  dbl  |
#' |service_ace_points                    |  dbl  |
#' |service_errors                        |  dbl  |
#' |service_error_points                  |  dbl  |
#' |attack_kills                          |  dbl  |
#' |attack_kill_points                    |  dbl  |
#' |attack_errors                         |  dbl  |
#' |attack_error_points                   |  dbl  |
#' |set_assists                           |  dbl  |
#' |set_assist_points                     |  dbl  |
#' |set_errors                            |  dbl  |
#' |set_error_points                      |  dbl  |
#' |digs                                  |  dbl  |
#' |dig_points                            |  dbl  |
#' |good_receptions                       |  dbl  |
#' |good_reception_points                 |  dbl  |
#' |reception_errors                      |  dbl  |
#' |reception_error_points                |  dbl  |
#' |block_assists                         |  dbl  |
#' |block_assist_points                   |  dbl  |
#' |block_stuffs                          |  dbl  |
#' |block_stuff_points                    |  dbl  |
#' |points_behind                         |  dbl  |
#' |has_extra_inning_stats                |  lgl  |
#' |is_captain                            |  lgl  |
#' |roster_status                         |  chr  |
#' |primary_position_position_lk          |  chr  |
#' |primary_position_description          |  chr  |
#' |primary_position_short_description    |  chr  |
#' |team_name                             |  chr  |
#' |team_color                            |  chr  |
#' |team_seed                             |  dbl  |
#' |season_id                             |  dbl  |
#' |competitor_id                         |  dbl  |
#' |player_id                             |  dbl  |
#' |player_slug                           |  chr  |
#' |uniform_number_display                |  dbl  |
#' |overall_rank                          |  dbl  |
#' |overall_rank_change                   |  dbl  |
#' |total_au_points                       |  dbl  |
#' |percent_change                        |  dbl  |
#' |position_change                       |  dbl  |
#' |updated_flg                           |  lgl  |
#' |tie_flg                               |  lgl  |
#' |missed_games_flg                      |  lgl  |
#' |previous_seqno                        |  dbl  |
#' |has_game_experience                   |  dbl  |
#' @export
#'
#' @examples
#' try({load_aupvb_leaderboards(2024)})

load_aupvb_leaderboards <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }

  leaderboards <- readr::read_csv(
    "https://github.com/awosoga/volleydata/releases/download/aupvb-leaderboards/aupvb_leaderboards.csv"
  )
  leaderboards <- leaderboards |> dplyr::filter(season %in% seasons)
  return(leaderboards)
}

#' Load cleaned aupvb pbp data from the volleydata repository.
#'
#' @param seasons int, list of int, or NULL, optional
#'                Season(s) to load. By default, NULL loads all available seasons.
#'                - int: Single season year (e.g., 2024)
#'                - list of int: Multiple seasons (e.g., c(2021, 2022), 2021:2024)
#'                - NULL: Load all available seasons
#'
#'                All years must be 2021 or later.
#'
#' @returns A data frame containing play-by-play data for the specified seasons.
#' |Column Name                           |  Type |
#' |:------------------------------------ |:------|
#' |season                                |  dbl  |
#' |week_number                           |  dbl  |
#' |game_number                           |  dbl  |
#' |play_sequence_number                  |  dbl  |
#' |set_number                            |  dbl  |
#' |rally_number                          |  dbl  |
#' |play_code                             |  chr  |
#' |narrative_formatted                   |  chr  |
#' |played_id                             |  dbl  |
#' |serve_ace                             |  lgl  |
#' |serve_error                           |  lgl  |
#' |serve_continue                        |  lgl  |
#' |attack_kill                           |  lgl  |
#' |attack_error                          |  lgl  |
#' |attack_continue                       |  lgl  |
#' |pass_good                             |  lgl  |
#' |pass_error                            |  lgl  |
#' |pass_continue                         |  lgl  |
#' |dig_success                           |  lgl  |
#' |dig_continue                          |  lgl  |
#' |block_stuff                           |  lgl  |
#' |block_assist                          |  lgl  |
#' |block_continue                        |  lgl  |
#' |set_assist                            |  lgl  |
#' |set_error                             |  lgl  |
#' |set_continue                          |  lgl  |
#' |home_team_score                       |  dbl  |
#' |away_team_score                       |  dbl  |
#' |scoring_team_id                       |  dbl  |
#' |home_team_id                          |  dbl  |
#' |away_team_id                          |  dbl  |
#' |set_status_lk                         |  chr  |
#' |season_id                             |  dbl  |
#' |game_id                               |  dbl  |
#' |play_text                             |  chr  |
#' |start_time                            |  dbl  |
#' |end_time                              |  dbl  |
#' |video_minutes                         |  dbl  |
#' |video_seconds                         |  dbl  |
#' |alternate_video_seconds               |  dbl  |
#' |date_time_file_received               |  chr  |
#' @export
#'
#' @examples
#' try({load_aupvb_pbp(2024)})

load_aupvb_pbp <- function(seasons = NULL) {
  current_year <- as.integer(format(Sys.Date(), "%Y"))

  if (is.null(seasons)) {
    seasons <- 2021:current_year
  } else {
    validate_seasons(seasons, 2021)
  }
  # if (length(seasons) > 0 && utils::tail(seasons, 1) == current_year) {
  #   seasons <- utils::head(seasons, -1)
  # }

  pbp <- data.frame()

  for(season in seasons) {
    temp <- readr::read_csv(
      paste0("https://github.com/awosoga/volleydata/releases/download/aupvb-pbp/aupvb_pbp_", season, ".csv")
    )
    pbp <- dplyr::bind_rows(pbp, temp)
  }
  return(pbp)
}
