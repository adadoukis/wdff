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
title[A command to export mrobust results into LaTex or Word]

desc[
 {cmd:outmr} Exports results from mrobust into LaTex and Word.  Currently only LaTex is supported with minimal customization.
]

opt[title(string)} Specifies the caption of the table.]

opt[label(string)} Specifies the label of the table]

opt[notes(string)} Specifies the notes of the table]

opt[coeflabels(string)} Specifies the format of the coefficient labels.  The current version of outmr is using the labels of each variable.  To include math notation in LaTex use \(\).]

opt[dec(#)} Specifies the format of the coefficients.  The default is 4dp.]

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



