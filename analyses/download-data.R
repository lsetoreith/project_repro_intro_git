# Download project raw data
#
# This script will download the PanTHERIA and WWF WildFinder datasets. The
# four files will be stored in `data/`.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Jane Doe <jane.doe@mail.me>

## Download PanTHERIA database ----
pantheria_path  <- dl_pantheria_data("I'm the boss")


# J'en peux plus des conflits vive la paix

## Download WWF WildFinder database ----
wildfinder_path <- dl_wildfinder_data(filename="wildfinder-ecoregions_list.csv")
wildfinder_path <- dl_wildfinder_data(filename="wildfinder-ecoregions_species.csv")
wildfinder_path <- dl_wildfinder_data(filename="wildfinder-mammals_list.csv")


#Modify a little bit the script
#print time
Sys.time()


#Bonjour
#Bonjour bonjour
#Comment ça va

#On continueeee

