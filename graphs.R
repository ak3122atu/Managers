#A simple example

dosage <- c(20,30,40,45,60)
drugA <- c(16,20,27,40,60)
drugB <- c(15,18,25,31,40)
Opinion <- c("Excellent", "No effect", "Some effect", "No effect", "Some effect")
#create dataframe from the vectors
drugs <- data.frame(dosage, drugA, drugB, Opinion)
drugs
plot(drugs)

#examine individual charts
attach(drugs)
plot(dosage, type = "o", col = "blue")

#type = "b" means both lines are plotted
plot(dosage, drugA, type = "b")

#if we want to plot categorical variable 
# then we need to convert to factor first 
factored_opinion <- as.factor(drugs$Opinion)
drugs$Opinion <- factored_opinion
str(drugs)

plot(drugs$Opinion, las = 2)

#par function - default parameters

opar <- par(no.readonly = TRUE)

#lty = line type
#lwd  = line width 

par(lty = 2, pch = 17)
plot (dosage, drugA, type = "b")
par = opar

#dotted line 3 times wider than default 
plot(drugA, 
     type = "o", 
     pch = 22, 
     lty = 2, 
     col = "red",
     main = "Drug dosage", 
     col.main = "Blue", 
     font.main = 4,
     xlab = "No of days", 
     ylab = "Drug dosage(ml)")
#drug A on the y axis that ranges from 0 to max value 
graph_range <- range(0, drugA, drugB)
graph_range
plot(drugA,
     type = "o",
     col = "blue",
     ylim = graph_range,
     axes = FALSE,
     ann = FALSE)

#graph drug b with red dashed lines and square points 
lines(drugB, type = "o", pch = 22, lty = 2, col = "red")

#make custom x axis
axis(1, at = 1:5, lab = c("20 ml", "40 ml", "60 ml", "80 ml", "100ml"))

#make custom y axis 
axis(2, las = 1, at = 5 * 0 : graph_range [2])

#add a box
box()

#plot drug a and drug b on one chart.
# show drug a as a blue line and blue triangles
# and drug b as as a red line and red squares

plot(drugA,
     type = "o",
     main = "Drug Dosage",
     xlab = "No of days",
     ylab = "Drug Dosage(ml)",
     col = "blue")
)

#graph drug b with red dashed lines and square points 
lines(drugB, type = "o", pch = 22, lty = 2, col = "red")
par(opar)

#modify default parameters so that 
# graph is 2 inches wide and 3 inches tall
par(pin = c(2,3))
#lines will be twice default width and 
# symbols will be 1.5 default size 
par (lwd = 2, cex = 1.5)

#arrange charts in 3 rows by 1 column
par(mfrow = c(3,1))
plot(drugA,
     type = "o",
     main = "Drug Dosage",
     xlab = "No of days",
     ylab = "Drug Dosage(ml)",
     col = "blue")
plot(drugA,
     type = "o",
     main = "Drug Dosage",
     xlab = "No of days",
     ylab = "Drug Dosage(ml)",
     col = "blue")
plot(drugA,
     type = "o",
     main = "Drug Dosage",
     xlab = "No of days",
     ylab = "Drug Dosage(ml)",
     col = "blue")