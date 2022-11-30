# Create data for chart
val <-data.frame(months = c('Jan','Feb','Mar','Apr'),
                 num = c(77,55,80,60))
# head(val)

library(ggplot2)

# Basic Line
ggp <- ggplot(data = val, aes(x = factor(months, level = c('Jan','Feb','Mar','Apr')),
                              y = num,
                              group = 1)) + 
  geom_line() +
  geom_point() +
  labs(x = "Months", y = "Value", title = "Example Line Graph")

ggp
