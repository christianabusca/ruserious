# Group EDA
# ABUSCA, Christian Drey
# BURCE, Diane
# Dela paz, Ella May
# FERNANDEZ, Edriana
# LANAZA, Nikka

attach(mpg)
mpg <- mpg
#  Scatter plot
# Fuel Efficiency by Type of Drive Train

ggplot(mpg, aes(hwy, displ, color = drv)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Type of Drive Train") +
  scale_color_manual("Type of Drive Train", values = c("orange", "red", "blue"), 
                     aesthetics = "color")

# Fuel Efficiency by Fuel Type
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

# Fuel Efficiency by Type of Car
ggplot(mpg, aes(hwy, displ, color = class)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Type of Car")

# Fuel Efficiency by Number of Cylinders
ggplot(mpg, aes(hwy, displ, color = cyl)) + 
  geom_point() + 
  labs(x = "Highway Miles per Gallon", y = "Engine Displacement", 
       title = "Fuel Efficiency by Number of Cylinders")
