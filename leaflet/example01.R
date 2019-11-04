#----------------------------------------------
#  Example maps with Leaflet
#  See https://rstudio.github.io/leaflet/ for
#  reference documents and tutorials 
#----------------------------------------------
#install.packages("leaflet")
library(leaflet)

#----------------------------------------------
# A map of Auckland, New Zealand
#----------------------------------------------
get_basic_map_of_Aukland <- function() {
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
returm(m)
}

#----------------------------------------------
# A map of a couple of buildings at the University of Washington
#----------------------------------------------
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-122.3078, lat=47.6564, popup="Gowen Hall<br>University of Washington") %>%
  addMarkers(lng=-122.3080,lat=47.6550, popup="Mary Gates Hall, University of Washngton")
print(m)  

#----------------------------------------------
#  Load some data into the data frame, cities
#----------------------------------------------
cities <- read.csv(textConnection("
City,Lat,Long,Pop
Boston,42.3601,-71.0589,645966
Hartford,41.7627,-72.6743,125017
New York City,40.7127,-74.0059,8406000
Philadelphia,39.9500,-75.1667,1553000
Pittsburgh,40.4397,-79.9764,305841
Providence,41.8236,-71.4222,177994
"))
View(cities)

#----------------------------------------------
# Display the map and some ciricles 
#----------------------------------------------
m <- leaflet(cities) %>%
  addTiles() %>%
  addMarkers(lng = ~Long, lat = ~Lat, popup= ~City)
print(m)

#----------------------------------------------
# Display the map and some ciricles 
#----------------------------------------------
m <- leaflet(cities) %>%
  addTiles() %>%
  addCircles(
    lng = ~Long, lat = ~Lat, weight = 4,
    radius = ~sqrt(Pop) * 30, popup = ~City
  )
print(m)

#----------------------------------------------
# An rectangles this time
#----------------------------------------------
m <- leaflet() %>% 
  addTiles() %>%
  addRectangles(
    lng1=-118.456554, lat1=34.078039,
    lng2=-118.436383, lat2=34.062717,
    fillColor = "transparent"
  )
print(m)

# https://rstudio.github.io/leaflet/choropleths.html

