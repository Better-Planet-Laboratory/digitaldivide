# import raw DHS datasets that contain an internet variable
armenia <- import("data/DHS/internet/AMHR71FL.SAV")

# select potential variables of interest
armenia.new <- armenia %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH121U)

angola <- import("data/DHS/internet/AOHR71FL.SAV")
angola.new <- angola %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH121G)

benin <- import("data/DHS/internet/BJHR61FL.SAV")
benin.new <- benin %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110M)

cotedivoire <- import("data/DHS/internet/CIHR62FL.SAV")
cotedivoire.new <- cotedivoire %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110O)

cameroon <- import("data/DHS/internet/CMHR61FL.SAV")
cameroon.new <- cameroon %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH111O)

dr <- import("data/DHS/internet/DRHR61FL.SAV")
dr.new <- dr %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH51N)

gambia <- import("data/DHS/internet/GMHR60FL.SAV")
gambia.new <- gambia %>% select(HHID, HV000, HV001, HV004, 
		HV005, HV007, HV024, HV244, HV243A, HV270, HV271, SH110P)

guatemala <- import("data/DHS/internet/GUHR71FL.SAV")
guatemala.new <- guatemala %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV023, HV024, HV244, HV243A, HV270, HV271, SH109L)

haiti <- import("data/DHS/internet/HTHR61FL.SAV")
haiti.new <- haiti %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH109H)

india <- import("data/DHS/internet/IAHR72FL.SAV")
india.new <- india %>% select(HHID, HV000, HV001, HV004, HV005,
		HV007, HV024, HV244, HV243A, HV270, HV271, SH37N)

kyrgyzrepublic <- import("data/DHS/internet/KYHR61FL.SAV")
kyrgyz.new <- kyrgyzrepublic %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110Z)

lesotho <- import("data/DHS/internet/LSHR71FL.SAV")
lesotho.new <- lesotho %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110K)

namibia <- import("data/DHS/internet/NMHR61FL.SAV")
namibia.new <- namibia %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110J)

peru <- import("data/DHS/internet/PEHR6IFL.SAV")
peru.new <- peru %>% select(HHID, HV000, HV001, HV004, HV005, 
	HV007, HV024, HV244, HV243A, HV270, HV271, SH61Q)

pakistan <- import("data/DHS/internet/PKHR61FL.SAV")
pakistan.new <- pakistan %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110R)

senegal <- import("data/DHS/internet/SNHRG0FL.SAV") # combined 2015/2016 surveys
senegal.new <- senegal %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110O)

saotome <- import("data/DHS/internet/STHR50FL.SAV")
saotome.new <- saotome %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH111H)

togo <- import("data/DHS/internet/TGHR61FL.SAV")
togo.new <- togo %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110E)

tajikistan <- import("data/DHS/internet/TJHR61FL.SAV")
tajikistan.new <- tajikistan %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SH110BB)

drc <- import("data/DHS/internet/CDHR61FL.SAV")
drc.new <- drc %>% select(HHID, HV000, HV001, HV004, HV005, 
		HV007, HV024, HV244, HV243A, HV270, HV271, SHNPROVIN)

burkinafaso <- import("data/DHS/internet/BFHR62FL.SAV")
bf.new <- burkinafaso %>% select(HHID, HV000, HV001, HV004, HV005, 
  HV007, HV024, HV244, HV243A, HV270, HV271, SH110O)

kenya <- import("data/DHS/internet/KEHR7HFL.SAV")
kenya.new <- kenya %>% select(HHID, HV000, HV001, HV004, HV005, HV007, HV024, 
  HV244, HV243A, HV270, HV271, SHCOUNTY)

liberia <- import("data/DHS/internet/LBHR70FL.SAV")
liberia.new <- liberia %>% select(HHID, HV000, HV001, HV004, HV005, HV007, 
  HV024, HV244, HV243A, HV270, HV271)

mali <- import("data/DHS/internet/MLHR6HFL.SAV")
mali.new <- mali %>% select(HHID, HV000, HV001, HV004, HV005, HV007, 
  HV024, HV244, HV243A, HV270, HV271, SH110O)

malawi <- import("data/DHS/internet/MWHR7HFL.SAV")
malawi.new <- malawi %>% select(HHID, HV000, HV001, HV004, HV005, 
  HV007, HV024, HV244, HV243A, HV270, HV271, SHDIST)

mozambique <- import("data/DHS/internet/MZHR71FL.SAV")
mozambique.new <- mozambique %>% select(HHID, HV000, HV001, HV004, 
  HV005, HV007, HV024, HV244, HV243A, HV270, HV271)

nigeria <- import("data/DHS/internet/NGHR71FL.SAV")
nigeria.new <- nigeria %>% select(HHID, HV000, HV001, HV004, HV005, 
  HV007, HV024, HV244, HV243A, HV270, HV271, SHSTATE)

niger <- import("data/DHS/internet/NIHR61FL.SAV")
niger.new <- nigeria %>% select(HHID, HV000, HV001, HV004, HV005, 
  HV007, HV024, HV244, HV243A, HV270, HV271)

rwanda <- import("data/DHS/internet/RWHR70FL.SAV")
rwanda.new <- rwanda %>% select(HHID, HV000, HV001, HV004, HV005, 
  HV007, HV024, HV244, HV243A, HV270, HV271, SHDISTRICT)

sierraleone <- import("data/DHS/internet/SLHR71FL.SAV") 
sl.new <- sierraleone %>% select(HHID, HV000, HV001, HV004, 
  HV005, HV007, HV024, HV244, HV243A, HV270, HV271, SHDIST)

tanzania <- import("data/DHS/internet/TZHR7HFL.SAV") 
tanzania.new <- tanzania %>% select(HHID, HV000, HV001, 
  HV004, HV005, HV007, HV024, HV244, HV243A, HV270, HV271)

uganda <- import("data/DHS/internet/UGHR7HFL.SAV") 
uganda.new <- uganda %>% select(HHID, HV000, HV001, HV004, 
  HV005, HV007, HV024, HV244, HV243A, HV270, HV271)

zambia <- import("data/DHS/internet/ZMHR61FL.SAV") 
zambia.new <- zambia %>% select(HHID, HV000, HV001, HV004, 
  HV005, HV007, HV024, HV244, HV243A, HV270, HV271, SH110V)
