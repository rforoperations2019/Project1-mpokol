library(ggplot2)
library(plotly)


data <- read.csv(file="StudentData.csv", header=TRUE, sep=",")


# Filter ideas:
#    Private/Public
#    County
#    School population slider
#    Below herd immunity option???? The pastabilities are endless


# Gauges??????? Idk


# Data table
DT::datatable(data = data, 
              options = list(pageLength = 10), 
              rownames = FALSE)

# Overlapping histograms of vaccinations by years



# Average vaccination percentage per county bar chart

# Vaccinations over year w colors (correlation line? Idk)

ggplot(data, aes(x=year)) +
  geom_point(aes(y = nMMR), color = "blue", alpha=.25) +
  geom_point(aes(y = nDTP), color = "red", alpha=.25) +
  geom_point(aes(y = nPolio), color = "orange", alpha=.25) +
  geom_point(aes(y = nPBE), color = "purple", alpha=.25) +
  geom_point(aes(y = nPME), color = "green", alpha=.25)










