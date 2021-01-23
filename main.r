#Creating data for graph
x <- c(10,20,30,400,50)
labels <- c("Nepal", "India","China", "Pakistan","Mumbai")

piepercent<- round(100*x/sum(x), 1)

#GIving the chart file a name
png(file ="city.jpg")



# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("Nepal", "India","China", "Pakistan","Mumbai"), cex = 0.8,
       fill = rainbow(length(x)))

#save the file
dev.off()





# plot 3d piechart
#library/packages plotrix
#labels inbuilt key and value must passed to key 

data <- c(10,20,30)
lbl <- c("Nepal", "India","China")
png(file="32_pie_chart.jpg")
pie3D(data,labels = lbl, explode = 0.03, main="Citys pie chart", cex = 0.8,
      fill = rainbow(length(x)))
#save file
dev.off()


# read test.csv file


file <- read.csv("test.csv", row.names=1,header=TRUE, check.names = FALSE)
print(file)

percent <- round(100*file$Roll/sum(file$Roll),1)
pie(file$Roll, labels = percent, main ="Pie Chart",col= rainbow(length((file$Roll))))
# read test.csv file with Index
file <- read.csv("test.csv", TRUE)
print(file)

percent <- round(100*file$Roll/sum(file$Roll),1)
pie(file$Roll, labels = percent, main ="Pie Chart",col= rainbow(length(file$Roll)))
legend("topright",c(file$Name), cex= 0.6, fill = rainbow(length(file$Roll)))

#3D piechart
pie3D(file$Roll,labels = percent, explode = 0.1, main="Citys pie chart",col= rainbow(length(file$Roll)))
legend("topright",c(file$Name), cex= 0.6, fill = rainbow(length(file$Roll)))

 



#Analyzing th csv file
data <-  read.csv("weather.csv", TRUE)
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))



#get details about max temp
#get max temp
temp <- max(data$temp)



# get the max temprature from temp
retval <- subset(data, temp == max(temp))
print (retval)


#get data from selected humid
retval <- subset( data, humid == "44")
print (retval)



#plotrix packages
data <-  read.csv("weather.csv", row.names=1,header=TRUE, check.names = FALSE)
print(data)
require("RColorBrewer")
pie(data, labels=row.names(data))







#Plotting piechart with using GGPlot tools
# library used: ggplot2, reshape2,dplyr


#For Graph part


#creating data 
H <- c(3,23,12,3,13)
#Allocating name
png(file = "barchart.png")
# plotting graph
barplot(H)
#save the file
dev.off()



#Monthly revenue barchart

Salary <- c (1000,2000,3000,4000,5000)
Month <- c ("Jan", "Feb","Mar","Apr","May")
#name of barchare .png
png(file = "barchart-monthly-revenue.png")
#plotting the graph
barplot (Salary, names.arg= Month, xlab="Month", ylab="Revenue", col="green", main= "monthly Revenue chart", border="red")
#save file 
dev.off()


# creating matrix values
#vector creation
colors <- c("green", "red", "orange","brown")
months <- c("Jan","Feb","Mar","Apr","May")
regions <- c("East","West","North","South")
#creating matrix values
Values <- matrix (c(2,4,5,6,12,1,23,2,3,14,5,6,7,8,10), nrow = 3, ncol =5, byrow=TRUE)
#giving chart names
png(file="barchart_matrix.png")
#creating bar chart
barplot(Values, main="Total revenue", names.arg = months, xlab="Month", ylab="Revenue", col= colors)
# Adding the legend to the chart
legend("topleft", regions, cex = 1.3, fill= colors)
#file save
dev.off()



#Boxplots for mileage and cylinder data


input < mtcars[,c('mpg','cyl')]
print(head(input))
# Give the chart file a name.
png(file = "boxplot.png")
# Plot the chart.
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
# Save the file.
dev.off()




# Histograms

#datas
data <- c(32,54,65,43,76,43,12,32,43,4,43,32)
# file name
png(file = "histogram.png")
 #create histogram
hist(data, xlab = "Weight", col="yellow", border = "green")
dev.off()



#line graphs

v <- c(3,4,12,10,12,13,14)
png(file = "line_chart.png")
plot(v,type ="o")
dev.off()


#line chart with date, color and labels

data <- c (10,12,30,32,12,23,43,4)
png(file="line with labelcolor.jpg")
plot(data,type="o", col = "red", xlab = "Month", ylab = "Rain Fall", main = "Rain fall rate charts")
dev.off()



#multiple line chart

temp <- c(12,13,16,19,20,22,23,45)
humid <- c( 1,33,12,3,22,32,42)
png(file ="multipleline.jpg")
plot(temp,type = "o",col = "black", xlab = "Temperature", ylab = "Humid", 
     main = "Weather chart")
lines(humid, type = "o", col = "yellow")
dev.off()


#test.csv barplot
files <- read.csv("test.csv", row.names=1,header=TRUE, check.names = FALSE)
print(files)
png(file ="test_line_chart.jpg")
plot(files$Roll,type = "o",col = "black", xlab = "Roll", ylab = "Course", 
     main = "Weather chart")
lines(files$Course, type = "o", col = "yellow")
dev.off()





