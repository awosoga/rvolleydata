# Changelog

## rvolleydata 2.0.0

### Major changes

- Deprecated all `load_league_xxx()` functions in favor of more general
  functions:
  - `load_pbp(league, seasons)`
  - `load_player_info(league, seasons)`
  - `load_events_log(league, seasons)`
  - `load_officials(league, seasons)`
  - `load_schedule(league, seasons)`
  - `load_team_staff(league, seasons)`
  - `load_team_boxscore(league, seasons)`
  - `load_player_boxscore(league, seasons)`

### Minor changes

- Updated AU data to match structure of MLV and LOVB.

## rvolleydata 1.1.1

### Patches

- Correct the documentation for different functions
- Fixed the `load_mlv_schedule()` function

## rvolleydata 1.1.0

CRAN release: 2025-10-20

### Minor changes

- Added `load_xxx_player_boxscore()` and `load_xxx_team_boxscore()`
  functions for MLV and LOVB.
- Updated logo courtesy of [Rebecca Lai](https://www.rebeccalai.net).
- `load_xxx_player_boxscore()` as `load_xxx_player_info()` for semantic
  consistency.

## rvolleydata 1.0.0

CRAN release: 2025-09-02

### Major changes

- Contains the following functions:

- `load_aupvb_leaderboards()`

- `load_aupvb_pbp()`

- `load_aupvb_player_info()`

- `load_lovb_events_log()`

- `load_lovb_officials()`

- `load_lovb_pbp()`

- `load_lovb_player_info()`

- `load_lovb_schedule()`

- `load_lovb_team_saff()`

- `load_mlv_events_log()`

- `load_mlv_officials()`

- `load_mlv_pbp()`

- `load_mlv_player_info()`

- `load_mlv_schedule()`

- `load_mlv_team_staff()`

- Added logo and badges to README file.

- Initial CRAN submission.
