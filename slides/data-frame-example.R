library(tidyverse)
library(knitr)


setwd("C:/Users/Chus Algar Díaz/Documents/D/CursosFormacion/UCLM-2024/Intro_R")

professions <- read_csv("data/professions.csv")
dates <- read_csv("data/dates.csv")
works <- read_csv("data//works.csv")

professions
dates
works



names(professions)
names(dates)
names(works)

nrow(professions)
nrow(dates)
nrow(works)




## Output

professions |>
  left_join(dates) |>
  left_join(works)


  

  


professions %>%
  left_join(dates) #<<


professions %>%
  right_join(dates) #<<


dates %>%
  full_join(works) #<<


dates %>%
  inner_join(works) #<<


## Putting it altogether
professions %>%
  left_join(dates) %>%
  left_join(works)

