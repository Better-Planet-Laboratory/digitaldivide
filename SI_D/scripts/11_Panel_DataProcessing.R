## Bangladesh ## 

bangladesh2014 <- read_sav("data/panel/BDHR72FL.SAV")
bangladesh2014.new <- bangladesh2014 %>% select(HHID, HV005, HV024, HV244, HV243A)
bangladesh2014.new$country <- "bangladesh"
table(bangladesh2014$HV007)
bangladesh2014.new$year <- 2014
bangladesh2014.new$HV024 <- ifelse(bangladesh2014.new$HV024 == 6, 5, bangladesh2014.new$HV024)
bangladesh2014.new$HV024 <- ifelse(bangladesh2014.new$HV024 == 7, 6, bangladesh2014.new$HV024)
bangladesh2014.new$HV005 <- as.numeric(bangladesh2014.new$HV005)
bangladesh2014.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = bangladesh2014.new, FUN = sum)
colnames(bangladesh2014.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

bangladesh2014.cell.prop <- bangladesh2014.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

bangladesh2011 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/BDHR61SV/BDHR61FL.SAV")
bangladesh2011.new <- bangladesh2011 %>% select(HHID, HV005, HV024, HV244, HV243A)
bangladesh2011.new$country <- "bangladesh"
table(bangladesh2011$HV007)
bangladesh2011.new$year <- 2011
bangladesh2011.new$HV024 <- ifelse(bangladesh2011.new$HV024 == 6, 5, bangladesh2011.new$HV024)
bangladesh2011.new$HV024 <- ifelse(bangladesh2011.new$HV024 == 7, 6, bangladesh2011.new$HV024)
bangladesh2011.new$HV005 <- as.numeric(bangladesh2011.new$HV005)
bangladesh2011.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = bangladesh2011.new, FUN = sum)
colnames(bangladesh2011.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

bangladesh2011.cell.prop <- bangladesh2011.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

## Note for 2007 - 6 regions instead of 7, called "Division" 
bangladesh2007 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/BDHR51SV/BDHR51FL.SAV")
bangladesh2007.new <- bangladesh2007 %>% select(HHID, HV005, HV024, HV244, HV243A)
bangladesh2007.new$country <- "bangladesh"
table(bangladesh2007$HV007)
bangladesh2007.new$year <- 2007
bangladesh2007.new$HV005 <- as.numeric(bangladesh2007.new$HV005)
bangladesh2007.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = bangladesh2007.new, FUN = sum)
colnames(bangladesh2007.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

bangladesh2007.cell.prop <- bangladesh2007.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

## Ghana ##
ghana2014 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/GHHR72SV/GHHR72FL.SAV")
ghana2014.new <- ghana2014 %>% select(HHID, HV005, HV024, HV244, HV243A)
ghana2014.new$country <- "ghana"
table(ghana2014$HV007)
ghana2014.new$year <- 2014
ghana2014.new$HV005 <- as.numeric(ghana2014.new$HV005)
ghana2014.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = ghana2014.new, FUN = sum)
colnames(ghana2014.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

ghana2014.cell.prop <- ghana2014.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

ghana2008 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/GHHR5ASV/GHHR5AFL.SAV")
ghana2008.new <- ghana2008 %>% select(HHID, HV005, HV024, HV244, HV243A)
ghana2008.new$country <- "ghana"
table(ghana2008$HV007)
ghana2008.new$year <- 2008
ghana2008.new$HV005 <- as.numeric(ghana2008.new$HV005)
ghana2008.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = ghana2008.new, FUN = sum)
colnames(ghana2008.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

ghana2008.cell.prop <- ghana2008.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

## Cambodia ##

cambodia2010 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/KHHR61SV/KHHR61FL.SAV")
cambodia2010.new <- cambodia2010 %>% select(HHID, HV005, HV024, HV244, HV243A)
cambodia2010.new$country <- "cambodia"
table(cambodia2010$HV007)
cambodia2010.new$year <- 2010
cambodia2010.new$HV005 <- as.numeric(cambodia2010.new$HV005)
cambodia2010.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = cambodia2010.new, FUN = sum)
colnames(cambodia2010.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

cambodia2010.cell.prop <- cambodia2010.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

cambodia2005 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/KHHR51SV/KHHR51FL.SAV")
cambodia2005.new <- cambodia2005 %>% select(HHID, HV005, HV024, HV244, HV243A)
cambodia2005.new$country <- "cambodia"
table(cambodia2005$HV007)
cambodia2005.new$year <- 2005
cambodia2005.new$HV005 <- as.numeric(cambodia2005.new$HV005)
cambodia2005.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = cambodia2005.new, FUN = sum)
colnames(cambodia2005.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

cambodia2005.cell.prop <- cambodia2005.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

## India ##

india2010 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/IAHR74SV/IAHR74FL.SAV")
india2010.new <- india2010 %>% select(HHID, HV005, HV024, HV244, HV243A)
india2010.new$country <- "india"
table(india2010$HV007)
india2010.new$year <- 2010
india2010.new$HV005 <- as.numeric(india2010.new$HV005)
india2010.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = india2010.new, FUN = sum)
colnames(india2010.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

india2010.cell.prop <- india2010.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

india2005 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/IAHR52SV/IAHR52FL.SAV")
india2005.new <- india2005 %>% select(HHID, HV005, HV024, HV244, HV243A)
india2005.new$country <- "india"
table(india2005$HV007)
india2005.new$year <- 2005
india2005.new$HV005 <- as.numeric(india2005.new$HV005)
india2005.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = india2005.new, FUN = sum)
colnames(india2005.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

india2005.cell.prop <- india2005.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

madagascar2013 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MDHR6HSV/MDHR6HFL.SAV")
madagascar2013.new <- madagascar2013 %>% select(HHID, HV005, HV024, HV244, HV243A)
madagascar2013.new$country <- "madagascar"
table(madagascar2013$HV007)
madagascar2013.new$year <- 2013
madagascar2013.new$HV005 <- as.numeric(madagascar2013.new$HV005)
madagascar2013.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = madagascar2013.new, FUN = sum)
colnames(madagascar2013.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

madagascar2013.cell.prop <- madagascar2013.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

madagascar2011 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MDHR61SV/MDHR61FL.SAV")
madagascar2011.new <- madagascar2011 %>% select(HHID, HV005, HV024, HV244, HV243A)
madagascar2011.new$country <- "madagascar"
table(madagascar2011$HV007)
madagascar2011.new$year <- 2011
madagascar2011.new$HV005 <- as.numeric(madagascar2011.new$HV005)
madagascar2011.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = madagascar2011.new, FUN = sum)
colnames(madagascar2011.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

madagascar2011.cell.prop <- madagascar2011.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

madagascar2009 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MDHR51SV/MDHR51FL.SAV")
madagascar2009.new <- madagascar2009 %>% select(HHID, HV005, HV024, HV244, HV243A)
madagascar2009.new$country <- "madagascar"
table(madagascar2009$HV007)
madagascar2009.new$year <- 2009
madagascar2009.new$HV005 <- as.numeric(madagascar2009.new$HV005)
madagascar2009.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = madagascar2009.new, FUN = sum)
colnames(madagascar2009.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

madagascar2009.cell.prop <- madagascar2009.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

malawi2017 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MWHR7QSV/MWHR7QFL.SAV")
malawi2017.new <- malawi2017 %>% select(HHID, HV005, HV024, HV244, HV243A)
malawi2017.new$country <- "malawi"
table(malawi2017$HV007)
malawi2017.new$year <- 2017
malawi2017.new$HV005 <- as.numeric(malawi2017.new$HV005)
malawi2017.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = malawi2017.new, FUN = sum)
colnames(malawi2017.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

malawi2017.cell.prop <- malawi2017.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

malawi2015 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MWHR7HSV/MWHR7HFL.SAV")
malawi2015.new <- malawi2015 %>% select(HHID, HV005, HV024, HV244, HV243A)
malawi2015.new$country <- "malawi"
table(malawi2015$HV007)
malawi2015.new$year <- 2015
malawi2015.new$HV005 <- as.numeric(malawi2015.new$HV005)
malawi2015.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = malawi2015.new, FUN = sum)
colnames(malawi2015.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

malawi2015.cell.prop <- malawi2015.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

malawi2014 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MWHR71SV/MWHR71FL.SAV")
malawi2014.new <- malawi2014 %>% select(HHID, HV005, HV024, HV244, HV243A)
malawi2014.new$country <- "malawi"
table(malawi2014$HV007)
malawi2014.new$year <- 2014
malawi2014.new$HV005 <- as.numeric(malawi2014.new$HV005)
malawi2014.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = malawi2014.new, FUN = sum)
colnames(malawi2014.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

malawi2014.cell.prop <- malawi2014.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

malawi2012 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MWHR6HSV/MWHR6HFL.SAV")
malawi2012.new <- malawi2012 %>% select(HHID, HV005, HV024, HV244, HV243A)
malawi2012.new$country <- "malawi"
table(malawi2012$HV007)
malawi2012.new$year <- 2012
malawi2012.new$HV005 <- as.numeric(malawi2012.new$HV005)
malawi2012.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = malawi2012.new, FUN = sum)
colnames(malawi2012.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

malawi2012.cell.prop <- malawi2012.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

mali2015 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MLHR70SV/MLHR70FL.SAV")
mali2015.new <- mali2015 %>% select(HHID, HV005, HV024, HV244, HV243A)
mali2015.new$country <- "mali"
table(mali2015$HV007)
mali2015.new$year <- 2015
mali2015.new$HV005 <- as.numeric(mali2015.new$HV005)
mali2015.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = mali2015.new, FUN = sum)
colnames(mali2015.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

mali2015.cell.prop <- mali2015.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

mali2012 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/MLHR6HSV/MLHR6HFL.SAV")
mali2012.new <- mali2012 %>% select(HHID, HV005, HV024, HV244, HV243A)
mali2012.new$country <- "mali"
table(mali2012$HV007)
mali2012.new$year <- 2012
mali2012.new$HV024 <- ifelse(mali2012.new$HV024 == 9, 6, mali2012.new$HV024)
mali2012.new$HV005 <- as.numeric(mali2012.new$HV005)
mali2012.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = mali2012.new, FUN = sum)
colnames(mali2012.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

mali2012.cell.prop <- mali2012.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

mali2012.int.new <- mali2012 %>% select(HHID, HV005, HV024, HV244, SH110O)
mali2012.int.new$country <- "mali"
table(mali2012$HV007)
mali2012.int.new$year <- 2012
mali2012.int.new$HV024 <- ifelse(mali2012.int.new$HV024 == 9, 6, mali2012.int.new$HV024)
mali2012.int.new$HV005 <- as.numeric(mali2012.int.new$HV005)
mali2012.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH110O + country + year, data = mali2012.int.new, FUN = sum)
colnames(mali2012.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

mali2012.int.prop <- mali2012.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

nigeria2015 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/NGHR71SV/NGHR71FL.SAV")
nigeria2015.new <- nigeria2015 %>% select(HHID, HV005, HV024, HV244, HV243A)
nigeria2015.new$country <- "nigeria"
table(nigeria2015$HV007)
nigeria2015.new$year <- 2015
nigeria2015.new$HV005 <- as.numeric(nigeria2015.new$HV005)
nigeria2015.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nigeria2015.new, FUN = sum)
colnames(nigeria2015.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

nigeria2015.cell.prop <- nigeria2015.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

nigeria2013 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/NGHR6ASV/NGHR6AFL.SAV")
nigeria2013.new <- nigeria2013 %>% select(HHID, HV005, HV024, HV244, HV243A)
nigeria2013.new$country <- "nigeria"
table(nigeria2013$HV007)
nigeria2013.new$year <- 2013
nigeria2013.new$HV005 <- as.numeric(nigeria2013.new$HV005)
nigeria2013.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nigeria2013.new, FUN = sum)
colnames(nigeria2013.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

nigeria2013.cell.prop <- nigeria2013.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

nigeria2008 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/NGHR53SV/NGHR53FL.SAV")
nigeria2008.new <- nigeria2008 %>% select(HHID, HV005, HV024, HV244, HV243A)
nigeria2008.new$country <- "nigeria"
table(nigeria2008$HV007)
nigeria2008.new$year <- 2008
nigeria2008.new$HV005 <- as.numeric(nigeria2008.new$HV005)
nigeria2008.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nigeria2008.new, FUN = sum)
colnames(nigeria2008.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

nigeria2008.cell.prop <- nigeria2008.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

nepal2011 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/NPHR60SV/NPHR60FL.SAV")
nepal2011.new <- nepal2011 %>% select(HHID, HV005, HV024, HV244, HV243A)
nepal2011.new$country <- "nepal"
table(nepal2011$HV007)
nepal2011.new$year <- 2011
nepal2011.new$HV005 <- as.numeric(nepal2011.new$HV005)
nepal2011.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nepal2011.new, FUN = sum)
colnames(nepal2011.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

nepal2011.cell.prop <- nepal2011.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

nepal2006 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/NPHR51SV/NPHR51FL.SAV")
nepal2006.new <- nepal2006 %>% select(HHID, HV005, HV024, HV244, HV243A)
nepal2006.new$country <- "nepal"
table(nepal2006$HV007)
nepal2006.new$year <- 2006
nepal2006.new$HV005 <- as.numeric(nepal2006.new$HV005)
nepal2006.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nepal2006.new, FUN = sum)
colnames(nepal2006.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

nepal2006.cell.prop <- nepal2006.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2011 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/PEHR6ASV/PEHR6AFL.SAV")
peru2011.new <- peru2011 %>% select(HHID, HV005, HV024, HV244, HV243A)
peru2011.new$country <- "peru"
table(peru2011$HV007)
peru2011.new$year <- 2011
peru2011.new$HV005 <- as.numeric(peru2011.new$HV005)
peru2011.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = peru2011.new, FUN = sum)
colnames(peru2011.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

peru2011.cell.prop <- peru2011.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2011.int.new <- peru2011 %>% select(HHID, HV005, HV024, HV244, SH61Q)
peru2011.int.new$country <- "peru"
table(peru2011$HV007)
peru2011.int.new$year <- 2011
peru2011.int.new$HV005 <- as.numeric(peru2011.int.new$HV005)
peru2011.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH61Q + country + year, data = peru2011.int.new, FUN = sum)
colnames(peru2011.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

peru2011.int.prop <- peru2011.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2010 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/PEHR61SV/PEHR61FL.SAV")
peru2010.new <- peru2010 %>% select(HHID, HV005, HV024, HV244, HV243A)
peru2010.new$country <- "peru"
table(peru2010$HV007)
peru2010.new$year <- 2010
peru2010.new$HV005 <- as.numeric(peru2010.new$HV005)
peru2010.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = peru2010.new, FUN = sum)
colnames(peru2010.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

peru2010.cell.prop <- peru2010.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2010.int.new <- peru2010 %>% select(HHID, HV005, HV024, HV244, SH61Q)
peru2010.int.new$country <- "peru"
table(peru2010$HV007)
peru2010.int.new$year <- 2010
peru2010.int.new$HV005 <- as.numeric(peru2010.int.new$HV005)
peru2010.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH61Q + country + year, data = peru2010.int.new, FUN = sum)
colnames(peru2010.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

peru2010.int.prop <- peru2010.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2009 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/PEHR5ISV/PEHR5IFL.SAV")
peru2009.new <- peru2009 %>% select(HHID, HV005, HV024, HV244, HV243A)
peru2009.new$country <- "peru"
table(peru2009$HV007)
peru2009.new$year <- 2009
peru2009.new$HV005 <- as.numeric(peru2009.new$HV005)
peru2009.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = peru2009.new, FUN = sum)
colnames(peru2009.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

peru2009.cell.prop <- peru2009.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2009.int.new <- peru2009 %>% select(HHID, HV005, HV024, HV244, SH51Q)
peru2009.int.new$country <- "peru"
table(peru2009$HV007)
peru2009.int.new$year <- 2009
peru2009.int.new$HV005 <- as.numeric(peru2009.int.new$HV005)
peru2009.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH51Q + country + year, data = peru2009.int.new, FUN = sum)
colnames(peru2009.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

peru2009.int.prop <- peru2009.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru.early <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/PEHR5ASV/PEHR51FL.SAV")
table(peru.early$HV007)

peru2008 <- peru.early %>% filter(HV007 == 2008 | HV007 == 2007)
peru2006 <- peru.early %>% filter(HV007 == 2006 | HV007 == 2005 | HV007 == 2004)

peru2008.new <- peru2008 %>% select(HHID, HV005, HV024, HV244, HV243A)
peru2008.new$country <- "peru"
table(peru2008$HV007)
peru2008.new$year <- 2008
peru2008.new$HV005 <- as.numeric(peru2008.new$HV005)
peru2008.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = peru2008.new, FUN = sum)
colnames(peru2008.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

peru2008.cell.prop <- peru2008.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2008.int.new <- peru2008 %>% select(HHID, HV005, HV024, HV244, SH25H)
peru2008.int.new$country <- "peru"
table(peru2008$HV007)
peru2008.int.new$year <- 2008
peru2008.int.new$HV005 <- as.numeric(peru2008.int.new$HV005)
peru2008.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH25H + country + year, data = peru2008.int.new, FUN = sum)
colnames(peru2008.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

peru2008.int.prop <- peru2008.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2006.new <- peru2006 %>% select(HHID, HV005, HV024, HV244, HV243A)
peru2006.new$country <- "peru"
table(peru2006$HV007)
peru2006.new$year <- 2006
peru2006.new$HV005 <- as.numeric(peru2006.new$HV005)
peru2006.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = peru2006.new, FUN = sum)
colnames(peru2006.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

peru2006.cell.prop <- peru2006.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

peru2006.int.new <- peru2006 %>% select(HHID, HV005, HV024, HV244, SH25H)
peru2006.int.new$country <- "peru"
table(peru2006$HV007)
peru2006.int.new$year <- 2006
peru2006.int.new$HV005 <- as.numeric(peru2006.int.new$HV005)
peru2006.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH25H + country + year, data = peru2006.int.new, FUN = sum)
colnames(peru2006.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

peru2006.int.prop <- peru2006.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

rwanda2015 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/RWHR70SV/RWHR70FL.SAV")
rwanda2015.new <- rwanda2015 %>% select(HHID, HV005, HV024, HV244, HV243A)
rwanda2015.new$country <- "rwanda"
table(rwanda2015$HV007)
rwanda2015.new$year <- 2015
rwanda2015.new$HV005 <- as.numeric(rwanda2015.new$HV005)
rwanda2015.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = rwanda2015.new, FUN = sum)
colnames(rwanda2015.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

rwanda2015.cell.prop <- rwanda2015.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

rwanda2013 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/RWHR6QSV/RWHR6QFL.SAV")
rwanda2013.new <- rwanda2013 %>% select(HHID, HV005, HV024, HV244, HV243A)
rwanda2013.new$country <- "rwanda"
table(rwanda2013$HV007)
rwanda2013.new$year <- 2013
rwanda2013.new$HV005 <- as.numeric(rwanda2013.new$HV005)
rwanda2013.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = rwanda2013.new, FUN = sum)
colnames(rwanda2013.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

rwanda2013.cell.prop <- rwanda2013.ag %>% group_by(ag.land, region) %>% mutate(prop = prop.table(weight))

rwanda2010 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/RWHR61SV/RWHR61FL.SAV")
rwanda2010.new <- rwanda2010 %>% select(HHID, HV005, HV024, HV244, HV243A)
rwanda2010.new$country <- "rwanda"
table(rwanda2010$HV007)
rwanda2010.new$year <- 2010
rwanda2010.new$HV005 <- as.numeric(rwanda2010.new$HV005)
rwanda2010.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = rwanda2010.new, FUN = sum)
colnames(rwanda2010.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

rwanda2010.cell.prop <- rwanda2010.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2015 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SNHR7HSV/SNHR7HFL.SAV")
senegal2015.new <- senegal2015 %>% select(HHID, HV005, HV024, HV244, HV243A)
senegal2015.new$country <- "senegal"
table(senegal2015$HV007)
senegal2015.new$year <- 2015
senegal2015.new$HV005 <- as.numeric(senegal2015.new$HV005)
senegal2015.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = senegal2015.new, FUN = sum)
colnames(senegal2015.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

senegal2015.cell.prop <- senegal2015.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2015.int.new <- senegal2015 %>% select(HHID, HV005, HV024, HV244, SH110O)
senegal2015.int.new$country <- "senegal"
table(senegal2015$HV007)
senegal2015.int.new$year <- 2015
senegal2015.int.new$HV005 <- as.numeric(senegal2015.int.new$HV005)
senegal2015.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH110O + country + year, data = senegal2015.int.new, FUN = sum)
colnames(senegal2015.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

senegal2015.int.prop <- senegal2015.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2014 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SNHR70SV/SNHR70SV/SNHR70FL.SAV")
senegal2014.new <- senegal2014 %>% select(HHID, HV005, HV024, HV244, HV243A)
senegal2014.new$country <- "senegal"
table(senegal2014$HV007)
senegal2014.new$year <- 2014
senegal2014.new$HV005 <- as.numeric(senegal2014.new$HV005)
senegal2014.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = senegal2014.new, FUN = sum)
colnames(senegal2014.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

senegal2014.cell.prop <- senegal2014.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2014.int.new <- senegal2014 %>% select(HHID, HV005, HV024, HV244, SH110O)
senegal2014.int.new$country <- "senegal"
table(senegal2014$HV007)
senegal2014.int.new$year <- 2014
senegal2014.int.new$HV005 <- as.numeric(senegal2014.int.new$HV005)
senegal2014.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH110O + country + year, data = senegal2014.int.new, FUN = sum)
colnames(senegal2014.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

senegal2014.int.prop <- senegal2014.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2013 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SNHR6DSV/SNHR6DFL.SAV")
senegal2013.new <- senegal2013 %>% select(HHID, HV005, HV024, HV244, HV243A)
senegal2013.new$country <- "senegal"
table(senegal2013$HV007)
senegal2013.new$year <- 2013
senegal2013.new$HV005 <- as.numeric(senegal2013.new$HV005)
senegal2013.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = senegal2013.new, FUN = sum)
colnames(senegal2013.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

senegal2013.cell.prop <- senegal2013.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2013.int.new <- senegal2013 %>% select(HHID, HV005, HV024, HV244, SH110O)
senegal2013.int.new$country <- "senegal"
table(senegal2013$HV007)
senegal2013.int.new$year <- 2013
senegal2013.int.new$HV005 <- as.numeric(senegal2013.int.new$HV005)
senegal2013.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH110O + country + year, data = senegal2013.int.new, FUN = sum)
colnames(senegal2013.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

senegal2013.int.prop <- senegal2013.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2011 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SNHR61SV/SNHR61FL.SAV")
senegal2011.new <- senegal2011 %>% select(HHID, HV005, HV024, HV244, HV243A)
senegal2011.new$country <- "senegal"
table(senegal2011$HV007)
senegal2011.new$year <- 2011
senegal2011.new$HV005 <- as.numeric(senegal2011.new$HV005)
senegal2011.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = senegal2011.new, FUN = sum)
colnames(senegal2011.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

senegal2011.cell.prop <- senegal2011.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

senegal2011.int.new <- senegal2011 %>% select(HHID, HV005, HV024, HV244, SH110O)
senegal2011.int.new$country <- "senegal"
table(senegal2011$HV007)
senegal2011.int.new$year <- 2011
senegal2011.int.new$HV005 <- as.numeric(senegal2011.int.new$HV005)
senegal2011.int.ag <- aggregate(HV005 ~ HV024 + HV244 + SH110O + country + year, data = senegal2011.int.new, FUN = sum)
colnames(senegal2011.int.ag) <- c("region", "ag.land", "internet", "country", "year", "weight")

senegal2011.int.prop <- senegal2011.int.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

sierraleone2016 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SLHR71SV/SLHR71FL.SAV")
sierraleone2016.new <- sierraleone2016 %>% select(HHID, HV005, HV024, HV244, HV243A)
sierraleone2016.new$country <- "sierraleone"
table(sierraleone2016$HV007)
sierraleone2016.new$year <- 2016
sierraleone2016.new$HV005 <- as.numeric(sierraleone2016.new$HV005)
sierraleone2016.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = sierraleone2016.new, FUN = sum)
colnames(sierraleone2016.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

sierraleone2016.cell.prop <- sierraleone2016.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

sierraleone2013 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SLHR61SV/SLHR61FL.SAV")
sierraleone2013.new <- sierraleone2013 %>% select(HHID, HV005, HV024, HV244, HV243A)
sierraleone2013.new$country <- "sierraleone"
table(sierraleone2013$HV007)
sierraleone2013.new$year <- 2013
sierraleone2013.new$HV005 <- as.numeric(sierraleone2013.new$HV005)
sierraleone2013.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = sierraleone2013.new, FUN = sum)
colnames(sierraleone2013.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

sierraleone2013.cell.prop <- sierraleone2013.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

sierraleone2008 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/SLHR51SV/SLHR51FL.SAV")
sierraleone2008.new <- sierraleone2008 %>% select(HHID, HV005, HV024, HV244, HV243A)
sierraleone2008.new$country <- "sierraleone"
table(sierraleone2008$HV007)
sierraleone2008.new$year <- 2008
sierraleone2008.new$HV005 <- as.numeric(sierraleone2008.new$HV005)
sierraleone2008.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = sierraleone2008.new, FUN = sum)
colnames(sierraleone2008.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

sierraleone2008.cell.prop <- sierraleone2008.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

tanzania2012 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/TZHR6ASV/TZHR6AFL.SAV")
tanzania2012.new <- tanzania2012 %>% select(HHID, HV005, HV024, HV244, HV243A)
tanzania2012.new$country <- "tanzania"
table(tanzania2012$HV007)
tanzania2012.new$year <- 2012
tanzania2012.new$HV005 <- as.numeric(tanzania2012.new$HV005)
tanzania2012.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = tanzania2012.new, FUN = sum)
colnames(tanzania2012.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

tanzania2012.cell.prop <- tanzania2012.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

tanzania2010 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/TZHR63SV/TZHR63FL.SAV")
tanzania2010.new <- tanzania2010 %>% select(HHID, HV005, HV024, HV244, HV243A)
tanzania2010.new$country <- "tanzania"
table(tanzania2010$HV007)
tanzania2010.new$year <- 2010
tanzania2010.new$HV005 <- as.numeric(tanzania2010.new$HV005)
tanzania2010.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = tanzania2010.new, FUN = sum)
colnames(tanzania2010.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")
tanzania2010.ag$ag.land <- ifelse(tanzania2010.ag$ag.land == 1 | tanzania2010.ag$ag.land == 0, 0, tanzania2010.ag$ag.land)

tanzania2010.cell.prop <- tanzania2010.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

tanzania2007 <- read_sav("survey data/DHSdata/country files/panel datasets/sav files/TZHR51SV/TZHR51FL.SAV")
tanzania2007.new <- tanzania2007 %>% select(HHID, HV005, HV024, HV244, HV243A)
tanzania2007.new$country <- "tanzania"
table(tanzania2007$HV007)
tanzania2007.new$year <- 2007
tanzania2007.new$HV005 <- as.numeric(tanzania2007.new$HV005)
tanzania2007.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = tanzania2007.new, FUN = sum)
colnames(tanzania2007.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

tanzania2007.cell.prop <- tanzania2007.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

haitinames <- list.files(path = "survey data/DHSdata/new haiti panel data", pattern = "*.SAV", full.names = T)
dhs <- lapply(haitinames, import)
lapply(dhs, parsedhs)

haiti2006 <- read.csv("HT5.csv")
haiti2012 <- read.csv("HT6.csv")
haiti2017 <- read.csv("HT7.csv")

haiti2006.new <- haiti2006 %>% select(HHID, HV005, HV024, HV244, HV243A)
haiti2006.new$country <- "haiti"
table(haiti2006$HV007)
haiti2006.new$year <- 2006
haiti2006.new$HV005 <- as.numeric(haiti2006.new$HV005)
haiti2006.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = haiti2006.new, FUN = sum)
colnames(haiti2006.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

haiti2006.cell.prop <- haiti2006.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

haiti2012.new <- haiti2012 %>% select(HHID, HV005, HV024, HV244, HV243A)
haiti2012.new$country <- "haiti"
table(haiti2012$HV007)
haiti2012.new$year <- 2012
haiti2012.new$HV005 <- as.numeric(haiti2012.new$HV005)
haiti2012.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = haiti2012.new, FUN = sum)
colnames(haiti2012.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

haiti2012.cell.prop <- haiti2012.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

haiti2017.new <- haiti2017 %>% select(HHID, HV005, HV024, HV244, HV243A)
haiti2017.new$country <- "haiti"
table(haiti2017$HV007)
haiti2017.new$year <- 2017
haiti2017.new$HV005 <- as.numeric(haiti2017.new$HV005)
haiti2017.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = haiti2017.new, FUN = sum)
colnames(haiti2017.ag) <- c("region", "ag.land", "mobile", "country", "year", "weight")

