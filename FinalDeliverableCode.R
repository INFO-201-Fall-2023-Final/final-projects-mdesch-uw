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
  Food_Insecurity_Rate=c(52.2, 29.7, 56.0, 46.5, 48.1, 44.7, 34.8)
)
# just testing GG plot below, this code has been commented out now
#p <- ggplot(data, aes(x=Ethnicity, y=Food_Insecurity_Rate)) + 
  #geom_bar(stat = "identity")

#print(p)