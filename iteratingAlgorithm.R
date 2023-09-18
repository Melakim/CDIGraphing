# Algorithm that runs the required number of iterations needed to generate 23x60 graphs

iteratingAlgorithm <- function(graphGenerator, paths_list, districts_list, years_list) {
  
  yr_counter = 0
  for (path in paths_list) {
    yr_counter = yr_counter + 1
    for (district in districts_list) {
      year = years_list[[yr_counter]]
      
      # Running the graph generating function
      graphGenerator(path, year, district)
    } 
  }
}