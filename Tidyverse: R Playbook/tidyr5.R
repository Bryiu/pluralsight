#press ctl shift s that makes graph work

library(ggplot2)

head(mtcars)

mtcars %>%
    ggplot(aes(x=mpg)) + 
    geom_histogram(bins = 10)

mtcars %>%
    ggplot(aes(x=mpg)) + 
    geom_density(color = 'red', fill = 'grey')

mtcars %>%
    ggplot(aes(x=mpg, y=wt)) + 
    geom_point(color = 'purple', size = 10)

mtcars %>%
    ggplot(aes(x=mpg, y=wt)) + 
    geom_smooth(color = 'purple', size = 1)

mtcars %>%
    ggplot(aes(x=mpg, y=wt)) + 
    geom_line(color = 'purple', size = 1)

mtcars %>%
    ggplot(aes(x=mpg, y=wt)) + 
    geom_smooth(color = 'purple', size = 1, se = FALSE)

mtcars %>%
    ggplot(aes(x=mpg, y=wt)) + 
    geom_point() +
    geom_smooth() +
    theme_bw()

    mtcars %>%
        ggplot(aes(x=mpg, y=wt, color=as.factor(cyl))) +
        geom_point()

mtcars %>%
    filter(cyl != 4) %>%
    ggplot(aes(x=mpg, y=wt)) +
    geom_point()
