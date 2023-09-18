
# Function that generates graphs
graphGenerator <- function(path, year, district) {
  
  # Opening the excel file
  df <- readxl::read_excel(path)
  
  # Formatting plot
  
  df <- df %>%
    ggplot(aes(month, .data[[district]], color = Legend)) + 
    
    # Formatting the main title
    labs(title = paste(year, district, "District Drought Trend Analysis"), x = "Month", y = "Drought Level") +
    theme(plot.title = element_text(face = "bold", color = "#176ba0", size = rel(1.5))) +
    
    # Formatting plot points and plot lines
    geom_point(alpha = 0.5, shape = 19) +
    geom_line(color = "#176ba0", linewidth = 2, lineend = "round") +
    
    # Formatting the plot panel
    theme(panel.grid.major = element_line(colour = "white"), 
          panel.grid.minor = element_line(colour = "white", linewidth = 0.2), 
          panel.background = element_rect(fill = "grey87"), 
          panel.border = element_rect(colour = "grey80", fill = NA, linewidth = 2)) +
    
    # Formatting the axes
    theme(axis.title = element_text(face = "bold", color = "#176ba0", size = rel(.95)),
          axis.text.x = element_text(color = "#142459", size = rel(1)),
          axis.text.y = element_text(color = "#142459", size = rel(1)),
          #axis.line = element_line(color = "#176ba0", linewidth = 1.1, lineend = "round")
          ) +
    scale_x_continuous(breaks = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
                       labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")) +
    ylim(1, 5) + 
    
    # Formatting the plot legend
    theme(legend.background = element_rect(fill = "grey95", color = "grey90", linewidth = 1),
          legend.title = element_text(face = "bold", color = "#142459", size = rel(1.2)),
          legend.text = element_text(color = "#142459", size = rel(1)),
          legend.key = element_rect(colour = "grey95", linewidth = 0.25)) +
    scale_color_manual(values = c("#086619", "#619504", "#ffff2d", "#d7521c", "#bf1d21"))

  # Exporting as a png file
  ggsave(paste0("C:/Users/Melakim/Documents/QGIS/Projects/CDI/CDIGraphing/Graphs/", year, "_", district, ".png"),
         height = 15, width = 20, unit = "cm", dpi = 150)
  
}

