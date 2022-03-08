summary(mtcars$mpg)

mtcars %>%
    summarise(mean_mpg = mean(mpg))

mtcars %>%
    summarise(count = n())

mtcars %>%
    summarise(mean_wt = mean(wt),
    mean_hp = mean(hp),
    hp_per_wt = mean_hp / mean_wt
    )

mtcars %>%
    summarise_all(mean)


mtcars %>%
    summarise_all(min)

mtcars %>%
    summarise_at(vars(mpg), funs(mean, median))
