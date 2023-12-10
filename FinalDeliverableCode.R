library(dplyr)
library(stringr)
library(ggplot2)

dataframe <- read.csv("booksheet.csv")

ethnicity_selected <- select(dataframe, Type, American.Indian.Alaskan.Native, Asian.Asian.American, Black.African.American,
                             Hispanic.Latino, Pacific.Islander.Native.Hawaiian, Multiracial, White)
df <- filter(ethnicity_selected, Type == "Food Insecurity")

# creating a data frame for the GG plot
data <- data.frame(
  Ethnicity=c("American Indian", "Asian American", "Black/African American", "Hispanic/Latino", "Pacific Islander", "Multiracial", "White") ,  
  Food_Insecurity_Rate=c(52.2, 29.7, 56.0, 46.5, 48.1, 44.7, 34.8),
  Housing_Insecurity_Rate=c(59.6, 26.7, 48.0, 38.8, 33.3, 35.5, 32.7),
  Homelessness_Rate=c(17.0, 7.6, 19.9, 10.7, 15.0, 14.0, 10.4)
)

data2 <- data.frame(
  Year=c(2019, 2021),
  Percentage.Insecurity=c(4.50, 13.50),
  Age46.64=c(4.20, 9.20),
  Age65=c(2.70, 6.90)
)
#p <- ggplot(data2, aes(x=Year)) + 
  #geom_line(aes(y = Percentage.Insecurity), color = "darkred") + 
  #geom_line(aes(y = Age46.64), color="steelblue") +
  #geom_line(aes(y = Age65), color="darkgreen") +
  #labs(x = "Year",
       #y = "Food Insecurity (%)",
       #color = "Legend") 

#print(p)

# just testing GG plot below, this code has been commented out now
#p <- ggplot(data, aes(x=Ethnicity, y=Food_Insecurity_Rate)) + 
  #geom_bar(stat = "identity")

#print(p)