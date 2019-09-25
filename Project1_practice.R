library(ggplot2)
library(plotly)


data <- read.csv(file="StudentData_clean.csv", header=TRUE, sep=",")


# Filter ideas:
#    Private/Public
#    County
#    School population slider
#    Below herd immunity option???? The pastabilities are endless


# Gauges??????? Idk
#    Consider modularizing the boxes thing. Or just make multiple boxes, which is easier lol.


# Data table
DT::datatable(data = data, 
              options = list(pageLength = 10), 
              rownames = FALSE)


# Density plot of vaccination by school type. Not super great tbh.
ggplot(data, aes(x=Polio, fill=schoolType)) + geom_density(alpha=.15)


# Bubbles over years showing vaccination
ggplot(data, aes(x=year, y=Polio, size=n)) + geom_jitter(width = .5, alpha=.2) 


# Vaccinations over year w colors (a million lines for each school)
ggplot(data, aes(x=year)) + 
  geom_line(aes(y=MMR, group=SCHOOL, col="MMR")) + 
  geom_line(aes(y=Polio,group=SCHOOL, col="Polio")) 


# Vaccinations for private vs public school, violin boxplot
ggplot(data, aes(x=schoolType, y=MMR, fill=schoolType)) + geom_violin() + guides(fill=FALSE)


# boxplots of vaccine for every county. It's a lot.
ggplot(data, aes(x=COUNTY, y=MMR, fill=COUNTY)) + geom_boxplot() + guides(fill=FALSE) +
  theme(axis.text.x = element_text(angle=65))











