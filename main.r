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





