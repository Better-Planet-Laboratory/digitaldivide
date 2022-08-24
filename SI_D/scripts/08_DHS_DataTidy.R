### NO INTERNET ###

albania$country <- "albania"
albania$year <- 2009
albania.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = albania, FUN = sum)
albania.ag <- albania.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

# Azerbaijan - 2 regions not in survey
azerbaijan$country <- "azerbaijan"
azerbaijan$year <- 2006
azerbaijan.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = azerbaijan, FUN = sum)
azerbaijan.ag <- azerbaijan.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(bangladesh$HV007)
bangladesh$country <- "bangladesh"
bangladesh$year <- 2014
bangladesh$HV005 <- as.numeric(bangladesh$HV005)
bangladesh.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = bangladesh, FUN = sum)
bangladesh.ag <- bangladesh.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(burundi$HV007)
burundi$country <- "burundi"
burundi$year <- 2017
burundi.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = burundi, FUN = sum)
burundi.ag <- burundi.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(cambodia$HV007)
cambodia$country <- "cambodia"
cambodia$year <- 2014
cambodia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = cambodia, FUN = sum)
cambodia.ag <- cambodia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(chad$HV007)
chad$country <- "chad"
chad$year <- 2015
chad.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = chad, FUN = sum)
chad.ag <- chad.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(comoros$HV007)
comoros$country <- "comoros"
comoros$year <- 2012
comoros.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = comoros, FUN = sum)
comoros.ag <- comoros.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(congo$HV007)
congo$country <- "congo"
congo$year <- 2011
congo$HV005 <- as.numeric(congo$HV005)
congo.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = congo, FUN = sum)
congo.ag <- congo.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(drc$HV007)
drc$country <- "drc"
drc$year <- 2013
drc.ag <- aggregate(HV005 ~ SHNPROVIN + HV244 + HV243A + country + year, data = drc, FUN = sum)
drc.ag$HV024 <- drc.ag$SHNPROVIN
drc.ag$SHNPROVIN <- NULL
drc.ag <- drc.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(gabon$HV007)
gabon$country <- "gabon"
gabon$year <- 2012
gabon$HV005 <- as.numeric(gabon$HV005)
gabon.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = gabon, FUN = sum)
gabon.ag <- gabon.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(ghana$HV007)
ghana$country <- "ghana"
ghana$year <- 2016
ghana.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = ghana, FUN = sum)
ghana.ag <- ghana.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(guinea$HV007)
guinea$country <- "guinea"
guinea$year <- 2012
guinea.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = guinea, FUN = sum)
guinea.ag <- guinea.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(guyana$HV007)
guyana$country <- "guyana"
guyana$year <- 2009
guyana.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = guyana, FUN = sum)
guyana.ag <- guyana.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

# Honduras - 2 regions not in survey
table(honduras$HV007)
honduras$country <- "honduras"
honduras$year <- 2012
honduras$HV005 <- as.numeric(honduras$HV005)
honduras.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = honduras, FUN = sum)
honduras.ag <- honduras.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(indonesia$HV007)
indonesia$country <- "indonesia"
indonesia$year <- 2012
indonesia$HV005 <- as.numeric(indonesia$HV005)
indonesia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = indonesia, FUN = sum)
indonesia.ag <- indonesia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(madagascar$HV007)
madagascar$country <- "madagascar"
madagascar$year <- 2016
madagascar$HV005 <- as.numeric(madagascar$HV005)
madagascar.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = madagascar, FUN = sum)
madagascar.ag <- madagascar.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(myanmar$HV007)
myanmar$country <- "myanmar"
myanmar$year <- 2016
myanmar$HV005 <- as.numeric(myanmar$HV005)
myanmar.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = myanmar, FUN = sum)
myanmar.ag <- myanmar.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(nepal$HV007)
nepal$country <- "nepal"
nepal$year <- 2016
nepal$HV005 <- as.numeric(nepal$HV005)
nepal.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = nepal, FUN = sum)
nepal.ag <- nepal.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(timorleste$HV007)
timorleste$country <- "timorleste"
timorleste$year <- 2016
timorleste$HV005 <- as.numeric(timorleste$HV005)
timorleste.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = timorleste, FUN = sum)
timorleste.ag <- timorleste.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(ukraine$HV007)
ukraine$country <- "ukraine"
ukraine$year <- 2007
ukraine$HV005 <- as.numeric(ukraine$HV005)
ukraine.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = ukraine, FUN = sum)
ukraine.ag <- ukraine.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(yemen$HV007)
yemen$country <- "yemen"
yemen$year <- 2013
yemen$HV005 <- as.numeric(yemen$HV005)
yemen.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = yemen, FUN = sum)
yemen.ag <- yemen.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(zimbabwe$HV007)
zimbabwe$country <- "zimbabwe"
zimbabwe$year <- 2015
zimbabwe$HV005 <- as.numeric(zimbabwe$HV005)
zimbabwe.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = zimbabwe, FUN = sum)
zimbabwe.ag <- zimbabwe.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

