# bar.R
#----------------------------------------------
# Demo of plotly 
# This code is from: https://plot.ly/r/choropleth-maps/#choropleth-maps-in-r
#----------------------------------------------
library(plotly)

x <- c('Product A', 'Product B', 'Product C')
y <- c(20, 14, 23)
text_popups <- c('27% market share', '24% market share', '19% market share')
data <- data.frame(x, y, text_popups)

p <- plot_ly(data, x = ~x, y = ~y, type = 'bar', text = text_popups,
             marker = list(color = 'rgb(158,202,225)',
                           line = list(color = 'rgb(8,48,107)',
                                       width = 1.5))) %>%
  layout(title = "January 2013 Sales Report",
         xaxis = list(title = ""),
         yaxis = list(title = ""))

#----------------------------------------------
# Show plot
#----------------------------------------------
print(p)
