attach(mpg)
mpg <- mpg

# BAR CHART
# To add color, put fill = , on the ggplot's aes() function or add aes() on geom_bar()
# Example 1, adding fill inside a ggplot
ggplot(mpg, aes(class, fill = class)) + geom_bar() 
# Example 2, adding fill inside geom_bar()
ggplot(mpg, aes(class,)) + geom_bar(aes(fill = class)) 
#It is just the SAME OUTPUT

# color function
# The colors are default in R
# It only colors the lines within the bars in the bar graph
# Example 1
ggplot(mpg, aes(class, colour= class)) + geom_bar() 
# Example 2
ggplot(mpg, aes(class)) + geom_bar(aes(colour= class)) 

# Having customize colors
ggplot(mpg, aes(class, colour=class)) + geom_bar() +
  scale_color_manual(
    # String Name
    "Type of Cars", 
    # Color variations
    values = c("red", "blue", "orange", 
               "green", "White", "yellow", "violet"),
    # This code pass through the colour function on the aesthetics
    aesthetics = "colour"
  )


# Having customize fills

ggplot(mpg, aes(class, fill=class)) + geom_bar() +
  scale_color_manual(
    # String Name
    "Type of Cars", 
    # Color variations
    values = c("red", "blue", "orange", 
               "green", "White", "yellow", "violet"),
    # This code pass through the colour function on the aesthetics
    aesthetics = "fill"
  )


# Labelling the axis labels on the bar plot
ggplot(mpg, aes(class, fill=class)) + geom_bar() +
  scale_color_manual(
    # String Name
    "Type of Cars", 
    # Color variations
    values = c("red", "blue", "orange", 
               "green", "White", "yellow", "violet"),
    # This code pass through the colour function on the aesthetics
    aesthetics = "fill"
  ) + labs(x = "Types of Cars", y = "Frequency")


#  Scatter plot


# SAMPLE 1 FOR TYPE OF DRIVE TRAIN

ggplot(mpg, aes(hwy, displ, color = drv)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Type of Drive Train") +
  scale_color_manual("Type of Drive Train", values = c("orange", "red", "blue"), 
                     aesthetics = "color")

# FUEL TYPE
ggplot(mpg, aes(hwy, displ, color = fl)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Fuel Type") +
  scale_color_manual("Fuel Type", values = c("orange", "red", "blue", "purple", "darkgreen"), 
                     aesthetics = "color")

# Fuel Efficiency per Year
ggplot(mpg, aes(hwy, displ, color = factor(year))) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Year") +
  scale_color_manual("Year", values = c("red", "blue"), 
                     aesthetics = "color")

# Fuel Efficiency by type of Car
ggplot(mpg, aes(hwy, displ, color = class)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Type of Car")

# Fuel Efficiency by type of Car
ggplot(mpg, aes(hwy, displ, color = cyl)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Number of Cylinders")
