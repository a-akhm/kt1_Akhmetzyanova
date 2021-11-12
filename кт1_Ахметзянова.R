install.packages('ggplot2') 
install.packages('tidyverse')#пакеты

library(ggplot2)
library(tidyverse)#библиотеки

table  <- read.csv ( " C: / Ахметзянова_кт1 / RU_Electricity_Market_PZ_dayahead_price_volume.csv " 
, header  =  TRUE , sep  =  " , " )

names( table )

set.seed(50)
k  <- arima.sim ( n  = nrow ( table ), table)
plot ( k )

ggplot ( data  =  table1 ) +  #первый график
  geom_point ( альфа  =  1 / 2 , отображение  = aes ( х = timestep , у  =  price_eur , цвет  =  consumption_eur ))


ggplot ( data  =  table1 ) +  #второй график
  geom_point ( альфа  =  1 / 4 , отображение  = aes ( х =  consumption_eur , у  =  price_eur ))
