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
 {cmd:wdff} Downloads Fama-French factors from "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html".
]

opt[drop Deletes the zip files.]



example[
{pstd}Example 1: Setup

{phang2}{stata sysuse nlsw88, clear}

{pstd}Execute mrobust 

{phang2}{stata mrobust regress union hours age grade collgrad married south smsa c_city ttl_exp tenure , noplot}

{pstd}Export results to results.tex file

{phang2}{stata outmr using results.tex, title(Add this title to the table) notes(This is a note) replace}
 
{pstd}Example 2: Setup

{phang2}{stata sysuse nlsw88, clear}

{pstd}Change the label of age to age_it 

{phang2}{stata label var age "\(age_{it}\)"}

{pstd}Execute mrobust 

{phang2}{stata mrobust regress union hours age grade collgrad married south smsa c_city ttl_exp tenure , noplot}

{pstd}Export results to results.tex file using 3 decimal points

{phang2}{stata outmr using results.tex, title(Add this title to the table) notes(This is a note) dec(3) replace}
]
author[Aristeidis Dadoukis]
institute[The University of Nottingham, Nottingham University Business School]
email[aristeidis.dadoukis@gmail.com]



seealso[
{help mrobust} (if installed) {stata ssc install mrobust, replace} (to install this command)
{help texdoc}  (if installed) {stata ssc install texdoc, replace}  (to install this command)
]

END HELP FILE */



