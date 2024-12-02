#' Download PanTHERIA dataset
#'
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in 
#' `data/pantheria/`. This folder will be created if required.
#'
#' @return This function returns the path (`character`) to the downloaded file
#' (e.g. `data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt`).
#' 
#' @export

## Installation de 'remotes' ----
install.packages("remotes")

## Installation de 'rcompendium' ----
remotes::install_github("frbcesab/rcompendium")

## Chargement du package -----
library("rcompendium")
set_credentials(given    = "Leo",
                family   = "Streith", 
                email    = "leo.streith@gmail.com", 
                protocol = "ssh")

## Ajout d'un README ----
utils::file.edit(here::here("README.md"))

## Ajout d'un fichier DESCRIPTION ----
add_description()

## Ajout d'une licence ----
add_license(license = "GPL-2")

## Ajout de sous-répertoires ----
add_compendium(compendium = c("data", "analyses", "R", "figures", "outputs"))

## Ajout d'un script R ----
utils::file.edit(here::here("analyses", "download-data.R"))

dir.create(here::here("data", "pantheria"))
dir.create(here::here("data", "wildfinder"))

utils::download.file(url="https://github.com/rdatatoolbox/datarepo/tree/main/data/pantheria",
                     destfile=here::here("data", "pantheria", "PanTHERIA_1-0_WR05_Aug2008.txt"))
filename <- "wildfinder-ecoregions_list.csv"
utils::download.file(url=paste0("https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/",filename),
                     destfile=here::here("data", "wildfinder", filename))
filename <- "wildfinder-ecoregions_species.csv"
utils::download.file(url=paste0("https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/",filename),
                     destfile=here::here("data", "wildfinder", filename))
filename <- "wildfinder-mammals_list.csv"
utils::download.file(url=paste0("https://github.com/rdatatoolbox/datarepo/blob/main/data/wildfinder/",filename),
                     destfile=here::here("data", "wildfinder", filename))

library("dplyr")

usethis::use_r("dl_pantheria_data")
usethis::use_r("dl_wildfinder_data")

## Génération de la doc ----
devtools::document()

## Ajout des dépendances dans DESCRIPTION ----
usethis::use_package(package = "here")
usethis::use_package(package = "utils")
usethis::use_package(package = "ggplot2", type = "Depends")

devtools::install_deps()
devtools::load_all()

utils::file.edit(here::here("make.R"))
