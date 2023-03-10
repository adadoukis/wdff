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
 {cmd:wdff} Downloads Fama-French factors from {browse "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html"}.

{marker options}{...}
{title:Options}
{dlgtab:Main}

{phang}
{opt drop}  Deletes the zip files.



{marker examples}{...}
{title:Examples}

{pstd}Example 1: Download Fama/French 3 Factors Daily

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV}

{pstd}Example 2: Download Fama/French 3 Factors Daily and delete the zip file

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV, drop}

{pstd}Example 3: Download two files and delete the zip files: Fama/French 3 Factors Daily (F-F_Research_Data_Factors_daily_CSV) and Portfolios Formed on Size: (Portfolios_Formed_on_ME_CSV)

{phang2}{stata wdff F-F_Research_Data_Factors_daily_CSV Portfolios_Formed_on_ME_CSV, drop}


{title:Author}
{p}

Aristeidis Dadoukis, The University of Nottingham, Nottingham University Business School.

Email {browse "mailto:aristeidis.dadoukis@gmail.com":aristeidis.dadoukis@gmail.com}



