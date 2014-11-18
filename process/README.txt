================================================================================
=====  README.txt for importing fixed with public use microdata from NCHS  =====
=====  into Stata's .dta format                                            =====
=====                                                                      =====
=====  Author    : damiancclarke                                           =====
=====  yyyy-mm-dd: 2014-11-18                                              =====
=====  Contact   : mailto:damian.clarke@economics.ox.ac.uk                 =====
================================================================================

This folder contains files to convert raw NCHS NVSS data into Stata's native dta
format.  Original NVSS Fetal Death data is stored on the web in fixed width text
format at the following address:

        http://www.cdc.gov/nchs/data_access/Vitalstatsonline.htm

The microdata from this site should be downloaded, and saved locally.   

In order to convert plaintext files to Stata files, two resources are made avai-
lable here: a do file (fetlNVCS.do), and a dictionary (.dct) file for each year
of data. The dictionary files do not need to be altered in any way. The only th-
ing which needs to be changed is the local variable defined on line 3 of the do
file. This should be changed to the location of the raw data on the user's mach-
ine. It is assumed that the dictionary files provided here have been saved in a
subfolder of the file where the data is stored, however, if desired this can be
changed on lines 19-22 of the do file. Then, to convert data fully to Stata for-
mat, only the fetlNVCS.do file needs to be run in Stata.

Questions or corrections should be sent to damian.clarke@economics.ox.ac.uk.
