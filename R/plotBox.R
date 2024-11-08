#' Plots the box with the containing flasks
#' 
#' @param box_list a list with data and metadata for a box
#' 
#' @return a plot 
#' @export
#' @importFrom graphics par symbols text title
#' 
plotBox<-function(box_list){
  md<-box_list$metadata
  dt<-box_list$data
  
  xs<-rep(c(1:3, seq(1.5, 3.5, by=1)), 2)
  ys<-rep(1:4, each=3)
  par(mar=c(0.5,0.5,4,0.5))
  symbols(xs, ys, circles = rep(1, 12),  yaxt="n", xaxt="n",
          ylab="", xlab="", xlim=c(0.5,4), ylim=c(0.5,4.5))
  text(xs, ys, labels=dt$Flask[1:12])
  title(main=paste0("Box ", box_list$metadata$Box, ", at ", box_list$metadata$location, " on ", box_list$metadata$date))
}
