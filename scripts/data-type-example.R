library(tidyverse)
library(DT)
library(scales)

setwd("C:/Users/Chus Algar Díaz/Documents/D/CursosFormacion/UCLM-2024/Intro_R")
cat_lovers <- read_csv("data/cat-lovers.csv")
cat_lovers

cat_lovers |>
  summarise(mean_cats = mean(number_of_cats))

cat_lovers |>
  summarise(mean_cats = mean(number_of_cats, na.rm = TRUE))

glimpse(cat_lovers)

sapply(cat_lovers, class)

valor <- cat_lovers |>
  mutate(number_of_cats = as.numeric(number_of_cats))

# cat_lovers |>
#  datatable()

head(cat_lovers)
cat_lovers |>
  mutate(number_of_cats = case_when(
    name == "Ginger Clark" ~ 2,
    name == "Doug Bass"    ~ 3,
    TRUE                   ~ as.numeric(number_of_cats)
  )) |>
  summarise(mean_cats = mean(number_of_cats))

cat_lovers |>
  mutate(
    number_of_cats = case_when(
      name == "Ginger Clark" ~ "2",
      name == "Doug Bass"    ~ "3",
      TRUE                   ~ number_of_cats
    ),
    number_of_cats = as.numeric(number_of_cats)
  ) |>
  summarise(mean_cats = mean(number_of_cats))
