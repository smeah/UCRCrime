
<!-- README.md is generated from README.Rmd. Please edit that file -->

# UCRCrime

<!-- badges: start -->

<!-- badges: end -->

The goal of UCRCrime is to let people perform their own analyses on
violent crime data in 68 different US police jurisdictions between 1975
and 2015. See

## Installation

You can install the development version of UCRCrime from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("smeah/UCRCrime")
```

## Example

Two example problems demonstrating some sample analysis that could be
made with the data are included below:

### a) How has total violent crime per 100k persons changed in Detroit between 1975 and 2015? Describe the trend.

SOLUTION:

``` r
ggplot(filter(UCRCrime, department == "Detroit"),
       aes(x = year, y = violent_crime_100k, fill = violent_crime_100k)) +
  geom_col() +
  scale_fill_gradientn(colours = grDevices::heat.colors(10)) +
  ggtitle("Violent Crime in Detroit from 1975-2015") +
  labs(x = "Year", 
       y = "Violent Crimes per 100k",
       fill = "Violent Crimes per 100k")
```

<img src="man/figures/README-plot1-1.png" width="100%" />

Violent crimes per 100k in Detroit started off relatively low in the 70s
(the start of the data), being as low as around 1750 some years.
However, in the early 80s there began a trend of increasing violent
crime (per 100k) year after year, peaking in the early 90s at over 2500
violent crimes per 100k in several years. Crime would fall in the
mid-to-late 90s back to around 2250 per 100k per year, and would remain
around there most years through 2015 (the end of the data).

### b) Does there appear to be an association between assaults per 100k persons and homicides per 100k persons?

SOLUTION:

``` r
ggplot(UCRCrime,
  aes(x = assaults_100k, y = homicides_100k)) +
  geom_point() + 
  geom_smooth() + 
  ggtitle("Homicides vs. Assaults per 100k persons") +
  labs(x = "Assaults per 100k", y = "Homicides per 100k")
```

<img src="man/figures/README-plot2-1.png" width="100%" />

``` r
with(UCRCrime, cor(homicides_100k, assaults_100k))
#> [1] 0.5735267
```

There is a clear positive linear relationship present in the scatterplot
of homicides per 100k persons vs. assaults per 100k persons. The
Pearson’s correlation between the two variables is about 0.574,
indicating a moderately strong positive linear relationship and
confirming our insights from the graph.

### Summary of Insights

In this exploration of the data we tackled two questions on two
different aspects of the dataset. In the first, we found that violent
crimes per 100k persons in Detroit increased steadily in the 80s towards
a peak in the early 90s, before leveling off and becoming relatively
stable through 2015. In the second, we discovered that assaults and
homicides per 100k persons had a clear positive linear relationship in
the data.
