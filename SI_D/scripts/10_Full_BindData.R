## Internet ##

# DHS - standardize variable names
dhs.int$ag <- dhs.int$ag.land
dhs.int$ag.land <- NULL
dhs.int$dataset <- "DHS"
dhs.int$region.type <- "region"

# IPUMS - standardize variable names
ipums.int$X <- NULL
colnames(ipums.int) <- c("country", "internet", "region", "year", "ag", "weight", "prop")
ipums.int$region.type <- "region"
ipums.int$dataset <- "IPUMS"

# Ghana Living Standards survey - standardize variables names
ghana.int$X.1 <- NULL
ghana.int$X <- NULL
ghana.int$ag <- ghana.int$farm
ghana.int$farm <- NULL
ghana.int$internet <- ghana.int$own.int
ghana.int$own.int <- NULL
ghana.int$region.type <- "region"
ghana.int$year <- 2012
ghana.int$dataset <- "Living Standards Survey"
ghana.int$country <- "ghana"

# Bolivia Household Survey - standardize variable names
bolivia.int$X.1 <- NULL
bolivia.int$X <- NULL
colnames(bolivia.int) <- c("region", "ag", "internet", "weight", "prop")
bolivia.int$country <- "bolivia"
bolivia.int$region.type <- "stratum"
bolivia.int$dataset <- "household survey 2016"
bolivia.int$year <- 2016

# South Africa Household Survey - standardize variable names
sa.int$X.1 <- NULL
sa.int$X <- NULL
sa.int$Prov <- NULL
colnames(sa.int) <- c("internet", "ag", "region", "weight", "prop")
sa.int$region.type <- "province"
sa.int$country <- "south africa"
sa.int$year <- 2016
sa.int$dataset <- "General Household Survey"

# bind dataframes
full.int <- rbind.data.frame(dhs.int, ipums.int, ghana.int, bolivia.int, sa.int)

# recode ag and internet variables as TRUE/FALSE
full.int$ag <- ifelse(full.int$ag == 1, TRUE, FALSE)
full.int$internet <- ifelse(full.int$internet == 1, TRUE, FALSE)

# mutate weights by scaling factors for DHS and IPUMS data
full.int <- full.int %>% mutate(weight = ifelse(source == "DHS", weight/1000000, weight))
full.int <- full.int %>% mutate(weight = ifelse(source == "IPUMS", weight/100, weight))

write.csv(full.int, paste(path_out,"data/Mehrabietal2020_MobilePhoneDataset.csv",sep = ''), row.names = F)

## Cell ##

# DHS - standardize variable names
dhs.cell$cell <- dhs.cell$mobile
dhs.cell$mobile <- NULL
dhs.cell$ag <- dhs.cell$ag.land
dhs.cell$ag.land <- NULL
dhs.cell$region.type <- "region"
dhs.cell$dataset <- "DHS"

# IPUMS - standardize variable names
ipums.cell$X <- NULL
colnames(ipums.cell) <- c("country", "cell", "region", "year", "ag", "weight", "prop")
ipums.cell$dataset <- "IPUMS"
ipums.cell$region.type <- "geo"

# South Africa Household Survey - standardize cell variable names
sa.cell$X.1 <- NULL
sa.cell$X <- NULL
sa.cell$Prov <- NULL
colnames(sa.cell) <- c("cell", "ag", "region", "weight", "prop")
sa.cell$country <- "south africa"
sa.cell$dataset <- "General Household Survey"
sa.cell$year <- 2016
sa.cell$region.type <- "province"

# bind dataframes
full.cell <- rbind.data.frame(dhs.cell, ipums.cell, sa.cell)

# recode ag and internet variables as TRUE/FALSE
full.cell$ag <- ifelse(full.cell$ag == 1, TRUE, FALSE)
full.cell$cell <- ifelse(full.cell$cell == 1, TRUE, FALSE)

# mutate weights by scaling factors for DHS and IPUMS data
full.cell <- full.cell %>% mutate(weight = ifelse(source == "DHS", weight/1000000, weight))
full.cell <- full.cell %>% mutate(weight = ifelse(source == "IPUMS", weight/100, weight))

write.csv(full.cell, paste(path_out,"data/Mehrabietal2020_InternetDataset.csv",sep = ''), row.names = F)
