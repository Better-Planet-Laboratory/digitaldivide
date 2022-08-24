## Mehrabi *et al.* 2020. The global divide in data driven farming. Supplementary Information D: Mobile and internet access
#### Code by Mollie McDowell
### 1 Introduction

### 1 Introduction

This repository contains data, code, and additional documentation associated with "The digital divide in data-driven farming" by *Mehrabi et al.* (2020). All coding was performed in R version 3.5.0 (R Core Team, 2018). 

To run the scripts in this repository, download the datasets listed in `/supplemental_files/Mehrabietal2020_SurveyList.csv`. Store raw IPUMS datasets in `/data/IPUMS/raw/`; store raw DHS datasets without internet access information in `/data/DHS/internet/`; store raw DHS datasets with internet access information in `/data/DHS/no_internet/`; store panel DHS datasets in `/data/panel/`; and store raw miscellaneous datasets in `/data/misc/`.

**`00_Load_Packages.R`**

This optional script loads packages required for running the scripts in this repository. Alternatively, individual scripts will load packages required to run.

### 2 Dataset Search

#### 2.1 Overview

For this analysis, we sought to leverage recent, nationally-representative datasets at subnational spatial scale with information about cell phone ownership, household internet access, and agricultural land ownership and/or industry/employment.We began our data search by compiling a list of available data sources, documented in Table 1 below and categorized by whether the source returned useful data. 

Where Boolean operators could be used to search data sources (i.e., where data sources had search engines), we used the following combinations:

* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage
* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage AND global OR world
* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage AND map
* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage AND broadband
* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage AND global AND map 
* mobile OR cell OR wireless OR network OR internet AND coverage OR service OR usage AND global AND map

Table 1 lists data repositories and other websites where non-Boolean search terms or workflows were used, along with URLs and whether we used data from these sources (column "Useful").

| Source                                                   | Useful | URL                                                         |
| -------------------------------------------------------- | ------ | ----------------------------------------------------------- |
| Harvard Dataverse                                        | Yes    | https://dataverse.harvard.edu/                              |
| Integrated Public Use Microdata Series (IPUMS)           | Yes    | https://ipums.org/                                          |
| International Household Survey Network (IHSN) Catalog    | Yes    | http://catalog.ihsn.org/index.php/catalog                   |
| The World Bank Data Catalog                              | Yes    | https://datacatalog.worldbank.org/                          |
| ArcGIS Open Data Hub                                     | No     | https://hub.arcgis.com/pages/open-data                      |
| Eurostat                                                 | No     | https://ec.europa.eu/eurostat                               |
| Free GIS Data portal                                     | No     | https://freegisdata.rtwilson.com/                           |
| Information Geographies at the Oxford Internet Institute | No     | http://geography.oii.ox.ac.uk/?page=home                    |
| Open Data Watch                                          | No     | http://odin.opendatawatch.com/                              |
| Ryerson University Geospatial Map and Data Centre        | No     | https://library.ryerson.ca/gmdc/madar/geo-data/public/open/ |
| United Nations Development Programme                     | No     | http://hdr.undp.org/en/data                                 |
| World Resources Institute                                | No     | https://www.wri.org/resources/data_sets                     |

Some data sources required a microdata request describing the project in order to access datasets. For these, we provided the following summary:

> We are academic researchers from the Centre for Sustainable Food Systems at the University of British Columbia. We are researching the global availability and use of technology among farmers. This will inform the viability of farm management technology (e.g., crop management apps for use on smartphones). We are hoping to extract census microdata related to cell phone use (smartphone if possible), internet access, and occupation. We are particularly in interested in accessing data that provides information about farm workers who have access to these forms of technology.

#### 2.2 Survey information

We ultimately found two multi-country datasets and three individual datasets that achieved our outcome for determining global farmer access to cell phones and internet service:

*Multi-country datasets*

