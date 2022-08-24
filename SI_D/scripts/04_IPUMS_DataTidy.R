require(dplyr)
require(countrycode)

# source functions
source("scripts/ipums_categorize_function.R")
source("scripts/ipums_aggregate_function.R")

# import country-level data
ipums <- list.files(path = "data/IPUMS/country", pattern = "*.csv", full.names = T)
dats <- lapply(ipums, read.csv)

# apply categorize and aggregate functions to dataframe list
ipumscat <- lapply(dats, ipumscategorize)
ipumsag <- lapply(ipumscat, ipumsaggregate)

# concatenate country-level data
ipumsfull <- do.call(rbind, ipumsag)

# remove all data with NA agriculture responses
ipumsfull <- filter(ipumsfull, !is.na(all.ag))

# create new variable with country names using ISO codes
ipumsfull$countryname <- countrycode(sourcevar = ipumsfull$COUNTRY, origin = "iso3n", destination = "country.name")

# Sudan missing from countryname package at the time of analysis (now included).
ipumsfull$countryname <- ifelse(is.na(ipumsfull$countryname), "Sudan", ipumsfull$countryname) 
