require(dplyr)

# specify path to main local directory for writing files
path_out <- '/YOUR/PATH/HERE/farmer-technology/'

# import raw data files as a list of dataframes
ipums <- list.files(path = "data/IPUMS/raw", pattern = "*.csv", full.names = T)
dats <- lapply(ipums, read.csv)

# name dataframes using file names - note raw file names below
ipums.names <- gsub("data/IPUMS/raw/", "", ipums, fixed = T)
ipums.names <- gsub(".csv", "", ipums.names, fixed = T)
names(dats) <- ipums.names

# load dataframes to the global environment
list2env(dats, envir = .GlobalEnv)

# extract country-level data from North America using ISO code and write to csv
jamaica <- filter(northam, COUNTRY == 388)
write.csv(jamaica, paste(path_out,"data/IPUMS/country/jamaica.csv",sep = ''), row.names = F)

# repeat for every country
elsalvador <- filter(northam, COUNTRY == 222)
write.csv(elsalvador, paste(path_out,"data/IPUMS/country/elsalvador.csv",sep = ''), row.names = F)

nicaragua <- filter(northam, COUNTRY == 558)
write.csv(nicaragua, paste(path_out,"data/IPUMS/country/nicaragua.csv",sep = ''), row.names = F)

panama <- filter(northam, COUNTRY == 591)
write.csv(panama, paste(path_out,"data/IPUMS/country/panama.csv",sep = ''), row.names = F)

dominicanrep <- filter(northam, COUNTRY == 214)
write.csv(dominicanrep, paste(path_out,"data/IPUMS/country/dominicanrep.csv",sep = ''), row.names = F)

costarica <- filter(northam, COUNTRY == 188)
write.csv(costarica, paste(path_out,"data/IPUMS/country/costarica.csv",sep = ''), row.names = F)

mexico <- filter(northam, COUNTRY == 484)
write.csv(mexico, paste(path_out,"data/IPUMS/country/mexico.csv",sep = ''), row.names = F)

trinidad <- filter(northam, COUNTRY == 780)
write.csv(trinidad, paste(path_out,"data/IPUMS/country/trinidad.csv",sep = ''), row.names = F)

# extract country-level data from Africa and write to csv
rwanda <- filter(africa1, COUNTRY == 646)
write.csv(rwanda, paste(path_out,"data/IPUMS/country/rwanda.csv",sep = ''), row.names = F)

uganda <- filter(africa1, COUNTRY == 800)
write.csv(uganda, paste(path_out,"data/IPUMS/country/uganda.csv",sep = ''), row.names = F)

# in cases where country-level data is split by two dataframes, concatenate dataframes by row
egypt <- filter(africa1, COUNTRY == 818)
colnames(africa2) <- colnames(africa1)
egypt2 <- filter(africa2, COUNTRY == 818)
egyptfull <- rbind.data.frame(egypt, egypt2)
write.csv(egyptfull, paste(path_out,"data/IPUMS/country/egypt.csv",sep = ''), row.names = F)

sierraleone <- filter(africa2, COUNTRY == 694)
write.csv(sierraleone, paste(path_out,"data/IPUMS/country/sierraleone.csv",sep = ''), row.names = F)

colnames(africa3) <- colnames(africa1)

sudan <- filter(africa2, COUNTRY == 729)
sudan2 <- filter(africa3, COUNTRY == 729)
sudanfull <- rbind.data.frame(sudan, sudan2)
write.csv(sudan, paste(path_out,"data/IPUMS/country/sudan.csv",sep = ''), row.names = F)

burkinafaso <- filter(africa3, COUNTRY == 854)
write.csv(burkinafaso, paste(path_out,"data/IPUMS/country/burkinafaso.csv",sep = ''), row.names = F)

southsudan <- filter(africa3, COUNTRY == 728)

colnames(africa4) <- colnames(africa1)

southsudan2 <- filter(africa4, COUNTRY == 728)
southsudanfull <- rbind.data.frame(southsudan, southsudan2)
write.csv(southsudanfull, paste(path_out,"data/IPUMS/country/southsudan.csv",sep = ''), row.names = F)

liberia <- filter(africa4, COUNTRY == 430)
write.csv(liberia, paste(path_out,"data/IPUMS/country/liberia.csv",sep = ''), row.names = F)

nigeria <- filter(africa4, COUNTRY == 566)
write.csv(nigeria, paste(path_out,"data/IPUMS/country/nigeria.csv",sep = ''), row.names = F)

