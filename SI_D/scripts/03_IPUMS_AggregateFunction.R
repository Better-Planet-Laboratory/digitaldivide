ipumsaggregate <- function(dat){
	
	require(stringr)
	require(dplyr)

	dat %>%
		summarise_all(function(x) sum(x[!is.na(x)] == 0) == length(x[!is.na(x)])) %>%
		# check if number of 0s is equal to number of rows after removing NAs
		select_if(function(x) x == FALSE) %>% # select columns with non-NULL values
		names() -> vars_to_keep # keep column names

	newdat <- dat %>% select(vars_to_keep) # select columns captured above

	newdat %>%
		summarise_all(function(x) sum(x[!is.na(x)] == "null") == length(x[!is.na(x)]) |
			sum(x[!is.na(x)] == "null") == length(x[!is.na(x)]) - 1) %>%
		select_if(function(x) x == FALSE) %>%
		names() -> vars_to_keep

	newdat2 <- newdat %>% select(vars_to_keep) # select columns captured above
	
	colnames(newdat2) <- gsub(grep("^GEO", x = colnames(newdat2), value = TRUE), 
		x = colnames(newdat2), replacement = "geo") # replace GEO strings with geo

	if(!"internet.log" %in% colnames(newdat2)){
		newdat2$internet.log <- "nodata"
	}
	
	if(!"cell.log" %in% colnames(newdat2)){
		newdat2$cell.log <- "nodata"
	}
	
	if(!"all.ag" %in% colnames(newdat2)){
		newdat2$all.ag <- "nodata"
	}

	newdat3 <- aggregate(PERWT ~ COUNTRY + SERIAL + geo + 
		YEAR + all.ag + internet.log + cell.log, 
		data = newdat2, FUN = mean)
			# Aggregate weight by house (SERIAL).
			# Note this drops NAs in all.ag.
			# These lines are where individual responses 
					# are dropped from the PERWT sum.

	newdat4 <- newdat3[duplicated(newdat3$SERIAL, fromLast = T),] 
			# Select duplicated household responses.
			# fromLast selects FALSE responses as duplicated 
				# to be removed in next step.

	newdat5 <- anti_join(newdat3, newdat4) 
			# Remove duplicated household responses.

	newdat6 <- aggregate(PERWT ~ COUNTRY + geo + 
		YEAR + all.ag + internet.log + cell.log, 
		data = newdat5, FUN = sum)
		# Aggregate weight by lowest division (geo).

	if("nodata" %in% newdat6$internet.log){
		newdat6$internet.log <- NA
	}
	
	if("nodata" %in% newdat6$cell.log){
		newdat6$cell.log <- NA
	}
	
	if("nodata" %in% newdat6$all.ag){
		newdat6$all.ag <- NA
	}
	
	return(newdat6)
}
