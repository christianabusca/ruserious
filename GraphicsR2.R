# This is the file where it is about ggplot

mtcars <- mtcars


# All vectors on geom = , should be on a form of a string, f.e, "line"
# If 1 variable, it will automatically makes a histogram
# The color argument, will color something by GROUP
# The difference between color and fill is that
# Color will "paint" only the lines, but fill will "paint" the 2D object in the plot

# mtcars
qplot(mpg, wt,  data=mtcars, geom = c("line", "point", "smooth"), 
      # The plot will be colored based on the vs column, which is a CATEGORICAL DATA
      color = factor(vs))




#airquality
# Going back to the AirQuality Dataframe
qplot(factor(Month), Ozone, data=`New York Air Quality Measurements`, geom = c("boxplot"),
      # This will look like if the vector is CATEGORICAL
      xlim = c("5", "6", "7"), 
      # This will look like if the vector is NUMERIC
      ylim = c(0, 200), 
      fill = factor(Month))