haiti2017.cell.prop <- haiti2017.ag %>% 
	group_by(ag.land, region) %>% 
	mutate(prop = prop.table(weight))

panel.cell <- rbind.data.frame(
  bangladesh2014.cell.prop, bangladesh2011.cell.prop, bangladesh2007.cell.prop,
  ghana2014.cell.prop, ghana2008.cell.prop, cambodia2010.cell.prop, cambodia2005.cell.prop, 
  india2010.cell.prop, india2005.cell.prop, madagascar2013.cell.prop, madagascar2011.cell.prop,
  madagascar2009.cell.prop, malawi2017.cell.prop, malawi2015.cell.prop, malawi2014.cell.prop,
  malawi2012.cell.prop, mali2015.cell.prop, mali2012.cell.prop, nigeria2015.cell.prop, 
  nigeria2013.cell.prop, nigeria2008.cell.prop, nepal2011.cell.prop, nepal2006.cell.prop, 
  peru2011.cell.prop, peru2010.cell.prop, peru2009.cell.prop, peru2008.cell.prop,
  peru2006.cell.prop, rwanda2015.cell.prop, rwanda2010.cell.prop, senegal2015.cell.prop,
  senegal2014.cell.prop, senegal2013.cell.prop, senegal2011.cell.prop, sierraleone2016.cell.prop,
  sierraleone2013.cell.prop, sierraleone2008.cell.prop, tanzania2012.cell.prop, tanzania2010.cell.prop,
  tanzania2007.cell.prop, haiti2006.cell.prop, haiti2017.cell.prop)

panel.cell$internet <- NA

panel.int <- rbind.data.frame(
  mali2012.int.prop, peru2011.int.prop, peru2010.int.prop, peru2009.int.prop, peru2008.int.prop,
  peru2006.int.prop, senegal2015.int.prop, senegal2014.int.prop, senegal2013.int.prop, 
  senegal2011.int.prop
)

panel.int$mobile <- NA

paneldata <- rbind.data.frame(panel.cell, panel.int)

# mutate weights by scaling factors for DHS data
paneldata <- paneldata %>% mutate(weight = weight/1000000)

write.csv(paneldata, paste(path_out,"data/Mehrabietal2020_PanelDataset.csv",sep = ''), row.names = F)
