set more off

local base "/home/damiancclarke/database/NVSS/FetalDeaths"

local f2001 "VS01FETL.DETUSPUB"
local f2002 "VS02FETL.DETUSPUB"
local f2003 "VS03FETL.DETUSPUB"
local f2004 "VS04FETL.DETUSPUB"
local f2005 "vs05fetl.publicUS"
local f2006 "vs06fetal.DETUSPUB"
local f2007 "VS07Fetal.PublicUS"
local f2008 "Fetal2008US.txt"
local f2009 "VS09Fetal.Detailuspub.txt"
local f2010 "VS10Fetalupdated.Detailuspub.Detailuspub"
local f2011 "VS11Fetal.DetailUSpubfinalupdate.DetailUSpub"
local f2012 "VS12FetalDetailUSPub.txt"

foreach year of numlist 2001(1)2012 {

	local dat_name "`base'/raw/`f`year''"
	local dta_name "`base'/dta/fetl`year'"
	local dct_name "`base'/process/dicts/fetl`year'.dct"

	infile using "`dct_name'", using("`dat_name'") clear

	compress
	save "`dta_name'",replace

}
