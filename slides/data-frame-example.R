library(tidyverse)
library(knitr)


setwd("C:/Users/Chus Algar Díaz/Documents/D/CursosFormacion/UCLM-2024/Intro_R")

professions <- read_csv("data/professions.csv")
dates <- read_csv("data/dates.csv")
works <- read_csv("data//works.csv")

professions
dates
works


## Desired output

professions %>%
  left_join(dates) %>%
  left_join(works)


  
## Inputs, reminder
  
names(professions)
names(dates)
names(works)

nrow(professions)
nrow(dates)
nrow(works)

##  class: middle

# Joining data frames

---
  
  ## Joining data frames
  
#- `left_join()`: all rows from x
#- `right_join()`: all rows from y
#- `full_join()`: all rows from both x and y
#- `semi_join()`: all rows from x where there are matching values in y, keeping just columns from x
#- `inner_join()`: all rows from x where there are matching values in y, return 
#all combination of multiple matches in the case of multiple matches
#- `anti_join()`: return all rows from x where there are not matching values in y, never duplicate rows of x
#- ...

---
  
## Setup
y1 <- tibble(
    id = c(1, 2, 3),
    value_x = c("x1", "x2", "x3")
  )
y1

y2 <- tibble(
    id = c(1, 2, 4),
    value_y = c("y1", "y2", "y4")
  )
y2

  
## `left_join()`
  
left_join(x, y)


## `left_join()`
  
professions %>%
  left_join(dates) #<<



## `right_join()`
  
right_join(x, y)

professions %>%
  right_join(dates) #<<

## `full_join()`
full_join(x, y)
dates %>%
  full_join(works) #<<


## `inner_join()`
  
inner_join(x, y)

## `inner_join()`
  
dates %>%
  inner_join(works) #<<

---
  
## `semi_join()`
semi_join(x, y)

dates %>%
  semi_join(works) #<<


## `anti_join()`

anti_join(x, y)
dates %>%
  anti_join(works) #<<


  
## Putting it altogether
professions %>%
  left_join(dates) %>%
  left_join(works)


  
##  class: middle

# Case study: Student records

---
  
## Student records
  
#  - Have:
#  - Enrolment: official university enrolment records
#- Survey: Student provided info missing students who never filled it out and including students who filled it out but dropped the class
#- Want: Survey info for all enrolled in class 

--
  
enrolment <- read_csv("data/students/enrolment.csv")
survey <- read_csv("data/students/survey.csv")

enrolment
survey

## Student records
  
enrolment %>% 
        left_join(survey, by = "id") #<<

enrolment %>% 
      anti_join(survey, by = "id") #<<

survey %>% 
      anti_join(enrolment, by = "id")