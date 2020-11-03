#' UCR Violent Crime
#'
#' This package contains statistics on violent crime
#' from the FBI's Uniform Crime Reporting Program
#' collected by the Marshall Project
#' @docType package
#' @name UCRCrime
#' @aliases UCRCrime UCRCrime-package
NULL

#' "UCR Crime"
#'
#' A data set containing statistics on violent crime
#' from the FBI's Uniform Crime Reporting Program
#' collected by the Marshall Project
#' between the years 1975 and 2015
#'
#' @source \url{https://github.com/themarshallproject/city-crime/blob/master/data/ucr_crime_1975_2015.csv}
#' @format A dataframe with 2639 observations
#' \describe{
#'   \item{year}{Year}
#'   \item{department}{City of Police Department}
#'   \item{pop}{Population of Police Jurisdiction}
#'   \item{homicides}{Homicides}
#'   \item{rapes}{Rapes}
#'   \item{robberies}{Robberies}
#'   \item{assaults}{Aggrivated Assaults}
#'   \item{violent_crime}{Total Violent Crimes (sum of previous 4 categories)}
#'   \item{homicides_100k}{Homicides per 100k persons per year}
#'   \item{rapes_100k}{Rapes per 100k persons per year}
#'   \item{robberies_100k}{Robberies per 100k persons per year}
#'   \item{assaults_100k}{Aggrivated Assaults per 100k persons per year}
#'   \item{violent_crime_100k}{Total Violent Crimes per 100k persons per year}
#' }
"UCRCrime"
