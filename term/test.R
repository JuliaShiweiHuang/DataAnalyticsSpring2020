install.packages('ggplot2')
library(ggplot2)

install.packages('RColorBrewer')
library(RColorBrewer)

data(diamonds)

qplot(data = diamonds, x = carat, y = price, color = cut) +
  scale_color_brewer(palette = 'Accent')

