library(tidyr)
library(ggplot2)
library(ggpubr)
library(svglite)

source("pathListGenerator.R")
source("database.R")
source("graphGenerator.R")
source("iteratingAlgorithm.R")

main <- function() {
  # Creating a list of paths
  paths_list = pathListGenerator(base_folder_path, years_list)
  # Calling the iterator
  iteratingAlgorithm(graphGenerator, paths_list, districtsList, years_list)
  
}

if (interactive()) {
    main()
}
