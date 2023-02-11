{smcl}
{* *! version 1.0 11 Feb 2023}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Install command2" "ssc install command2"}{...}
{vieweralsosee "Help command2 (if installed)" "help command2"}{...}
{viewerjumpto "Syntax" "wdff##syntax"}{...}
{viewerjumpto "Description" "wdff##description"}{...}
{viewerjumpto "Options" "wdff##options"}{...}
{viewerjumpto "Remarks" "wdff##remarks"}{...}
{viewerjumpto "Examples" "wdff##examples"}{...}
{title:Title}
{phang}
{bf:wdff} {hline 2} Downloads Fama-French factors

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:wdff}
anything
[{cmd:,}
{it:options}]

{synoptset 20 tabbed}{...}
{synopthdr}
{synoptline}

{syntab:Optional}
{synopt:{opt drop}} Deletes the zip files.

{synoptline}
{p2colreset}{...}
{p 4 6 2}

{marker description}{...}
{title:Description}
{pstd}

{pstd}
 {cmd:wdff} Downloads Fama-French factors from "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html".

{marker options}{...}
{title:Options}
{dlgtab:Main}

{phang}
{opt drop}  Deletes the zip files.



{marker examples}{...}
{title:Examples}

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

{title:Stored results}

{synoptset 15 tabbed}{...}


{title:Author}
{p}

Aristeidis Dadoukis, The University of Nottingham, Nottingham University Business School.

Email {browse "mailto:aristeidis.dadoukis@gmail.com":aristeidis.dadoukis@gmail.com}



{title:See Also}
Related commands:

{help mrobust} (if installed) {stata ssc install mrobust, replace} (to install this command)
{help texdoc}  (if installed) {stata ssc install texdoc, replace}  (to install this command)

