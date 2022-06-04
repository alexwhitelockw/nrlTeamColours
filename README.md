---
output: github_document
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# nrlTeamColours

<!-- badges: start -->
<!-- badges: end -->

The goal of nrlTeamColours is to extract NRL team colour palettes using the information obtained from each team's [wiki](https://en.wikipedia.org/wiki/National_Rugby_League).

## Installation

You can install the development version of nrlTeamColours from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("alexwhitelockw/nrlTeamColours")
```

## Usage


```r
library(nrlTeamColours)

print(unique(nrl_team_colours$team_name))
#>  [1] "Brisbane Broncos"              "Canberra Raiders"             
#>  [3] "Canterbury-Bankstown Bulldogs" "Cronulla-Sutherland Sharks"   
#>  [5] "Gold Coast Titans"             "Manly Warringah Sea Eagles"   
#>  [7] "Melbourne Storm"               "Newcastle Knights"            
#>  [9] "New Zealand Warriors"          "North Queensland Cowboys"     
#> [11] "Parramatta Eels"               "Penrith Panthers"             
#> [13] "South Sydney Rabbitohs"        "St. George Illawarra Dragons" 
#> [15] "Sydney Roosters"               "Wests Tigers"                 
#> [17] "Dolphins (NRL)"
```

### Extracting NRL Team Colour Palette

The main function is extract a colour palette for a given team name. The number of colours to extract can also be specified (defaults to one colour).


```r
## Extracting the colour palette for Penrith Panthers
extract_team_palette(team_name="Penrith Panthers", n_colours=4)
#> [1] "#000000" "#FF0000" "#FFFF00" "#008000"
```

### Extracting NRL Match Day Colours

Colour palettes can also be extracted based on a given match. That is, colours for the home and away teams can be extracted using a single function.


```r
extract_matchday_palette(home_team="South Sydney Rabbitohs", away_team="Wests Tigers")
#> [1] "#FF0000" "#008000" "#FFFFFF" "#000000" "#FFFFFF" "#FC7E00"
```

### Visualising NRL Team Colour Palettes

#### Brisbane Broncos


```r
plot_team_palette("Brisbane Broncos")
```

<img src="man/figures/README-brisbane_broncos_cp-1.png" title="plot of chunk brisbane_broncos_cp" alt="plot of chunk brisbane_broncos_cp" width="50%" height="50%" />

```r
plot_team_palette("Canberra Raiders")
```

<img src="man/figures/README-canberra_cp-1.png" title="plot of chunk canberra_cp" alt="plot of chunk canberra_cp" width="50%" height="50%" />

```r
plot_team_palette("Canterbury-Bankstown Bulldogs")
```

<img src="man/figures/README-bulldogs_cp-1.png" title="plot of chunk bulldogs_cp" alt="plot of chunk bulldogs_cp" width="50%" height="50%" />

```r
plot_team_palette("Cronulla-Sutherland Sharks")
```

<img src="man/figures/README-sharks_cp-1.png" title="plot of chunk sharks_cp" alt="plot of chunk sharks_cp" width="50%" height="50%" />

```r
plot_team_palette("Gold Coast Titans")
```

<img src="man/figures/README-titans_cp-1.png" title="plot of chunk titans_cp" alt="plot of chunk titans_cp" width="50%" height="50%" />

```r
plot_team_palette("Manly Warringah Sea Eagles")
```

<img src="man/figures/README-sea_eagles_cp-1.png" title="plot of chunk sea_eagles_cp" alt="plot of chunk sea_eagles_cp" width="50%" height="50%" />

```r
plot_team_palette("Melbourne Storm")
```

<img src="man/figures/README-storm_cp-1.png" title="plot of chunk storm_cp" alt="plot of chunk storm_cp" width="50%" height="50%" />

```r
plot_team_palette("Newcastle Knights")
```

<img src="man/figures/README-knights_cp-1.png" title="plot of chunk knights_cp" alt="plot of chunk knights_cp" width="50%" height="50%" />

```r
plot_team_palette("New Zealand Warriors")
```

<img src="man/figures/README-warriors_cp-1.png" title="plot of chunk warriors_cp" alt="plot of chunk warriors_cp" width="50%" height="50%" />

```r
plot_team_palette("North Queensland Cowboys")
```

<img src="man/figures/README-cowboys_cp-1.png" title="plot of chunk cowboys_cp" alt="plot of chunk cowboys_cp" width="50%" height="50%" />

```r
plot_team_palette("Parramatta Eels")
```

<img src="man/figures/README-eels_cp-1.png" title="plot of chunk eels_cp" alt="plot of chunk eels_cp" width="50%" height="50%" />

```r
plot_team_palette("Penrith Panthers")
```

<img src="man/figures/README-panthers_cp-1.png" title="plot of chunk panthers_cp" alt="plot of chunk panthers_cp" width="50%" height="50%" />

```r
plot_team_palette("South Sydney Rabbitohs")
```

<img src="man/figures/README-rabbitohs_cp-1.png" title="plot of chunk rabbitohs_cp" alt="plot of chunk rabbitohs_cp" width="50%" height="50%" />

```r
plot_team_palette("St. George Illawarra Dragons")
```

<img src="man/figures/README-dragons_cp-1.png" title="plot of chunk dragons_cp" alt="plot of chunk dragons_cp" width="50%" height="50%" />

```r
plot_team_palette("Sydney Roosters")
```

<img src="man/figures/README-roosters_cp-1.png" title="plot of chunk roosters_cp" alt="plot of chunk roosters_cp" width="50%" height="50%" />

```r
plot_team_palette("Wests Tigers")
```

<img src="man/figures/README-tigers_cp-1.png" title="plot of chunk tigers_cp" alt="plot of chunk tigers_cp" width="50%" height="50%" />

```r
plot_team_palette("Dolphins (NRL)")
```

<img src="man/figures/README-dolphins_cp-1.png" title="plot of chunk dolphins_cp" alt="plot of chunk dolphins_cp" width="50%" height="50%" />
