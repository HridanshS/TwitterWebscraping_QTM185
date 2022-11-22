library(dplyr)
library(plotly)
library(dplyr)
library(forcats)
library(tidyverse)
library(shiny)
library(tidyr)


data1<-read.csv('qtm185_data.csv')
#data <- sort(data1$NumCasinos)
#data2 <-arrange(desc())
my_tab_sort3 <- data1 %>%                 # Order table with dplyr
  as.data.frame() %>% 
  arrange(desc(NumCasinos))
my_tab_sort3

par(mar=c(8,4,4,4))
barplot(my_tab_sort3$Viole, main="Violent Crime by Cities & No. of Casinos",
        xlab="", ylab="Violent Crime %", names = my_tab_sort3$City, las=2, col = my_tab_sort3$NumCasinos)
#mtext("Cities", side=1, line=6)
mtext(expression(paste("", bold("Cities"), "")), 1, 6)



  