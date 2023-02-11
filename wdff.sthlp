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
 {cmd:wdff} Downloads Fama-French factors from {browse "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html"} "https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html".

{marker options}{...}
{title:Options}
{dlgtab:Main}

{phang}
{opt drop}  Deletes the zip files.



{marker examples}{...}
{title:Examples}

{pstd}Example 1: Download Fama/French 3 Factors [Daily

{title:Stored results}

{synoptset 15 tabbed}{...}


{title:Author}
{p}

Aristeidis Dadoukis, The University of Nottingham, Nottingham University Business School.

Email {browse "mailto:aristeidis.dadoukis@gmail.com":aristeidis.dadoukis@gmail.com}



