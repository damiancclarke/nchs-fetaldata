set more off

local base "/home/damiancclarke/database/NVSS/FetalDeaths"

local f2011 "VS11Fetal.DetailUSpubfinalupdate.DetailUSpub"
local f2012 "VS12FetalDetailUSPub.txt"

foreach year in 2011 2012 {

	local dat_name "`base'/raw/`f`year''"
	local dta_name "`base'/dta/fetl`year'"
	local dct_name "`base'/process/dicts/fetl`year'.dct"

	infile using "`dct_name'", using("`dat_name'") clear

	compress
	save "`dta_name'",replace

}