*	**[Demographic and Health Surveys (DHS)](https://dhsprogram.com/):** Subnationally-representative surveys that collect data on health and population in developing countries, implemented by ICF International and funded by the United States Agency for International Development (USAID; ICF, 2004-2017; ICF, "The DHS Program Spatial Data Repository"). All surveys include questions about cell phone ownership and agricultural land ownership, and some include a question about internet access in household.
  +	Available for: Albania, Angola, Armenia, Azerbaijan, Bangladesh, Benin, Burkina Faso, Burundi, Cambodia, Cameroon, Chad, Comoros, Congo, Cote d'Ivoire, Dominican Republic, DRC, Gabon, Gambia, Ghana, Guatemala, Guinea, Guyana, Haiti, Honduras, India, Indonesia, Kenya, Kyrgyz Republic, Lesotho, Liberia, Madagascar, Malawi, Mali, Mozambique, Myanmar, Namibia, Nepal, Niger, Nigeria, Pakistan, Peru, Rwanda, Sao Tome and Principe, Senegal, Sierra Leone, Tajikistan, Tanzania, Timor-Leste, Togo, Uganda, Ukraine, Yemen, Zambia, Zimbabwe
*	**[Censuses available on IPUMS Terra](https://www.terrapop.org/):** Subnationally-representative and harmonized censuses available on the Integrated Public Use Microdata Series (IPUMS) Terra database, housed at the Institute for Social Research and Data Innovation at the University of Minnesota (Minnesota Population Center, 2018). Censuses extracted from IPUMS include variables about employment sector/industry as well as about internet access and/or cell phone ownership.
  + Available for: Argentina, Belarus, Botswana, Brazil, Cambodia, Chile, Costa Rica, Dominican Republic, Ecuador, Egypt, El Salvador, Greece, Iran, Ireland, Jamaica, Jordan, Malaysia, Mexico, Mozambique, Nicaragua, Nigeria, Palestine, Panama, Paraguay, Rwanda, South Sudan, Spain, Sudan, Tanzania, Uganda, Uruguay, Venezuela, Zambia

*Individual datasets*

*	**Bolivia:** [Household Survey 2016](http://catalog.ihsn.org/index.php/catalog/7137/study-description)
  +	Questions about employment and household internet access
*	**Ghana:** [Living Standards Survey 2012-2013](http://catalog.ihsn.org/index.php/catalog/5350)
  + Includes questions about employment sector, cell phone use, and internet access per household
*	**South Africa:** [General Household Survey 2016](http://microdata.worldbank.org/index.php/catalog/2879)
  + Includes questions about household cell phone ownership and internet access (page 44), household agricultural activities (47)

Information about each survey, including individual survey questions, is available in the supplemental file `/supplemental_files/Mehrabietal2020_SurveyList.csv`.

### 3 Data processing

#### 3.1 IPUMS data processing

The IPUMS data extract downloaded from the IPUMS web-based data portal contained one .csv file per continent (Africa, Asia, Europe, North America, and South America). Two of these files (Africa and South America) were too big to read into R, so we split them using a terminal emulator (Terminal) and Unix shell (bash). This raw data can be found in `/data/IPUMS/raw/`. 

We used the following variables from the data extract:

* *PERWT*: Person weight
* *COUNTRY*: Country
* *GEO****: Lowest-level administrative unit
* *SERIAL*: Household serial number
* *INDGEN*: Industry, general recode
* *OCCISCO*: Occupation, ISCO general
* *INTERNET*: Internet access
* *CELL*: Cellular phone availability
* *YEAR*: Year

We used the following codes to identify agricultural workers:

* *010 (INDGEN)*: Agriculture, fishing and forestry
* *06 (OCCISCO)*: Skilled agricultural and fishery workers

We removed the following codes from analysis:

* *000 (INDGEN)*: NIU (not in universe)
* *998 (INDGEN)*: Response suppressed
* *999 (INDGEN)*: Unknown
* *97 (OCCISCO)*: Response suppressed
* *98 (OCCISCO)*: Unknown
* *99 (OCCISCO)*: NIU (not in universe)

The fraction of removed responses may have impacted downstream statistical analysis. Future research can incorporate these cases by adjusting the code in this section accordingly.

**`01_IPUMS_SplitCountries.R`**

This script imports the raw data files stored in `/data/IPUMS/raw/`, filters each dataframe by [ISO 3166 numeric country code](https://www.iso.org/iso-3166-country-codes.html) to create country-level dataframes, and writes those dataframes to csv in `/data/IPUMS/country/`. Note that in order to run this script as well as any others that involve writing files, you must specify the local path to the main directory in line 4.

**`02_IPUMS_CategorizeFunction.R`**

This function replaces numeric survey responses to questions about employment/agricultural work (INDGEN and OCCISCO), and internet and mobile phone ownership with Boolean vectors (TRUE/FALSE). It also replaces numeric values that represent unknown, repressed, and NIU survey responses with NA. It creates three new variables to represent responses to these questions: *`all.ag`* (employment/agricultural work), *`internet.log`* (internet ownership), and *`cell.log`* (mobile phone ownership).

**`03_IPUMS_AggregateFunction.R`**

This function modifies dataframes by aggregating individual responses at the lowest representative sampling unit of the surveys, dropping unnecessary variables delivered with the IPUMS data extract, and standardizing variables names.

**`04_IPUMS_DataTidy.R`**

This script sources the two functions above (**`02_IPUMS_CategorizeFunction.R`** and **`03_IPUMS_AggregateFunction.R`**) to read in and batch-process the IPUMS country-level datasets created in the previous step (**`01_IPUMS_SplitCountries.R`**). The script reads in files from a local directory (`/data/IPUMS/country/`), creates a list of dataframes, applies the functions to the dataframe lists, and writes the result to a new dataframe. All datasets that did not include a question about agricultural work or agricultural land ownership are then removed from the dataframe, as they cannot be used for analysis.

Next, this script uses the [`countrycode`](https://cran.r-project.org/web/packages/countrycode/index.html) package to translate ISO three-digit country code variable (*`countrycode`*) into country names, and writes the country names to a new variable (*`countryname`*) in the dataframe.

**`05_IPUMS_AddProp.R`**

This script adds a proportion variable (*`prop`*) to the full IPUMS dataset created above, to represent the percentage of respondents in each category of interest (farmer without internet, farmer with internet, non-farmer without internet, non-farmer with internet). It filters the full IPUMS dataset for each country, splits the country-level data by question category (internet access and mobile phone ownership), and aggregates the sub-country-level data by summing weights for internet and mobile ownership at the lowest representative sampling unit of each dataset. It then calculates a proportion variable (*`prop`*) for each sub-country-level dataset to represent the percentage of respondents in each category of interest (farmer without internet, farmer with internet, non-farmer without internet, and non-farmer with internet). Finally, it concatenates country-level internet and mobile data into two dataframes.

#### 3.2 DHS data processing

The DHS data extract contained a folder for each survey requested and a selection of file types for analysis in different statistical programs. We used the SPSS file type (.sav), which can be loaded in R using the [`rio`](https://cran.r-project.org/web/packages/rio/index.html) package. We used Standard DHS Surveys (n = 45), Malaria Indicator Surveys (n = 7; Ghana 2016, Madagascar 2016, Liberia 2016, Sierra Leone 2016, Kenya 2015, Mozambique 2015, Nigeria 2015), and Continuous Surveys (n = 2; Senegal 2016, Peru 2012). Please see the accompanying Survey List for links to the surveys (`/supplemental_files/Mehrabietal2020_SurveyList.csv`).

We selected variables that we thought might be useful for analysis (some were later discarded from data aggregation):

* *HHID*: case identification
* *HV000*: country code and phase
* *HV001*: cluster number
* *HV002*: household number
* *HV004*: ultimate area unit
* *HV005*: household sample weight
* *HV007*: year of interview
* *HV024*: region/state
* *HV244*: owns usable land for agriculture
* *HV243A*: has mobile telephone
* *HV270*: wealth index
* *HV271*: wealth index factor score
* *SHxxx*: internet connection (different for every survey)

**`06_DHS_Parse_NoInternet.R`**

This script batch processes datasets that do not contain an internet variable using a custom function, *`parsedhs`*. The *`parsedhs`* function selects the variables listed above (except for *SHxxx* - internet connection) and creates a new dataframe. The raw data files are imported from the local directory `data/DHS/no_internet/` and parsed with *`lapply`*.

**`07_DHS_Parse_Internet.R`**

This script processes datasets that contain an internet variable, which have varying question codes (*SHxxx*), as well as datasets that became available subsequent to the first iteration of this analysis. It imports each dataset from the local directory `data/DHS/internet/`, selects the variables listed above, and creates a new dataframe.

**`08_DHS_DataTidy.R`**

This script aggregates, standardizes, and tidies the country-level datasets created in the previous steps (**`06_DHS_Parse_NoInternet.R`** and **`07_DHS_Parse_Internet.R`**). It standardizes *`country`* and *`year`* variables, aggregates dataframes by summed weight (*HV005*) at the lowest representative sampling unit (*HV024*), and creates new dataframes. It also calculates a proportion variable (*`prop`*) for each country, to represent the percentage of respondents in each category of interest (farmer without internet, farmer with internet, non-farmer without internet, and non-farmer with internet). Note that some datasets spanned two years of sampling; in these cases, we set the year of the survey to the year with the majority of responses. Finally, this script concatenates dataframes that contain mobile data and dataframes that contain internet data, and creates column names for the two dataframes.

#### 3.3 Miscellaneous data processing

**`09_Misc_DataProcessing`**

This script processing miscellaneous (non-IPUMS and non-DHS) datasets. These include: the South Africa Household Survey 2016, the Bolivia Household Survey 2016, and the Ghana Living Standards Survey 2012. This script imports raw datasets from `/data/misc/`, filters dataframes for variables of interest, tidies dataframes, aggregates dataframes by summed weight at the lowest representative sampling units of the surveys, and calculates a proportion variable for each dataset to represent the percentage of respondents in each category of interest.

#### 3.4 Full data processing

**`10_Full_BindData`**

This script standardizes and concatenates the dataframes created in previous steps to create two dataframes: one for mobile data and one for internet data. It standardizes variable names for each dataset, including creating two new variables:

* *`region.type`*: geographic type of sampling unit
* *`dataset`*: dataset name

This script also mutates the sample weights for IPUMS and DHS surveys by the scaling factors provided in the dataset documentation. Sample weights are provided in IPUMS and DHS datasets without decimal places to eliminate rounding errors in calculations; sample weights must be divided by scaling factors (100 for IPUMS and 1,000,000 for DHS) to represent real population numbers of survey respondents. Finally, it writes the full datasets to csv in the directory `/data/`.

#### 3.5 Panel data processing

We used panel datasets for select countries ranging years 2005-2017 to centre data on a common year. 

**`11_Panel_DataProcessing.R`**

This script repeats the DHS data processing steps outlined in section 3.2 for the panel datasets. It imports the raw data files from `/data/panel/`, selects variables of interest, standardizes variable names, standardizes year for multi-year surveys (choosing the year with the majority of responses), tidies data, aggregates dataframes by summed weight at the lowest representative sampling units of the surveys, and calculates a proportion variable for each dataset to represent the percentage of respondents in each category of interest. Finally, it concatenates the dataframes and writes the data to csv in `/data/`.

Note: Three Peru datasets corresponded to distinct survey years (2011, 2010, and 2009), and one corresponded to a continuous survey spanning 2004-2008. Of these years, 2006 and 2008 provided useful data.