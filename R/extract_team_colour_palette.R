#' Extract NRL Team Colour Palette
#' 
#' @param team_name An NRL team name.
#' @param n_colours The number of colours to be extracted from the
#'  colour palette.
#' @return The NRL team colour palette.
#' @examples
#' extract_team_palette("Melbourne Storm", 2)
#' extract_team_palette("Parramatta Eels", 3)

extract_team_palette <- function(team_name=NULL, n_colours=1) {
    team_name <- tolower(team_name)
    if (
        is.element(
            team_name, tolower(nrl_team_colours$team_name)
            )
        ) {
        selected_palette <-
            nrl_team_colours[tolower(nrl_team_colours$team_name) == team_name, ]
    }
    else {
        message("Team name not found. Try ",
            paste(unique(nrl_team_colours$team_name), collapse = ", ")
            )
    }
    if (
        n_colours > length(selected_palette)
    ) {
        message(
            n_colours,
            " colours selected, but the palette only has ",
             length(selected_palette),
            " colour/s."
        )
    }
    else if (
        n_colours == 0
    ) {
        message("0 colours selected.")
    }
    else {
        selected_palette <-
            selected_palette$colour[0:n_colours]
        return(selected_palette)
    }
}

#' Extract NRL Match Day Colour Palettes
#' 
#' @param home_team An NRL team name.
#' @param away_team The number of colours to be extracted from the
#'  colour palette.
#' @return The NRL team colour palette.
#' @examples
#' extract_matchday_palette("Melbourne Storm", "Parramatta Eels")

extract_matchday_palette <- function(home_team=NULL, away_team=NULL) {
    home_team <- tolower(home_team)
    away_team <- tolower(away_team)
    if (
        is.element(
            home_team, tolower(nrl_team_colours$team_name)
            ) &&
        is.element(
            away_team, tolower(nrl_team_colours$team_name)
            )
        ) {
        selected_palette <-
            nrl_team_colours[
                (tolower(nrl_team_colours$team_name) == home_team) |
                (tolower(nrl_team_colours$team_name) == away_team), "colour"]
        return(selected_palette)
    }
    else {
        message("Team name not found. Try ",
            paste(unique(nrl_team_colours$team_name), collapse = ", ")
            )
    }
}