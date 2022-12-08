# This function saves a png of the plot provided

save_plot_png <- function(plot, filename, size_x, size_y, res, scaling){
  agg_png(filename,
          width   =  size_x, 
          height  =  size_y, 
          units   =  "px", 
          res     =  res, 
          scaling =  scaling)
  print(plot)
  dev.off()
}
