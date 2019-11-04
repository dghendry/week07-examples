# filename: chorpleth.R
#----------------------------------------------
# Demo of plotly 
# This code is from: https://plot.ly/r/choropleth-maps/#choropleth-maps-in-r
#----------------------------------------------
library(plotly)

df <- read.csv("https://raw.githubusercontent.com/plotly/datasets/master/2011_us_ag_exports.csv")
df$hover <- with(df, paste(
  state, "<br>", "Beef", beef, "Dairy", dairy, "<br>",
  "Fruits", total.fruits, "Veggies", total.veggies,
  "<br>", "Wheat", wheat, "Corn", corn
))

# specify some map projection/options
g <- list(
  scope = "usa",
  projection = list(type = "albers usa"),
  showlakes = TRUE,
  lakecolor = toRGB("white")
)

p <- plot_geo(df, locationmode = "USA-states") %>%
  add_trace(
    z = ~total.exports, text = ~hover, locations = ~code,
    color = ~total.exports, colors = "Purples"
  ) %>%
  colorbar(title = "Millions USD") %>%
  layout(
    title = "2011 US Agriculture Exports by State<br>(Hover for breakdown)",
    geo = g
  )

#----------------------------------------------
# Show plot
#----------------------------------------------
print(p)

# Create a shareable link to your chart
# Set up API credentials: https://plot.ly/r/getting-started
chart_link <- api_create(p, filename = "choropleth-ag")
chart_link