require(dplyr)
require(ggplot2)
require(rio)
require(labelled)
require(stringr)

## South Africa: General Household Survey 2016 ##

# import dataset
southafrica <- read.csv("data/misc/GHS-2016-HOUSE/GHS-2016-HOUSE_F1.csv")

# filter dataframe for variables of interest
sa.filter <- southafrica %>% select(house_wgt, Q65Int1, Q62Cell, Q81Agri, UqNr, PSU, Prov)

# recode province names
sa.filter$NAME_1 <- recode(sa.filter$Prov, "1" = "Western Cape", "2" = "Eastern Cape", "3" = "Northern Cape",
	"4" = "Free State", "5" = "KwaZulu-Natal", "6" = "North West", "7" = "Gauteng", "8" = "Mpumalanga", "9" = "Limpopo")

# recode internet, cell, and agriculture responses as 1/2 (T/F)
sa.filter$Q65Int1 <- ifelse(sa.filter$Q65Int1 == 1, 1, 2)
sa.filter$Q62Cell <- ifelse(sa.filter$Q62Cell == 1, 1, 2)
sa.filter$Q81Agri <- ifelse(sa.filter$Q81Agri == 1, 1, 2)

# recode weight variable as numeric
sa.filter$house_wgt <- as.numeric(sa.filter$house_wgt)

# aggregate responses to the household level
sa.hh.ag <- aggregate(house_wgt ~ UqNr + Q65Int1 + Q62Cell + Q81Agri + Prov + NAME_1, data = sa.filter, FUN = mean)

# aggregate summed weights for internet responses at the province level
sa.int.ag <- aggregate(house_wgt ~ Q65Int1 + Q81Agri + Prov + NAME_1, data = sa.hh.ag, FUN = sum)

# aggregate summed weights for cell responses at the province level
sa.cell.ag <- aggregate(house_wgt ~ Q62Cell + Q81Agri + Prov + NAME_1, data = sa.hh.ag, FUN = sum)

# create proportions for internet responses for categories of interest
sa.int <- sa.int.ag %>% 
	group_by(Q81Agri, Prov) %>% 
	mutate(prop = prop.table(house_wgt))

# create proportions for cell responses for categories of interest
sa.cell <- sa.cell.ag %>% 
	group_by(Q81Agri, Prov) %>% 
	mutate(prop = prop.table(house_wgt))

## Bolivia: Household Survey 2016 ##

# import datasets
bolivia.hh <- import("survey data/country data/bolivia/bd39/EH2016_Vivienda.sav")
bolivia.in <- import("survey data/country data/bolivia/bd39/EH2016_Persona.sav")

# filter dataframes for variables of interest
bolivia.hh.filter <- bolivia.hh %>% select(folio, upm, factor, area, depto, estrato, s01a_31)
bolivia.in.filter <- bolivia.in %>% select(folio, cob_op, s05c_15a)

# join dataframes
bolivia.in.filter$cob_op <- ifelse(bolivia.in.filter$cob_op == 6, 1, 2)
bolivia.full <- inner_join(bolivia.hh.filter, bolivia.in.filter, by = "folio")

# aggregate responses to the household level
bolivia.full.hh <- aggregate(factor ~ folio + area + depto + estrato + s01a_31 + cob_op + s05c_15a, data = bolivia.full, FUN = mean)

# create dataframe of duplicated household responses
bolivia.full.dups <- bolivia.full.hh[duplicated(bolivia.full.hh$folio, fromLast = T),]

# remove duplicated household responses
bolivia.full.nodups <- anti_join(bolivia.full.hh, bolivia.full.dups)

# select variables of interest
bolivia.int <- bolivia.full.nodups %>% select(folio, factor, area, depto, estrato, cob_op, s01a_31)

# aggregate summed weights for internet responses to the strata level
bolivia.int.ag <- aggregate(factor ~ estrato + cob_op + s01a_31, data = bolivia.int, FUN = sum)

# create proportions for internet responses for categories of interest
bolivia.int <- bolivia.int.ag %>% 
	group_by(cob_op, estrato) %>% 
	mutate(prop = prop.table(factor))

## Ghana: Living Standards Survey 2012 ##

# read in datasets
ghana.tech <- import("survey data/country data/ghana/GLSS6_2012-2013/DATA/SPSS/SPSS/PARTA/sec7.sav")
ghana.farm <- import("survey data/country data/ghana/GLSS6_2012-2013/DATA/SPSS/SPSS/PARTA/sec6.sav")
ghana.wt <- import("survey data/country data/ghana/GLSS6_2012-2013/DATA/SPSS/SPSS/PARTA/g6loc_edt.sav")
grep("weight", var_label(ghana.wt), value = TRUE, ignore.case = TRUE)

# select variables of interest
ghana.tech.f <- ghana.tech %>% select(region, clust, nh, HID, s7eq1d)
ghana.farm.f <- ghana.farm %>% select(region, clust, nh, HID, s6q1)
ghana.wt.f <- ghana.wt %>% select(HID, weight)

# rename columns
colnames(ghana.tech.f) <- c("region", "cluster", "hh", "hhid", "own.int")
colnames(ghana.farm.f) <- c("region", "cluster", "hh", "hhid", "farm")
colnames(ghana.wt.f) <- c("hhid", "weight")

# join dataframes
ghana.tech.farm <- inner_join(ghana.tech.f, ghana.farm.f)
ghana.full <- inner_join(ghana.wt.f, ghana.tech.farm)

# recode region names
ghana.full$region <- recode(ghana.full$region, "1" = "Western", "2" = "Central", 
	"3" = "Greater Accra", "4" = "Volta", 
	"5" = "Eastern", "6" = "Ashanti", 
	"7" = "Brong Ahafo", "8" = "Northern", 
	"9" = "Upper East", "10" = "Upper West")

# aggregate summed weights to the region level
ghana.int <- aggregate(weight ~ region + farm + own.int, data = ghana.full, FUN = sum)

# create proportions for internet responses for categories of interest
ghana.int <- ghana.int.ag %>% 
	group_by(farm, region) %>% 
	mutate(prop = prop.table(weight))
