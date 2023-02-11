// wdff v1 - 11-02-2023
// A. Dadoukis

capture program drop wdff
program define wdff  
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

{pstd}Example 3: Download two files and delete the zip files: Fama/French 3 Factors Daily (F-F_Research_Data_Factors_daily_CSV) and Portfolios Formed on Size: (Portfolios_Formed_on_ME_CSV)

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV Portfolios_Formed_on_ME_CSV, drop}
]
freetext[
{bf:{ul{Files Currently Supports}}
Changes in CRSP Data
Fama/French 3 Factors: F-F_Research_Data_Factors_CSV
Fama/French 3 Factors [Weekly]: F-F_Research_Data_Factors_weekly_CSV
Fama/French 3 Factors [Daily]: F-F_Research_Data_Factors_daily_CSV
Fama/French 5 Factors (2x3): F-F_Research_Data_5_Factors_2x3_CSV
Fama/French 5 Factors (2x3) [Daily]: F-F_Research_Data_5_Factors_2x3_daily_CSV

Univariate sorts on Size, B/M, OP, and Inv
Portfolios Formed on Size: Portfolios_Formed_on_ME_CSV
Portfolios Formed on Size [ex.Dividends]: Portfolios_Formed_on_ME_Wout_Div_CSV
Portfolios Formed on Size [Daily]: Portfolios_Formed_on_ME_Daily_CSV

Portfolios Formed on Book-to-Market : Portfolios_Formed_on_BE-ME_CSV
Portfolios Formed on Book-to-Market [ex. Dividends]: Portfolios_Formed_on_BE-ME_Wout_Div_CSV
Portfolios Formed on Book-to-Market [Daily]: Portfolios_Formed_on_BE-ME_Daily_CSV
]
author[Aristeidis Dadoukis]
institute[The University of Nottingham, Nottingham University Business School]
email[aristeidis.dadoukis@gmail.com]

END HELP FILE */