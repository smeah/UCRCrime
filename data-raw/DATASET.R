library(tidyverse)
UCRCrime <- readr::read_csv(
  "ucr_crime_1975_2015.csv"
) %>%
  filter(
    months_reported == 12
  ) %>%
  select(
    year,
    department_name,
    total_pop,
    homs_sum,
    rape_sum,
    rob_sum,
    agg_ass_sum,
    violent_crime,
    homs_per_100k,
    rape_per_100k,
    rob_per_100k,
    agg_ass_per_100k,
    violent_per_100k
  ) %>%
  rename(
    department = department_name,
    population = total_pop,
    homicides = homs_sum,
    rapes = rape_sum,
    robberies = rob_sum,
    assaults = agg_ass_sum,
    homicides_100k = homs_per_100k,
    rapes_100k = rape_per_100k,
    robberies_100k = rob_per_100k,
    assaults_100k = agg_ass_per_100k,
    violent_crime_100k = violent_per_100k
  )

usethis::use_data(UCRCrime, overwrite = TRUE)
