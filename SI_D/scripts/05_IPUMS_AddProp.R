### botswana 

# filter full dataset for country name
ipums.botswana <- ipumsfull %>% filter(countryname == "Botswana")

# internet responses - aggregate by summed weight
botswana.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.botswana, FUN = sum)

# mobile responses - aggregate by summed weight
botswana.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.botswana, FUN = sum)

# internet - calculate proportion of each category of responses
botswana.internet.prop <- botswana.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

# mobile - calculate proportion of each category of responses
botswana.mobile.prop <- botswana.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

# repeat for every country

### brazil 
ipums.brazil <- ipumsfull %>% filter(countryname == "Brazil")
brazil.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.brazil, FUN = sum)
brazil.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.brazil, FUN = sum)

brazil.internet.prop <- brazil.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

brazil.mobile.prop <- brazil.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### cambodia
ipums.cambodia <- ipumsfull %>% filter(countryname == "Cambodia")
cambodia.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.cambodia, FUN = sum)
cambodia.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.cambodia, FUN = sum)

cambodia.internet.prop <- cambodia.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

cambodia.mobile.prop <- cambodia.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### chile
ipums.chile <- ipumsfull %>% filter(countryname == "Chile")
chile.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.chile, FUN = sum)
chile.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.chile, FUN = sum)

chile.internet.prop <- chile.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

chile.mobile.prop <- chile.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### costa rica
ipums.costarica <- ipumsfull %>% filter(countryname == "Costa Rica")
costarica.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.costarica, FUN = sum)
costarica.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.costarica, FUN = sum)

costarica.internet.prop <- costarica.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

costarica.mobile.prop <- costarica.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### dominican republic
ipums.dominicanrepublic <- ipumsfull %>% filter(countryname == "Dominican Republic")
dominicanrepublic.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.dominicanrepublic, FUN = sum)
dominicanrepublic.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.dominicanrepublic, FUN = sum)

dominicanrepublic.internet.prop <- dominicanrepublic.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

dominicanrepublic.mobile.prop <- dominicanrepublic.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### ecuador 
ipums.ecuador <- ipumsfull %>% filter(countryname == "Ecuador")
ecuador.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.ecuador, FUN = sum)
ecuador.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.ecuador, FUN = sum)

ecuador.internet.prop <- ecuador.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

ecuador.mobile.prop <- ecuador.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### egypt
ipums.egypt <- ipumsfull %>% filter(countryname == "Egypt")
egypt.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.egypt, FUN = sum)
egypt.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.egypt, FUN = sum)

egypt.internet.prop <- egypt.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

egypt.mobile.prop <- egypt.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### el salvador
ipums.elsalvador <- ipumsfull %>% filter(countryname == "El Salvador")
elsalvador.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.elsalvador, FUN = sum)
elsalvador.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.elsalvador, FUN = sum)

elsalvador.internet.prop <- elsalvador.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

elsalvador.mobile.prop <- elsalvador.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### iran 
ipums.iran <- ipumsfull %>% filter(countryname == "Iran (Islamic Republic of)")
iran.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.iran, FUN = sum)

iran.internet.prop <- iran.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### jamaica
ipums.jamaica <- ipumsfull %>% filter(countryname == "Jamaica")
jamaica.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.jamaica, FUN = sum)
jamaica.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.jamaica, FUN = sum)

jamaica.internet.prop <- jamaica.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

jamaica.mobile.prop <- jamaica.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### jordan
ipums.jordan <- ipumsfull %>% filter(countryname == "Jordan")
jordan.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.jordan, FUN = sum)
jordan.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.jordan, FUN = sum)

jordan.internet.prop <- jordan.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

jordan.mobile.prop <- jordan.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### liberia
ipums.liberia <- ipumsfull %>% filter(countryname == "Liberia")
liberia.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.liberia, FUN = sum)

liberia.mobile.prop <- liberia.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### malaysia
ipums.malaysia <- ipumsfull %>% filter(countryname == "Malaysia")
malaysia.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.malaysia, FUN = sum)

malaysia.internet.prop <- malaysia.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### mexico 
ipums.mexico <- ipumsfull %>% filter(countryname == "Mexico")
mexico.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.mexico, FUN = sum)
mexico.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.mexico, FUN = sum)

mexico.internet.prop <- mexico.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

mexico.mobile.prop <- mexico.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### mozambique 
ipums.mozambique <- ipumsfull %>% filter(countryname == "Mozambique")
mozambique.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.mozambique, FUN = sum)

mozambique.mobile.prop <- mozambique.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### nicaragua
ipums.nicaragua <- ipumsfull %>% filter(countryname == "Nicaragua")
nicaragua.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.nicaragua, FUN = sum)
nicaragua.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.nicaragua, FUN = sum)

nicaragua.internet.prop <- nicaragua.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

nicaragua.mobile.prop <- nicaragua.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### nigeria
ipums.nigeria <- ipumsfull %>% filter(countryname == "Nigeria")
nigeria.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.nigeria, FUN = sum)
nigeria.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.nigeria, FUN = sum)

nigeria.internet.prop <- nigeria.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

nigeria.mobile.prop <- nigeria.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### palestine
ipums.palestine <- ipumsfull %>% filter(countryname == "Palestine, State of")
palestine.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.palestine, FUN = sum)
palestine.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.palestine, FUN = sum)

