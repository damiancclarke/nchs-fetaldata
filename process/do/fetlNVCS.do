set more off

local f12 "VS12FetalDetailUSPub.txt"
local d12 "fetl2012.dct"

local dat_name "/home/damiancclarke/database/NVSS/FetalDeaths/raw/`f12'"

local dta_name "/home/damiancclarke/database/NVSS/FetalDeaths/dta/fetl2012"

local dct_name "/home/damiancclarke/database/NVSS/FetalDeaths/process/dicts/`d12'"

infile using "`dct_name'", using("`dat_name'") clear

compress
save "`dta_name'",replace