### INTERNET ###

table(angola$HV007)
angola$country <- "angola"
angola$year <- 2016
angola$HV005 <- as.numeric(angola$HV005)
angola.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH121G + country + year, data = angola, FUN = sum)
angola.ag <- angola.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(armenia$HV007)
armenia$country <- "armenia"
armenia$year <- 2016
armenia$HV005 <- as.numeric(armenia$HV005)
armenia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH121U + country + year, data = armenia, FUN = sum)
armenia.ag <- armenia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(benin$HV007)
benin$country <- "benin"
benin$year <- 2012
benin$HV005 <- as.numeric(benin$HV005)
benin.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110M + country + year, data = benin, FUN = sum)
benin.ag <- benin.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(cameroon$HV007)
cameroon$country <- "cameroon"
cameroon$year <- 2011
cameroon$HV005 <- as.numeric(cameroon$HV005)
cameroon.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH111O + country + year, data = cameroon, FUN = sum)
cameroon.ag <- cameroon.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(cotedivoire$HV007)
cotedivoire$country <- "cotedivoire"
cotedivoire$year <- 2012
cotedivoire$HV005 <- as.numeric(cotedivoire$HV005)
cotedivoire.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110O + country + year, data = cotedivoire, FUN = sum)
cotedivoire.ag <- cotedivoire.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

# DR - no cell data
table(dominicanrepublic$HV007)
dominicanrepublic$country <- "dominicanrepublic"
dominicanrepublic$year <- 2013
dominicanrepublic$HV005 <- as.numeric(dominicanrepublic$HV005)
dominicanrepublic.ag <- aggregate(HV005 ~ HV024 + HV244 + SH51N + country + year, data = dominicanrepublic, FUN = sum)
dominicanrepublic.ag$mobile <- NA
dominicanrepublic.ag <- dominicanrepublic.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(gambia$HV007)
gambia$country <- "gambia"
gambia$year <- 2013
gambia$HV005 <- as.numeric(gambia$HV005)
gambia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110P + country + year, data = gambia, FUN = sum)
gambia.ag <- gambia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(guatemala$HV007)
guatemala$country <- "guatemala"
guatemala$year <- 2015
guatemala$HV005 <- as.numeric(guatemala$HV005)
guatemala.ag <- aggregate(HV005 ~ HV023 + HV244 + HV243A + SH109L + country + year, data = guatemala, FUN = sum)
guatemala.ag <- guatemala.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(haiti$HV007)
haiti$country <- "haiti"
haiti$year <- 2012
haiti$HV005 <- as.numeric(haiti$HV005)
haiti.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH109H + country + year, data = haiti, FUN = sum)
haiti.ag <- haiti.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(india$HV007)
india$country <- "india"
india$year <- 2015
india$HV005 <- as.numeric(india$HV005)
india.ag <- aggregate(HV005 ~ SHDISTRI + HV244 + HV243A + SH37N + country + year, data = india, FUN = sum)
india.ag <- india.ag %>% 
	group_by(HV244, SHDISTRI) %>% 
	mutate(prop = prop.table(weight))

