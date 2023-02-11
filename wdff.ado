// wdff v1 - 11-02-2023
// A. Dadoukis

capture program drop wdff
program define wdff , rclass 
version 14 
syntax anything [, drop ]  

foreach f of local anything {

copy "http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/ftp/`f'.zip" "`f'.zip", replace
unzipfile "`f'.zip", replace
	if "`drop'" == "drop" {
	erase `f'.zip
	}
}
end
/* START HELP FILE
title[Downloads Fama-French factors]

desc[
 {cmd:wdff} Downloads Fama-French factors from {browse "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html"}.
]

opt[drop Deletes the zip files.]

example[
{pstd}Example 1: Download Fama/French 3 Factors Daily

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV}

{pstd}Example 2: Download Fama/French 3 Factors Daily and delete the zip file

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV, drop}
]
author[Aristeidis Dadoukis]
institute[The University of Nottingham, Nottingham University Business School]
email[aristeidis.dadoukis@gmail.com]

END HELP FILE */