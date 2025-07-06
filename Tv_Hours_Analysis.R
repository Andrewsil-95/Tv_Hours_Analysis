library(tidyverse)
library(here)

gss_cat

tv_hours_table <- gss_cat %>% 
  group_by(marital) %>%
  filter(marital %in% c("Divorced", "Married"), age > 30) %>% 
  summarize(mean_tv_hours = mean(tvhours, na.rm = T))

write_csv(tv_hours_table, here("TV_Hours_By_Marital.csv"))
