testthat::test_that("load_aupvb_player_info() works", {
  player_info_data_2025 <- load_aupvb_player_info(2023)
  testthat::expect_type(player_info_data_2025, "list")
  testthat::expect_true(nrow(player_info_data_2025) != 0)
})

testthat::test_that("load_aupvb_leaderboards() works", {
  leaderboards_data_2025 <- load_aupvb_leaderboards(2023)
  testthat::expect_type(leaderboards_data_2025, "list")
  testthat::expect_true(nrow(leaderboards_data_2025) != 0)
})

testthat::test_that("load_aupvb_pbp() works", {
  pbp_data_2025 <- load_aupvb_pbp(2023)
  testthat::expect_type(pbp_data_2025, "list")
  testthat::expect_true(nrow(pbp_data_2025) != 0)
})

testthat::test_that("load_lovb_schedule() works", {
  schedule_data_2025 <- load_lovb_schedule(2025)
  testthat::expect_type(schedule_data_2025, "list")
  testthat::expect_true(nrow(schedule_data_2025) != 0)
})

testthat::test_that("load_lovb_officials() works", {
  officials_data_2025 <- load_lovb_officials(2025)
  testthat::expect_type(officials_data_2025, "list")
  testthat::expect_true(nrow(officials_data_2025) != 0)
})

testthat::test_that("load_lovb_pbp() works", {
  pbp_data_2025 <- load_lovb_pbp(2025)
  testthat::expect_type(pbp_data_2025, "list")
  testthat::expect_true(nrow(pbp_data_2025) != 0)
})

testthat::test_that("load_lovb_player_boxscore() works", {
  player_boxscore_data_2025 <- load_lovb_player_boxscore(2025)
  testthat::expect_type(player_boxscore_data_2025, "list")
  testthat::expect_true(nrow(player_boxscore_data_2025) != 0)
})

testthat::test_that("load_lovb_team_staff() works", {
  team_staff_data_2025 <- load_lovb_team_staff(2025)
  testthat::expect_type(team_staff_data_2025, "list")
  testthat::expect_true(nrow(team_staff_data_2025) != 0)
})

testthat::test_that("load_lovb_events_log() works", {
  events_log_data_2025 <- load_lovb_events_log(2025)
  testthat::expect_type(events_log_data_2025, "list")
  testthat::expect_true(nrow(events_log_data_2025) != 0)
})

testthat::test_that("load_mlv_schedule() works", {
  schedule_data_2025 <- load_mlv_schedule(2025)
  testthat::expect_type(schedule_data_2025, "list")
  testthat::expect_true(nrow(schedule_data_2025) != 0)
})

testthat::test_that("load_mlv_officials() works", {
  officials_data_2025 <- load_mlv_officials(2025)
  testthat::expect_type(officials_data_2025, "list")
  testthat::expect_true(nrow(officials_data_2025) != 0)
})

testthat::test_that("load_mlv_pbp() works", {
  pbp_data_2025 <- load_mlv_pbp(2025)
  testthat::expect_type(pbp_data_2025, "list")
  testthat::expect_true(nrow(pbp_data_2025) != 0)
})

testthat::test_that("load_mlv_player_boxscore() works", {
  player_boxscore_data_2025 <- load_mlv_player_boxscore(2025)
  testthat::expect_type(player_boxscore_data_2025, "list")
  testthat::expect_true(nrow(player_boxscore_data_2025) != 0)
})

testthat::test_that("load_mlv_team_staff() works", {
  team_staff_data_2025 <- load_mlv_team_staff(2025)
  testthat::expect_type(team_staff_data_2025, "list")
  testthat::expect_true(nrow(team_staff_data_2025) != 0)
})

testthat::test_that("load_mlv_events_log() works", {
  events_log_data_2025 <- load_mlv_events_log(2025)
  testthat::expect_type(events_log_data_2025, "list")
  testthat::expect_true(nrow(events_log_data_2025) != 0)
})
