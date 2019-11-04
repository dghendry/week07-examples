library(ggplot2)
ggplot(data = midwest) +
  geom_point(mapping = aes(x = percollege, y = percadultpoverty))

ggplot(data = midwest) +
  geom_hex(mapping = aes(x = percollege, y = percadultpoverty))

# Midwest data relationships
ggplot(data = midwest) +
  geom_point(mapping = aes(x = percollege, 
                           y = percadultpoverty, 
                           color = state)) +
  scale_x_reverse() +  # reverse x axis
  scale_color_brewer(palette = "Set3")

# horizontal bar chart of mileage, colored by car type
ggplot(data = mpg) +
  geom_bar(mapping = aes(x = hwy, fill = class)) +
  coord_flip()

# A pie chart = stacked bar chart + polar coordinates
ggplot(data = mpg, aes(x = factor(1), fill = factor(cyl))) +
  geom_bar(width = 1) +
  coord_polar(theta = "y")

ggplot(data = mpg, aes(x = factor(1), fill = factor(cyl))) +
  geom_bar(width = 1) 

View(mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class)

View(midwest)

