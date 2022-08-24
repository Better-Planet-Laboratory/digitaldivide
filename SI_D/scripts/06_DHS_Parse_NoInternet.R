# create function to select variables of interest and create new dataframe
parsedhs <- function(dat){
	newdat <- dat %>% select(HHID, HV000, HV001, HV002, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271)
}

# apply function to raw DHS datasets that do not contain internet variable
dhs.files <- list.files(path = "data/DHS/no_internet", 
		pattern = "*.SAV", full.names = T)
dhs <- lapply(dhs.files, import)
lapply(dhs, parsedhs)

# name dataframes and write list to global environment
dhs.names <- gsub("data/DHS/no_internet/", "", dhs.files, fixed = T)
dhs.names <- gsub(".csv", "", dhs.names, fixed = T)
names(dhs) <- dhs.names
list2env(dhs, envir = .GlobalEnv)