zambia <- filter(africa4, COUNTRY == 894)
write.csv(zambia, paste(path_out,"data/IPUMS/country/zambia.csv",sep = ''), row.names = F)

mozambique <- filter(africa4, COUNTRY == 508)
write.csv(mozambique, paste(path_out,"data/IPUMS/country/mozambique.csv",sep = ''), row.names = F)

southafrica <- filter(africa4, COUNTRY == 710)

colnames(africa5) <- colnames(africa1)
colnames(africa6) <- colnames(africa1)

southafrica2 <- filter(africa5, COUNTRY == 710)
southafricafull <- rbind.data.frame(southafrica, southafrica2)
write.csv(southafricafull, paste(path_out,"data/IPUMS/country/southafrica.csv",sep = ''), row.names = F)

botswana <- filter(africa5, COUNTRY == 072)
write.csv(botswana, paste(path_out,"data/IPUMS/country/botswana.csv",sep = ''), row.names = F)

tanzania <- filter(africa5, COUNTRY == 834)
tanzania2 <- filter(africa6, COUNTRY == 834)
tanzaniafull <- rbind.data.frame(tanzania, tanzania2)
write.csv(tanzaniafull, paste(path_out,"data/IPUMS/country/tanzania.csv",sep = ''), row.names = F)

# extract country-level data from Asia and write to csv
malaysia <- filter(asia, COUNTRY == 458)
write.csv(malaysia, paste(path_out,"data/IPUMS/country/malaysia.csv",sep = ''), row.names = F)

jordan <- filter(asia, COUNTRY == 400)
write.csv(jordan, paste(path_out,"data/IPUMS/country/jordan.csv",sep = ''), row.names = F)

cambodia <- filter(asia, COUNTRY == 116)
write.csv(cambodia, paste(path_out,"data/IPUMS/country/cambodia.csv",sep = ''), row.names = F)

iran <- filter(asia, COUNTRY == 364)
write.csv(iran, paste(path_out,"data/IPUMS/country/iran.csv",sep = ''), row.names = F)

palestine <- filter(asia, COUNTRY == 275)
write.csv(palestine, paste(path_out,"data/IPUMS/country/palestine.csv",sep = ''), row.names = F)

indonesia <- filter(asia, COUNTRY == 360)
write.csv(indonesia, paste(path_out,"data/IPUMS/country/indonesia.csv",sep = ''), row.names = F)

fiji <- filter(asia, COUNTRY == 242)
write.csv(fiji, paste(path_out,"data/IPUMS/country/fiji.csv",sep = ''), row.names = F)

armenia <- filter(asia, COUNTRY == 051)
write.csv(armenia, paste(path_out,"data/IPUMS/country/armenia.csv",sep = ''), row.names = F)

# extract country-level data from South America and write to csv
chile <- filter(southam1, COUNTRY == 152)
write.csv(chile, paste(path_out,"data/IPUMS/country/chile.csv",sep = ''), row.names = F)

venezuela <- filter(southam1, COUNTRY == 862)
write.csv(venezuela, paste(path_out,"data/IPUMS/country/venezuela.csv",sep = ''), row.names = F)

peru1 <- filter(southam1, COUNTRY == 604)

colnames(southam2) <- colnames(southam1)

peru2 <- filter(southam2, COUNTRY == 604)
perufull <- rbind.data.frame(peru1, peru2)
write.csv(perufull, paste(path_out,"data/IPUMS/country/peru.csv",sep = ''), row.names = F)

uruguay <- filter(southam2, COUNTRY == 858)
write.csv(uruguay, paste(path_out,"data/IPUMS/country/uruguay.csv",sep = ''), row.names = F)

brazil1 <- filter(southam2, COUNTRY == 076)

colnames(southam3) <- colnames(southam1)

brazil2 <- filter(southam3, COUNTRY == 076)
brazilfull <- rbind.data.frame(brazil1, brazil2)
write.csv(brazilfull, paste(path_out,"data/IPUMS/country/brazil.csv",sep = ''), row.names = F)

ecuador <- filter(southam3, COUNTRY == 218)
write.csv(ecuador, paste(path_out,"data/IPUMS/country/ecuador.csv",sep = ''), row.names = F)

paraguay <- filter(southam3, COUNTRY == 600)
write.csv(paraguay, paste(path_out,"data/IPUMS/country/paraguay.csv",sep = ''), row.names = F)
