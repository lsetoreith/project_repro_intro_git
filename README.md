# Practice

This project aims to download the [PanTHERIA](https://doi.org/10.1890/08-1494.1) 
database (Kate _et al._, 2009) and the 
[WWF WildFinder](https://www.worldwildlife.org/pages/wildfinder-database) 
database (World Wildlife Fund 2006). It is structured as a research compendium 
to be reproducible.

**NB.** This is the result of the Practice 1 of the training course
[Reproducible Research in Computational Ecology](https://rdatatoolbox.github.io).


## Content

This project is structured as follow:

.
├─ practice.Rproj                             # RStudio project file
|
├─ README.md                                  # Presentation of the project
├─ DESCRIPTION                                # Project metadata
├─ LICENSE.md                                 # License of the project
|
├─ data/                                      # Contains raw data
|  ├─ pantheria/                              # PanTHERIA database
|  |  └─ PanTHERIA_1-0_WR05_Aug2008.txt
|  └─ wildfinder/                             # WWF WildFinder database
|     ├─ wildfinder-ecoregions_list.csv
|     ├─ wildfinder-ecoregions_species.csv
|     └─ wildfinder-mammals_list.csv
|
├─ outputs/                                   # Contains results
├─ figures/                                   # Contains figures
├─ R/                                         # Contains R functions (only)
|  ├─ dl_pantheria_data.R                     # Function to download PanTHERIA data
|  └─ dl_wildfinder_data.R                    # Function to download WildFinder data
|
├─ analyses/                                  # Contains R scripts
|  └─ download-data.R                         # Script to download raw data
|
└─ make.R                                     # Script to setup & run the project


## Installation

Coming soon...


## Usage

Open the `practice.Rproj` file in RStudio and run `source("make.R")` to launch 
analyses. 

- All packages will be automatically installed and loaded
- Datasets will be saved in the `data/` directory


## License

This project is released under the 
[GPL-2](https://choosealicense.com/licenses/gpl-2.0/) license.


## Citation

> Doe J (2024) Download PanTHERIA and WWF WildFinder databases.


## References

Kate EJ, Bielby J, Cardillo M _et al._ (2009) PanTHERIA: A 
species-level database of life history, ecology, and geography of extant and 
recently extinct mammals. _Ecology_, 90, 2648. 
DOI: [10.1890/08-1494.1](https://doi.org/10.1890/08-1494.1)

World Wildlife Fund (2006) WildFinder: Online database of species distributions. 
Version Jan-06. URL: https://www.worldwildlife.org/pages/wildfinder-database