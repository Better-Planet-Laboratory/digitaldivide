ipumscategorize <- function(dat){

	# First, summarize variables from INDGEN and OCCISCO
	dat$indgen.ag <- ifelse(dat$INDGEN == 000 | dat$INDGEN == 998 | 
			dat$INDGEN == 999, NA, dat$INDGEN)
	dat$indgen.ag <- ifelse(dat$indgen.ag == 010, T, F) 

	# set agriculture workers to TRUE, others to FALSE
	dat$occisco.ag <- ifelse(dat$OCCISCO == 99 | dat$OCCISCO == 98 | 
			dat$OCCISCO == 97 | dat$OCCISCO == 0, NA, dat$OCCISCO)
	dat$occisco.ag <- ifelse(dat$occisco.ag == 06, T, F)

	dat$all.ag <- ifelse(is.na(dat$indgen.ag) | is.na(dat$occisco.ag),
			NA, dat$indgen.ag)
	dat$all.ag <- ifelse(dat$indgen.ag == T | dat$occisco.ag == T, T, F)
	
	# Next, summarize internet and cell variables
	# For cell: 1 is TRUE and 2 is FALSE
	# For internet: 1 is FALSE and 2 is TRUE
	dat$internet.log <- ifelse(dat$INTERNET == 0 | dat$INTERNET == 9, 
			NA, dat$INTERNET)
	dat$internet.log <- ifelse(dat$INTERNET == 2, T, F)
	
	dat$cell.log <- ifelse(dat$CELL == 0 | dat$CELL == 9, NA, dat$CELL)
	dat$cell.log <- ifelse(dat$CELL == 1, T, F)
	
	return(dat)
}
