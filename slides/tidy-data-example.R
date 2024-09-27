library(tidyverse)

# Data set de canciones
# columnas: artista, canción, día de entrada, semana de la 1 a la 76 (clasificación)
billboard

# Los NA en realidad no son valores faltantes
billboard_tidy <- billboard |> 
  pivot_longer(
    cols = starts_with("wk"), 
    names_to = "week", 
    values_to = "rank",
    values_drop_na = TRUE
  )
billboard_tidy

billboard_longer <- billboard_tidy |> 
  mutate(
    week = parse_number(week)
  )
billboard_longer

billboard_longer |> 
  ggplot(aes(x = week, y = rank, group = track)) + 
  geom_line(alpha = 0.25) + 
  scale_y_reverse()