table(kyrgyzrepublic$HV007)
kyrgyzrepublic$country <- "kyrgyzrepublic"
kyrgyzrepublic$year <- 2012
kyrgyzrepublic$HV005 <- as.numeric(kyrgyzrepublic$HV005)
kyrgyzrepublic.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110Z + country + year, data = kyrgyzrepublic, FUN = sum)
kyrgyzrepublic.ag <- kyrgyzrepublic.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(lesotho$HV007)
lesotho$country <- "lesotho"
lesotho$year <- 2014
lesotho$HV005 <- as.numeric(lesotho$HV005)
lesotho.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110K + country + year, data = lesotho, FUN = sum)
lesotho.ag <- lesotho.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(namibia$HV007)
namibia$country <- "namibia"
namibia$year <- 2013
namibia$HV005 <- as.numeric(namibia$HV005)
namibia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110J + country + year, data = namibia, FUN = sum)
namibia.ag <- namibia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(pakistan$HV007)
pakistan$country <- "pakistan"
pakistan$year <- 2012
pakistan$HV005 <- as.numeric(pakistan$HV005)
pakistan.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110R + country + year, data = pakistan, FUN = sum)
pakistan.ag <- pakistan.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(peru$HV007)
peru$country <- "peru"
peru$year <- 2012
peru$HV005 <- as.numeric(peru$HV005)
peru.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH61Q + country + year, data = peru, FUN = sum)
peru.ag <- peru.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(saotome$HV007)
saotome$country <- "saotome"
saotome$year <- 2008
saotome$HV005 <- as.numeric(saotome$HV005)
saotome.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH111H + country + year, data = saotome, FUN = sum)
saotome.ag <- saotome.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(senegal$HV007)
senegal$country <- "senegal"
senegal$year <- 2016
senegal$HV005 <- as.numeric(senegal$HV005)
senegal.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110O + country + year, data = senegal, FUN = sum)
senegal.ag <- senegal.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(tajikistan$HV007)
tajikistan$country <- "tajikistan"
tajikistan$year <- 2012
tajikistan$HV005 <- as.numeric(tajikistan$HV005)
tajikistan.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110BB + country + year, data = tajikistan, FUN = sum)
tajikistan.ag <- tajikistan.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(togo$HV007)
togo$country <- "togo"
togo$year <- 2014
togo$HV005 <- as.numeric(togo$HV005)
togo.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110E + country + year, data = togo, FUN = sum)
togo.ag <- togo.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(burkinafaso$HV007)
burkinafaso$country <- "burkinafaso"
burkinafaso$year <- 2010
burkinafaso$HV005 <- as.numeric(burkinafaso$HV005)
burkinafaso.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110O + country + year, data = burkinafaso, FUN = sum)
burkinafaso.ag <- burkinafaso.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(kenya$HV007)
kenya$country <- "kenya"
kenya$year <- 2015
kenya$HV005 <- as.numeric(kenya$HV005)
kenya.ag <- aggregate(HV005 ~ SHCOUNTY + HV244 + HV243A + country + year, data = kenya, FUN = sum)
kenya.ag <- kenya.ag %>% 
	group_by(HV244, SHCOUNTY) %>% 
	mutate(prop = prop.table(weight))

table(liberia$HV007)
liberia$country <- "liberia"
liberia$year <- 2016
liberia$HV005 <- as.numeric(liberia$HV005)
liberia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = liberia, FUN = sum)
liberia.ag <- liberia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(malawi$HV007)
malawi$country <- "malawi"
malawi$year <- 2015
malawi$HV005 <- as.numeric(malawi$HV005)
malawi.ag <- aggregate(HV005 ~ SHDIST + HV244 + HV243A + country + year, data = malawi, FUN = sum)
malawi.ag <- malawi.ag %>% 
	group_by(HV244, SHDIST) %>% 
	mutate(prop = prop.table(weight))

table(mali$HV007)
mali$country <- "mali"
mali$year <- 2013
mali$HV005 <- as.numeric(mali$HV005)
mali.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110O + country + year, data = mali, FUN = sum)
mali.ag <- mali.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(mozambique$HV007)
mozambique$country <- "mozambique"
mozambique$year <- 2015
mozambique$HV005 <- as.numeric(mozambique$HV005)
mozambique.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = mozambique, FUN = sum)
mozambique.ag <- mozambique.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(niger$HV007)
niger$country <- "niger"
niger$year <- 2012
niger$HV005 <- as.numeric(niger$HV005)
niger.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = niger, FUN = sum)
niger.ag <- niger.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(nigeria$HV007)
nigeria$country <- "nigeria"
nigeria$year <- 2015
nigeria$HV005 <- as.numeric(nigeria$HV005)
nigeria.ag <- aggregate(HV005 ~ SHSTATE + HV244 + HV243A + country + year, data = nigeria, FUN = sum)
nigeria.ag <- nigeria.ag %>% 
	group_by(HV244, SHSTATE) %>% 
	mutate(prop = prop.table(weight))