palestine.internet.prop <- palestine.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

palestine.mobile.prop <- palestine.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### panama
ipums.panama <- ipumsfull %>% filter(countryname == "Panama")
panama.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.panama, FUN = sum)
panama.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.panama, FUN = sum)

panama.internet.prop <- panama.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

panama.mobile.prop <- panama.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### paraguay 
ipums.paraguay <- ipumsfull %>% filter(countryname == "Paraguay")
paraguay.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.paraguay, FUN = sum)
paraguay.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.paraguay, FUN = sum)

paraguay.internet.prop <- paraguay.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

paraguay.mobile.prop <- paraguay.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### peru 
ipums.peru <- ipumsfull %>% filter(countryname == "Peru")
peru.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.peru, FUN = sum)
peru.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.peru, FUN = sum)

peru.internet.prop <- peru.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

peru.mobile.prop <- peru.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### rwanda
ipums.rwanda <- ipumsfull %>% filter(countryname == "Rwanda")
rwanda.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.rwanda, FUN = sum)
rwanda.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.rwanda, FUN = sum)

rwanda.internet.prop <- rwanda.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

rwanda.mobile.prop <- rwanda.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### sierraleone 
ipums.sierraleone <- ipumsfull %>% filter(countryname == "Sierra Leone")
sierraleone.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.sierraleone, FUN = sum)

sierraleone.mobile.prop <- sierraleone.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### south sudan
ipums.southsudan <- ipumsfull %>% filter(countryname == "South Sudan")
southsudan.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.southsudan, FUN = sum)

southsudan.mobile.prop <- southsudan.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### sudan
ipums.sudan <- ipumsfull %>% filter(countryname == "Sudan")
sudan.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.sudan, FUN = sum)

sudan.mobile.prop <- sudan.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### tanzania
ipums.tanzania <- ipumsfull %>% filter(countryname == "United Republic of Tanzania")
tanzania.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.tanzania, FUN = sum)
tanzania.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.tanzania, FUN = sum)

tanzania.internet.prop <- tanzania.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

tanzania.mobile.prop <- tanzania.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### uganda
ipums.uganda <- ipumsfull %>% filter(countryname == "Uganda")
uganda.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.uganda, FUN = sum)

uganda.mobile.prop <- uganda.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### uruguay
ipums.uruguay <- ipumsfull %>% filter(countryname == "Uruguay")
uruguay.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.uruguay, FUN = sum)
uruguay.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.uruguay, FUN = sum)

uruguay.internet.prop <- uruguay.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

uruguay.mobile.prop <- uruguay.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### venezuela
ipums.venezuela <- ipumsfull %>% filter(countryname == "Venezuela")
venezuela.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.venezuela, FUN = sum)

venezuela.internet.prop <- venezuela.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

### zambia 
ipums.zambia <- ipumsfull %>% filter(countryname == "Zambia")
zambia.internet <- aggregate(PERWT ~ countryname + internet.log + geo + YEAR + all.ag, data = ipums.zambia, FUN = sum)
zambia.mobile <- aggregate(PERWT ~ countryname + cell.log + geo + YEAR + all.ag, data = ipums.zambia, FUN = sum)

zambia.internet.prop <- zambia.internet %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

zambia.mobile.prop <- zambia.mobile %>% 
	group_by(all.ag, geo) %>% 
	mutate(prop = prop.table(PERWT))

# concatenate country-level internet data
ipums.int <- rbind.data.frame(botswana.internet.prop,
	brazil.internet.prop, cambodia.internet.prop, chile.internet.prop, 
	costarica.internet.prop, dominicanrepublic.internet.prop,
	ecuador.internet.prop, egypt.internet.prop, elsalvador.internet.prop, 
	iran.internet.prop, jamaica.internet.prop, jordan.internet.prop, malaysia.internet.prop, 
	mexico.internet.prop, nicaragua.internet.prop, nigeria.internet.prop, 
	palestine.internet.prop, panama.internet.prop, paraguay.internet.prop, 
	peru.internet.prop, peru.internet.prop, rwanda.internet.prop, tanzania.internet.prop, 
	uruguay.internet.prop, venezuela.internet.prop, zambia.internet.prop
	)

# concatenate country-level mobile data
ipums.cell <- rbind.data.frame(botswana.mobile.prop, brazil.mobile.prop,
	cambodia.mobile.prop, chile.mobile.prop, costarica.mobile.prop, dominicanrepublic.mobile.prop, 
	ecuador.mobile.prop, egypt.mobile.prop, elsalvador.mobile.prop, jamaica.mobile.prop, 
	jordan.mobile.prop, liberia.mobile.prop, mexico.mobile.prop, 
	mozambique.mobile.prop, nicaragua.mobile.prop, nigeria.mobile.prop, 
	palestine.mobile.prop, panama.mobile.prop, paraguay.mobile.prop, peru.mobile.prop, 
	peru.mobile.prop, rwanda.mobile.prop, sierraleone.mobile.prop, southsudan.mobile.prop,
	sudan.mobile.prop, tanzania.mobile.prop, uganda.mobile.prop, uruguay.mobile.prop, 
	zambia.mobile.prop
	)