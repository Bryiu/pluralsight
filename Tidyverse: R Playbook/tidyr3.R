install.packages("tidyverse")

ldeaths

ldeaths_df <- data.frame(ldeaths, row.names = NULL, check.rows = FALSE, check.names = TRUE, stringsAsFactors = default.stringsAsFactors())

head(ldeaths_df)

messy <- data.frame(
    name = c("John", "Jacob", "Jingleheimer", "Schmidt"),
    a = c(67, 80, 64, 54),
    b = c(56, 90, 50, 86)
)
messy

messy %>% 
    gather(drug, volume, a:b)

messy <- data.frame(
    name = c("John", "Jacob", "Jingleheimer", "Schmidt"),
    a = c(67, 80, 64, 54),
    b = c(56, 90, 50, 86),
    c = c(10, 23, 15, 30)
)
messy

messy %>% 
    gather(drug, volume, a:c)

long_df <- messy %>% 
gather(drug, volume, a:c)
long_df

long_df %>% 
    spread(key=drug, value=volume)

messy

messy %>% 
    separate(name, into = c("first_name", "last_name"), sep = " ")
