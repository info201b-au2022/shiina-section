# Styling DEMO
library("nycflights13")
library("dplyr")

# Load lintr and styler packages
library(lintr)
library(styler)

largest_arrival_delay <- flights %>%
  group_by(dest) %>%
  summarise(avg_delay = mean(arr_delay, na.rm = TRUE)) %>%
  mutate(faa = dest) %>%
  left_join(airports, by = "faa") %>%
  filter(avg_delay == max(avg_delay, na.rm = TRUE))

largest_arrival_delay

lint("section/lintr_styler_DEMO.R")
style_file("section/lintr_styler_DEMO.R")