table(rwanda$HV007)
rwanda$country <- "rwanda"
rwanda$year <- 2015
rwanda$HV005 <- as.numeric(rwanda$HV005)
rwanda.ag <- aggregate(HV005 ~ SHDISTRICT + HV244 + HV243A + country + year, data = rwanda, FUN = sum)
rwanda.ag <- rwanda.ag %>% 
	group_by(HV244, SHDISTRICT) %>% 
	mutate(prop = prop.table(weight))

table(sierraleone$HV007)
sierraleone$country <- "sierraleone"
sierraleone$year <- 2016
sierraleone$HV005 <- as.numeric(sierraleone$HV005)
sierraleone.ag <- aggregate(HV005 ~ SHDIST + HV244 + HV243A + country + year, data = sierraleone, FUN = sum)
sierraleone.ag <- sierraleone.ag %>% 
	group_by(HV244, SHDIST) %>% 
	mutate(prop = prop.table(weight))

table(tanzania$HV007)
tanzania$country <- "tanzania"
tanzania$year <- 2015
tanzania$HV005 <- as.numeric(tanzania$HV005)
tanzania.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = tanzania, FUN = sum)
tanzania.ag <- tanzania.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(uganda$HV007)
uganda$country <- "uganda"
uganda$year <- 2016
uganda$HV005 <- as.numeric(uganda$HV005)
uganda.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + country + year, data = uganda, FUN = sum)
uganda.ag <- uganda.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

table(zambia$HV007)
zambia$country <- "zambia"
zambia$year <- 2014
zambia$HV005 <- as.numeric(zambia$HV005)
zambia.ag <- aggregate(HV005 ~ HV024 + HV244 + HV243A + SH110V + country + year, data = zambia, FUN = sum)
zambia.ag <- zambia.ag %>% 
	group_by(HV244, HV024) %>% 
	mutate(prop = prop.table(weight))

# concatenate mobile datasets
dhs.cell <- rbind.data.frame(albania.ag, azerbaijan.ag, bangladesh.ag, 
  burundi.ag, cambodia.ag, chad.ag, comoros.ag, congo.ag, drc.ag, gabon.ag, ghana.ag, 
  guinea.ag, guyana.ag, honduras.ag, indonesia.ag, madagascar.ag, myanmar.ag, nepal.ag,
	timorleste.ag, ukraine.ag, yemen.ag, zimbabwe.ag, kenya.ag, liberia.ag, malawi.ag, 
  mozambique.ag, niger.ag, nigeria.ag, rwanda.ag, sierra.leone.ag, tanzania.ag, uganda.ag,
  angola.ag, armenia.ag, benin.ag, cameroon.ag, cotedivoire.ag, gambia.ag, guatemala.ag, 
  haiti.ag, india.ag, kyrgyzrepublic.ag, lesotho.ag, namibia.ag, pakistan.ag, peru.ag, 
  saotome.ag, senegal.ag, tajikistan.ag, togo.ag, burkinafaso.ag, mali.ag, zambia.ag)

# set column names
colnames(dhs.cell) <- c("region", "ag.land", "mobile", "country", "year", "weight")

# concatenate internet datasets
dhs.int <- rbind.data.frame(angola.ag, armenia.ag, benin.ag, cameroon.ag, cotedivoire.ag, 
  dominicanrepublic.ag, gambia.ag, guatemala.ag, haiti.ag, india.ag, kyrgyzrepublic.ag, lesotho.ag, 
  namibia.ag, pakistan.ag, peru.ag, saotome.ag, senegal.ag, tajikistan.ag, togo.ag, burkinafaso.ag, 
  mali.ag, zambia.ag)

# set column names
colnames(dhs.int) <- c("region", "ag.land", "mobile", "country", "year", "weight")
