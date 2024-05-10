# Checking the Dataset using library function
library(datasets)

# Checking the information of the dataset within the library
# datasets consists of a lot of dataframes!!!!
library(help=datasets)





# If run all the plot will be affected
# las = ,can also be applied here
# par(mfrow = c(row, column)), row-wise
par(mfrow = c(2,2), bg = "peru", 
    # using mar, and oma, with the vector, c(b, l, t, r))
    # b = bottom margin, l = left margin, t = top margin, r = right margin
    oma = c(3,3,3,3), mar = c(2,2,2,2), 
    las = 1)

# par(mfcol = c(row, column)), column-wise
# bg = , is associated with color, where it changes the background
# within par function
# par(mfcol = c(2, 2), bg = "peru")





#Creating a Title for the dataframe with "" so that space is allowed
# Using the dataframe of air quality
"New York Air Quality Measurements" <- airquality 
# Creating a histogram, using a hist() function
# NOTE: Use BACKTICKS when using the dataframe on the hist function ``, NOT ''
hist(`New York Air Quality Measurements`$Ozone, 
     # Using main = "", to change the title of the plot
     main="Histogram of Ozone from New York Air Quality Measurements",
     #Using the xlab to change the label on the x-axis
     #You can also change the label of the y-axis using ylab
     xlab = "Ozone",
     # Coloring the border
     border="blue",
     # Color inside the border
     col = "skyblue",
     # Changing the orientation based on the axis 
     # las = 1, all the text on the y-axis and x-axis are horizontal
     # las = 2, the text on the x-axis are vertical while the y-axis are horizontal
     # las = 3, all of the text on the y and x-axis are vertical
     las = 1,
     # Using the breaks = , will specify the number of bars on the plot
     # you can also use vector on the break, for example
     #breaks = c(0, 20, 40, 60, 200)
     breaks = 4)

# To see the available colors in R, use the colors()
colors()





# Creating a Scatter Plot
# Creating a Scatterplot using a plot() function
# In using the function, you must attach the the dataframe first
attach(`New York Air Quality Measurements`)
plot(x = Wind, y=Ozone, 
     # We can also name the plot using main=
     main="Scatter Plot of Wind vs Ozone")





# Using the boxplot function, boxplot()
# the tilde (~) symbol is used to specify the formula interface
# The reason why we use factor on Month to make it categorical, NOT NUMERICAL
boxplot(Ozone ~ factor(Month), 
        data=`New York Air Quality Measurements`, 
        xlab = "Month",
        main = "Boxplot of Ozone per Month", 
        # pch = , is the plotting symbol
        # lty = , is the line type
        # lwd = , linewidth
        # col = , is the color of inside the box plot
        lwd=1)








