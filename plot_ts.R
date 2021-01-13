plot_ts <- function(x,y,...) {
  fit <- mgcv::gam(y ~ s(x))
  plot(x, y, type = 'l', ...)
  lines(x, fitted(fit), col = 2, lwd = 2)
}

#load function
source("plot_ts.R")
#load file
co2 <- read.csv("co2_mm_mlo.csv")
# make plot
plot_ts(co2$decdate, co2$interpolated, main = "Mauna Loa CO2 Record")
