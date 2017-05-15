%% File: copernicus_discussions.cls
%% ---------------------------------
%% The LaTeX2e class file for discussion papers published by Copernicus Publications (Copernicus GmbH)
%% E-mail:  publications@copernicus.org
%% URL:     http://publications.copernicus.org
%% ---------------------------------
%% Author:
%% Dieter Schmitt
%% Max-Planck-Institut f\"ur Sonnensystemforschung
%% Max-Planck-Str. 2
%% D-37191 Katlenburg-Lindau
%% Germany
%% E-mail: schmitt@mps.mpg.de
%%
%% With major contributions by Copernicus Publications, Rolf Sander and Patrick W. Daly.
%% ---------------------------------
%% This file may be used for non-profit purposes. 
%% It may not be distributed in exchange of money.
%% The author provides it 'as is' and does not
%% guarantee it in any way.
%% ---------------------------------
%% This class file consists of several modules, each with its separate copyright.
%% The modules that are specific to Copernicus' publications are
%% Copyright (C) Copernicus GmbH.
%%
%% The entire package is available from:
%% http://publications.copernicus.org/for_authors/latex_instructions.html
%% ---------------------------------
%% Version 3.5, 2011/08/16

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\def\MyProvidesClass#1 [#2 #3 #4]
   {\ProvidesClass{#1}[#2 #3 #4]%
   \def\clsname{#1}\def\clsdate{#2}\def\clsversion{#3}\def\clsinfo{#4}}
\MyProvidesClass{copernicus_discussions}
   [2011/08/16 3.5 (DS)]
%%
%% discussion journals
%%
\newif\ifacpd
\newif\ifbgd
\newif\ifcpd
\newif\ifhessd
\newif\ifosd
\newif\ifsgd
\newif\iftcd
\newif\ifgmdd
\newif\ifdwesd
\newif\ifessdd
\newif\ifamtd
\newif\ifsed
\newif\ifesdd
\newif\ifgid
%%
%% other if
%%
\newif\if@cop@home
\newif\ifgerman
\newif\ifonline
\newif\if@hvmath
\newif\if@nohyperref
\newif\if@nolastpage
\newif\if@noauthor
\newif\if@noref
\newif\if@longauthorlist
%%
%% options for discussion journals
%%
\DeclareOption{acpd}{\acpdtrue}
\DeclareOption{bgd}{\bgdtrue}
\DeclareOption{osd}{\osdtrue}
\DeclareOption{hessd}{\hessdtrue}
\DeclareOption{cpd}{\cpdtrue}
\DeclareOption{sgd}{\sgdtrue}
\DeclareOption{tcd}{\tcdtrue}
\DeclareOption{gmdd}{\gmddtrue}
\DeclareOption{dwesd}{\dwesdtrue}
\DeclareOption{essdd}{\essddtrue}
\DeclareOption{amtd}{\amtdtrue}
\DeclareOption{sed}{\sedtrue}
\DeclareOption{esdd}{\esddtrue}
\DeclareOption{gid}{\gidtrue}
%%
%% other options
%%
\DeclareOption{german}{\germantrue}
\DeclareOption{online}{\onlinetrue}
\DeclareOption{hvmath}{\@hvmathtrue}
\DeclareOption{fleqn}{\relax}
\DeclareOption{twoside}{\relax}
\DeclareOption{twocolumn}{\relax}
\DeclareOption{titlepage}{\relax}
\DeclareOption{nohyperref}{\@nohyperreftrue}
\DeclareOption{nolastpage}{\@nolastpagetrue}
\DeclareOption{noauthor}{\@noauthortrue}
\DeclareOption{noref}{\@noreftrue}
\DeclareOption{longauthorlist}{\@longauthorlisttrue}
%%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[fleqn,a4paper]{article}
%%
%% journal dependent variables,
%% here default values,
%% must be redefined for each journal
%%
\newcommand{\@journalname}{Journalname}
\newcommand{\@journalnameabbreviation}{J. Name}
\newcommand{\@journalnameshort}{JN}
\newcommand{\@journalnameshortlower}{jn}
\newcommand{\@journalurl}{www.jn.net}
\newcommand{\@journalpublisher}{Publisher}
\newcommand{\@journalpublisherurl}{www.jp.net}
\newcommand{\@journalcopyright}{Copyright}
\newcommand{\@journalstartyear}{2000}
\newcommand{\@journallogo}{Journallogo}
\newcommand{\@sentence}{Sentence.}
\newcommand{\@sentpub}{Published ...}
\newcommand{\@journallink}{Journallink}
%%
%% now for each journal
%%

%%
\ifacpd
   \renewcommand{\@journalname}{Atmospheric Chemistry and Physics Discussions}
   \renewcommand{\@journalnameabbreviation}{Atmos. Chem. Phys. Discuss.}
   \renewcommand{\@journalnameshort}{ACPD}
   \renewcommand{\@journalnameshortlower}{acpd}
   \renewcommand{\@journalurl}{www.atmos-chem-phys-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2001}
   \renewcommand{\@journallogo}{%
      \parbox[t][0pt][t]{43.0mm}{\vskip-3.5mm\includegraphics[width=17.8mm]{egulogo.pdf}\\[-22.7mm]
      \null\hspace{0.5mm}\rule{5.5mm}{1pt}\hspace{8.3mm}\rule{28.7mm}{1pt}\\[-1.2mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[0.9]{Atmospheric}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Chemistry}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{and Physics}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Discussions}}\\[-3.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{33.0mm}{1pt}}}
   \renewcommand{\@sentence}{\\[8mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Atmospheric Chemistry}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{and Physics (ACP). Please refer to the corresponding final paper in ACP if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifbgd
   \renewcommand{\@journalname}{Biogeosciences Discussions}
   \renewcommand{\@journalnameabbreviation}{Biogeosciences Discuss.}
   \renewcommand{\@journalnameshort}{BGD}
   \renewcommand{\@journalnameshortlower}{bgd}
   \renewcommand{\@journalurl}{www.biogeosciences-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2004}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{45.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-16.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{34.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Biogeosciences}\\
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{37.0mm}{1pt}}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Biogeosciences (BG).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in BG if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifcpd
   \renewcommand{\@journalname}{Climate of the Past Discussions}
   \renewcommand{\@journalnameabbreviation}{Clim. Past Discuss.}
   \renewcommand{\@journalnameshort}{CPD}
   \renewcommand{\@journalnameshortlower}{cpd}
   \renewcommand{\@journalurl}{www.clim-past-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2005}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{42.0mm}{\vskip-3.5mm\includegraphics[width=17.5mm]{egulogo.pdf}\\[-21.6mm]
      \null\hspace{0.5mm}\rule{4.0mm}{1pt}\hspace{9.8mm}\rule{27.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Climate}\\[-0.5mm]
      \null\hfill\scalebox{1.0}[1.0]{of the Past}\\[-0.5mm]
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{3.0mm}{1pt}\hspace{8.5mm}\rule{30.0mm}{1pt}}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Climate of the Past (CP).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in CP if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifhessd
   \renewcommand{\@journalname}{Hydrology and Earth System Sciences Discussions}
   \renewcommand{\@journalnameabbreviation}{Hydrol. Earth Syst. Sci. Discuss.}
   \renewcommand{\@journalnameshort}{HESSD}
   \renewcommand{\@journalnameshortlower}{hessd}
   \renewcommand{\@journalurl}{www.hydrol-earth-syst-sci-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2004}
   \renewcommand{\@journallogo}{%
      \parbox[t][0pt][t]{46.0mm}{\vskip-3.5mm\includegraphics[width=17.8mm]{egulogo.pdf}\\[-22.7mm]
      \null\hspace{0.5mm}\rule{5.5mm}{1pt}\hspace{8.3mm}\rule{31.7mm}{1pt}\\[-1.2mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[0.9]{Hydrology and}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Earth System}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Sciences}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Discussions}}\\[-3.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{36.0mm}{1pt}}}
   \renewcommand{\@sentence}{\\[8mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Hydrology and Earth System}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Sciences (HESS). Please refer to the corresponding final paper in HESS if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifosd
   \renewcommand{\@journalname}{Ocean Science Discussions}
   \renewcommand{\@journalnameabbreviation}{Ocean Sci. Discuss.}
   \renewcommand{\@journalnameshort}{OSD}
   \renewcommand{\@journalnameshortlower}{osd}
   \renewcommand{\@journalurl}{www.ocean-sci-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2004}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{42.5mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-16.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{32.2mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Ocean Science}\\
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{34.5mm}{1pt}}}
  \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Ocean Science (OS).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in OS if available.}}
      \end{picture}}      
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifsgd
   \renewcommand{\@journalname}{Social Geography Discussions}
   \renewcommand{\@journalnameabbreviation}{Soc. Geogr. Discuss.}
   \renewcommand{\@journalnameshort}{SGD}
   \renewcommand{\@journalnameshortlower}{sgd}
   \renewcommand{\@journalurl}{www.soc-geogr-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2005}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{38.0mm}{\vskip-3mm\includegraphics[width=38mm]{SGD_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Social Geography (SG).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in SG if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications.}
\fi
%%
\iftcd
   \renewcommand{\@journalname}{The Cryosphere Discussions}
   \renewcommand{\@journalnameabbreviation}{The Cryosphere Discuss.}
   \renewcommand{\@journalnameshort}{TCD}
   \renewcommand{\@journalnameshortlower}{tcd}
   \renewcommand{\@journalurl}{www.the-cryosphere-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2007}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{45.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-16.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{34.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{The Cryosphere}\\
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{37.0mm}{1pt}}}
      \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal The Cryosphere (TC).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in TC if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifgmdd
   \renewcommand{\@journalname}{Geoscientific Model Development Discussions}
   \renewcommand{\@journalnameabbreviation}{Geosci. Model Dev. Discuss.}
   \renewcommand{\@journalnameshort}{GMDD}
   \renewcommand{\@journalnameshortlower}{gmdd}
   \renewcommand{\@journalurl}{www.geosci-model-dev-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%   
      \parbox[t][\z@][t]{54.0mm}{\vskip-3.5mm\includegraphics[width=17.5mm]{egulogo.pdf}\\[-21.6mm]
      \null\hspace{0.5mm}\rule{4.0mm}{1pt}\hspace{9.8mm}\rule{39.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{0.9}[1.0]{Geoscientific}\\[-0.5mm]
      \null\hfill\scalebox{0.9}[1.0]{Model Development}\\[-0.5mm]
      \null\hfill\scalebox{0.9}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{3.0mm}{1pt}\hspace{8.5mm}\rule{42.0mm}{1pt}}}
      \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Geoscientific Model}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Development (GMD). Please refer to the corresponding final paper in GMD if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifdwesd
   \renewcommand{\@journalname}{Drinking Water Engineering and Science Discussions}
   \renewcommand{\@journalnameabbreviation}{Drink. Water Eng. Sci. Discuss.}
   \renewcommand{\@journalnameshort}{DWESD}
   \renewcommand{\@journalnameshortlower}{dwesd}
   \renewcommand{\@journalurl}{www.drink-water-eng-sci-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{46.0mm}{\vskip-3mm\includegraphics[width=48mm]{DWESD_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Drinking Water Engineering and}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Science (DWES). Please refer to the corresponding final paper in DWES if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the Delft University of Technology.}
\fi
%%
\ifessdd
   \renewcommand{\@journalname}{Earth System Science Data Discussions}
   \renewcommand{\@journalnameabbreviation}{Earth Syst. Sci. Data Discuss.}
   \renewcommand{\@journalnameshort}{ESSDD}
   \renewcommand{\@journalnameshortlower}{essdd}
   \renewcommand{\@journalurl}{www.earth-syst-sci-data-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{28.5mm}{\vskip-3mm\includegraphics[width=29mm]{ESSDD_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Earth System Science}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Data (ESSD). Please refer to the corresponding final paper in ESSD if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications.}
\fi
%%
\ifamtd
   \renewcommand{\@journalname}{Atmospheric Measurement Techniques Discussions}
   \renewcommand{\@journalnameabbreviation}{Atmos. Meas. Tech. Discuss.}
   \renewcommand{\@journalnameshort}{AMTD}
   \renewcommand{\@journalnameshortlower}{amtd}
   \renewcommand{\@journalurl}{www.atmos-meas-tech-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%
      \parbox[t][0pt][t]{46.0mm}{\vskip-3.5mm\includegraphics[width=17.8mm]{egulogo.pdf}\\[-22.7mm]
      \null\hspace{0.5mm}\rule{5.5mm}{1pt}\hspace{8.3mm}\rule{31.7mm}{1pt}\\[-1.2mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[0.9]{Atmospheric}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Measurement}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Techniques}\\[-0.8mm]
      \null\hfill\scalebox{1.0}[0.9]{Discussions}}\\[-3.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{36.0mm}{1pt}}}
      \renewcommand{\@sentence}{\\[8mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Atmospheric Measurement}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Techniques (AMT). Please refer to the corresponding final paper in AMT if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifsed
   \renewcommand{\@journalname}{Solid Earth Discussions}
   \renewcommand{\@journalnameabbreviation}{Solid Earth Discuss.}
   \renewcommand{\@journalnameshort}{SED}
   \renewcommand{\@journalnameshortlower}{sed}
   \renewcommand{\@journalurl}{www.solid-earth-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2009}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{40.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-16.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{29.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Solid Earth}\\
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{32.0mm}{1pt}}}
      \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Solid Earth (SE).}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Please refer to the corresponding final paper in SE if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifesdd
   \renewcommand{\@journalname}{Earth System Dynamics Discussions}
   \renewcommand{\@journalnameabbreviation}{Earth Syst. Dynam. Discuss.}
   \renewcommand{\@journalnameshort}{ESDD}
   \renewcommand{\@journalnameshortlower}{esdd}
   \renewcommand{\@journalurl}{www.earth-syst-dynam-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2010}
   \renewcommand{\@journallogo}{%   
      \parbox[t][\z@][t]{47.0mm}{\vskip-3.5mm\includegraphics[width=17.5mm]{egulogo.pdf}\\[-21.6mm]
      \null\hspace{0.5mm}\rule{4.0mm}{1pt}\hspace{9.8mm}\rule{32.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Earth System}\\[-0.5mm]
      \null\hfill\scalebox{1.0}[1.0]{Dynamics}\\[-0.5mm]
      \null\hfill\scalebox{1.0}[1.0]{Discussions}}\\[-2.9mm]
      \null\hspace{0.5mm}\rule{3.0mm}{1pt}\hspace{8.5mm}\rule{35.0mm}{1pt}}}
      \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Earth System}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Dynamics (ESD). Please refer to the corresponding final paper in ESD if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifgid
   \renewcommand{\@journalname}{Geoscientific Instrumentation, Methods and Data Systems Discussions}
   \renewcommand{\@journalnameabbreviation}{Geosci. Instrum. Method. Data Syst. Discuss.}
   \renewcommand{\@journalnameshort}{GID}
   \renewcommand{\@journalnameshortlower}{gid}
   \renewcommand{\@journalurl}{www.geosci-instrum-method-data-syst-discuss.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2011}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{33.0mm}{\vskip-3mm\includegraphics[width=33mm]{GID_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{\\[6.5mm]
      \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
      \setlength{\unitlength}{1.0cm}
      \begin{picture}(0,0)
      \color[gray]{0.85}\put(0,0){\rule[-10mm]{146.5mm}{11mm}}
      \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{9.5}{9.5}\selectfont
      \put(0.2,-0.35){\textcolor{discussion_bartext}{This discussion paper is/has been under review for the journal Geoscientific Instrumentation,}}\\
      \put(0.2,-0.8){\textcolor{discussion_bartext}{Methods and Data Systems (GI). Please refer to the corresponding final paper in GI if available.}}
      \end{picture}}
   \renewcommand{\@sentpub}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
%% end of journal dependent variables
%%
\IfFileExists{copernicuslogo.pdf}{\@cop@hometrue}{\@cop@homefalse}
%%
\paperheight=159mm\paperwidth=166mm
%%
\ifx\pdfoutput\undefined%
   \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
   \DeclareGraphicsExtensions{.eps,.ps}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find graphicx.sty; proceeding without it}}
\else%
   \ifnum\pdfoutput=0
      \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
      \DeclareGraphicsExtensions{.eps,.ps}}{%
      \ClassWarningNoLine{copernicus_discussions}{Cannot find graphicx.sty; proceeding without it}}
   \else
      \IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}% pdfLaTeX
      \DeclareGraphicsExtensions{.pdf,.png,.jpg}}{%
      \ClassWarningNoLine{copernicus_discussions}{Cannot find graphicx.sty; proceeding without it}}
      \pdfinfo{/Creator (copernicus_discussions.cls version \clsversion)}
   \fi
\fi
%%
\IfFileExists{url.sty}{\RequirePackage{url}\urlstyle{same}}%
   {\ClassWarningNoLine{copernicus_discussions}{Cannot find url.sty; proceeding without it}%
   \newcommand{\url}[1]{\ClassError{copernicus_discussions}%
   {To use \string\url, you must have url.sty}{Install url.sty}}}
\IfFileExists{textcomp.sty}{\RequirePackage{textcomp}\let\permil\textperthousand}%
   {\ClassWarningNoLine{copernicus_discussions}{Cannot find textcomp.sty; proceeding without it}%
   \newcommand{\permil}{\ensuremath{\kern-.05em%
   \raise.5ex\hbox{\the\scriptfont0 0}%
   \kern-.15em/\kern-.15em\lower.25ex\hbox{\the\scriptfont0 00}}}%
   \def\textmu{\ensuremath{\mu}}}
\IfFileExists{times.sty}{\RequirePackage{times}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find times.sty; proceeding without it}}
\IfFileExists{fix2col.sty}{\RequirePackage{fix2col}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find fix2col.sty; proceeding without it}}
\IfFileExists{amssymb.sty}{\RequirePackage{amssymb}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find amssymb.sty; proceeding without it}}
\IfFileExists{ifthen.sty}{\RequirePackage{ifthen}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find ifthen.sty; proceeding without it}}
\IfFileExists{array.sty}{\RequirePackage{array}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find array.sty; proceeding without it}}
\IfFileExists{multicol.sty}{\RequirePackage{multicol}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find multicol.sty; proceeding without it}}
%%
\if@cop@home\if@hvmath\RequirePackage{hvmath}\RequirePackage{hvams}\fi\fi
%%
\IfFileExists{lineno.sty}{\RequirePackage[pagewise,displaymath,mathlines,modulo]{lineno}}{%
   \ClassWarningNoLine{copernicus_discussions}{Cannot find lineno.sty; proceeding without it}}
%%
%% make sure the author doesn't forget anything
%%
\newcommand{\UndefinedError}[1]
   {\ClassError{copernicus_discussions}{You must define #1}{Add #1 to your document!}}
\newcommand{\NoSectionError}[2]
   {\ClassError{copernicus_discussions}{You forgot the section: #1}{Add #2 to your document!}}
\AtEndDocument{%
   \@ifundefined{abstractexists}{\NoSectionError{Abstract}
      {\string\begin{abstract}...\string\end{abstract}}}{}
   \@ifundefined{introductionexists}{\NoSectionError{Introduction}
      {\string\introduction}}{}
   %% The following Sections "Instrumentation" and "Data Provenance and Structure" are only used for ESSDD
   \ifessdd
      \@ifundefined{instrumentationexists}{\NoSectionError{Instrumentation}
         {\string\instrumentation}}{}
      \@ifundefined{datastructureexists}{\NoSectionError{Data Provenance and Structure}
         {\string\datastructure}}{}
   \fi
   %% End of ESSDD specific Sections
   \@ifundefined{conclusionsexists}{\NoSectionError{Conclusions}
      {\string\conclusions}}{}
   \if!\@runauth!\UndefinedError{\string\runningauthor}\fi
   \if!\@runtit!\UndefinedError{\string\runningtitle}\fi
}
\def\acpurl{% \maketitle will define correct value for \acpurl
   \ClassError{copernicus_discussions}{Did you forget \string\maketitle\space ?}
   {Add \string\maketitle\space just before your abstract!}}

\@twocolumnfalse
\setlength{\arraycolsep}{0.5mm}

\newcommand{\editorthanks}[3]{%
   \ifthenelse{\equal{#2}{}}% check if the first referee exits, if not write:
   {\\ \hspace*{4mm} Topical Editor\ #1\ thanks two unknown referees %
   for their help in evaluating this paper.}%
   {\ifthenelse{\equal{#3}{}}% check if second referee exist, if not write:
   {\\ \hspace*{4mm}Topical Editor\ #1\ thanks\ #2\ and another %
   referee for their help in evaluating this paper.}%
   {\\ \hspace*{4mm}Topical Editor\ #1\ thanks\ #2\ and\ #3\ for their %
   help in evaluating this paper.}}}
%%
%% set a big mark in the text which needs to be checked by the author
%%
\newcommand{\blackbox}{\rule{8mm}{3mm}}
%%
\newcommand{\degree}{\ensuremath{^{\circ}}}
\newcommand{\tophline}{\hline\noalign{\vspace{1mm}}}
\newcommand{\middlehline}{\noalign{\vspace{1mm}}\hline\noalign{\vspace{1mm}}}
\newcommand{\bottomhline}{\noalign{\vspace{1mm}}\hline}
%% \hhline is obsolete and only kept for compatibility:
\newcommand{\hhline}{\noalign{\vspace{1mm}}\hline\noalign{\vspace{1mm}}}
%%
%% definition of \vec
%%
\DeclareRobustCommand*{\vec}[1]{\ensuremath{%
\mathchoice{\mbox{\boldmath$\displaystyle#1$}}
           {\mbox{\boldmath$\textstyle#1$}}
           {\mbox{\boldmath$\scriptstyle#1$}}
           {\mbox{\boldmath$\scriptscriptstyle#1$}}}}
\def\testbx{bx}
%%
%% definition of \chem and \unit
%%
\if@hvmath
   \DeclareRobustCommand*{\chem}[1]{\ensuremath{%
   \mathcode`\-="0200\mathcode`\=="003D% no space around "-" and "="
   \ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}
   \DeclareRobustCommand*{\unit}[1]{\ensuremath{\def\mu{\mbox{\textmu}}\def~{\,}%
   \ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}
\else
   \let\mathrm\mathsf \let\rm\sf
   \DeclareRobustCommand*{\chem}[1]{\ensuremath{%
   \mathcode`\-="0200\mathcode`\=="003D% no space around "-" and "="
   \ifx\testbx\f@series\mbox{\boldmath$\mathsf{#1}$}\else\mathsf{#1}\fi}}
   \DeclareRobustCommand*{\unit}[1]{\ensuremath{\def\mu{\mbox{\textmu}}\def~{\,}%
   \ifx\testbx\f@series\mbox{\boldmath$\mathsf{#1}$}\else\mathsf{#1}\fi}}
\fi   

%%
%% panel for discussions journals
%%
\if@hvmath\else
   \let\textrm\textsf
   \let\rm\sf
\fi
\if@cop@home
   \usepackage[pdftex]{color}
   \usepackage[pdfpagelabels,pdftex,pagebackref,bookmarks=false,bookmarksopen,colorlinks]{hyperref}
   
   \ifonline%
      \usepackage[screen,rightpanel]{pdfscreencop}
      \setlength{\panelwidth}{5cm}%
      \newlength{\bigbutton}\setlength{\bigbutton}{0.75\panelwidth}%
      \newlength{\buttongap}\setlength{\buttongap}{0.06\panelwidth}%
      \newlength{\smallbutton}\setlength{\smallbutton}{0.5\bigbutton}%
      \addtolength{\smallbutton}{-0.5\buttongap-0.5pt}%
      \def\panelfont{\if@hvmath\rmfamily\fi\scriptsize}
   \else%
      \usepackage[print]{pdfscreencop}%
   \fi
   \def\PDFSCR@Warning#1{} % no more "No overlay specified" warnings   
   %%
   %% discussions journals dependent colors
   %%
   \ifacpd
      \definecolor{journalname}{cmyk}{1.000,0.000,0.000,0.000}
      \definecolor{panelbackground}{cmyk}{0.300,0.000,0.000,0.000}
      \definecolor{buttonbackground}{cmyk}{1.000,0.000,0.000,0.000}
      \definecolor{buttonshadow}{cmyk}{1.000,0.000,0.000,0.000}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,1.000}
   \fi
   \ifbgd
      \definecolor{journalname}{cmyk}{0.000,1.000,1.000,0.400}
      \definecolor{panelbackground}{cmyk}{0.120,0.000,0.300,0.000}
      \definecolor{buttonbackground}{cmyk}{0.300,0.000,1.000,0.200}
      \definecolor{buttonshadow}{cmyk}{0.300,0.000,1.000,0.200}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,1.000}
   \fi
   \ifcpd
      \definecolor{journalname}{cmyk}{0.000,0.200,1.000,0.000}
      \definecolor{panelbackground}{cmyk}{0.210,0.300,0.000,0.060}
      \definecolor{buttonbackground}{cmyk}{0.700,1.000,0.000,0.200}
      \definecolor{buttonshadow}{cmyk}{0.700,1.000,0.000,0.200}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,0.000}
   \fi
   \ifhessd
      \definecolor{journalname}{cmyk}{0.990,0.870,0.000,0.000}
      \definecolor{panelbackground}{cmyk}{0.190,0.000,0.270,0.000}
      \definecolor{buttonbackground}{cmyk}{0.650,0.000,1.000,0.000}
      \definecolor{buttonshadow}{cmyk}{0.650,0.000,1.000,0.000}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,1.000}
   \fi
   \ifosd
      \definecolor{journalname}{cmyk}{1.000,0.600,0.000,0.400}
      \definecolor{panelbackground}{cmyk}{0.180,0.080,0.050,0.000}
      \definecolor{buttonbackground}{cmyk}{1.000,0.600,0.000,0.400}
      \definecolor{buttonshadow}{cmyk}{1.000,0.600,0.000,0.400}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,0.000}
   \fi
   \ifsgd
      \definecolor{journalname}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{panelbackground}{cmyk}{0.000,1.000,1.000,0.200}
      \definecolor{buttonbackground}{cmyk}{0.000,1.000,0.700,0.400}
      \definecolor{buttonshadow}{cmyk}{0.000,1.000,0.700,0.400}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,0.000}
   \fi
   \iftcd
      \definecolor{journalname}{cmyk}{0.630,0.380,0.000,0.000}
      \definecolor{panelbackground}{cmyk}{0.190,0.110,0.000,0.000}
      \definecolor{buttonbackground}{cmyk}{0.630,0.380,0.000,0.000}
      \definecolor{buttonshadow}{cmyk}{0.630,0.380,0.000,0.000}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,0.000,0.000,1.000}
   \fi
   \ifgmdd
      \definecolor{journalname}{cmyk}{0.000,1.000,1.000,0.200}
      \definecolor{panelbackground}{cmyk}{0.010,0.140,0.400,0.000}
      \definecolor{buttonbackground}{cmyk}{0.000,0.400,1.000,0.000}
      \definecolor{buttonshadow}{cmyk}{0.000,0.400,1.000,0.000}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.000,1.000,1.000,0.200}
   \fi
   \ifdwesd
      \definecolor{journalname}{cmyk}{0.360,0.000,0.880,0.000}
      \definecolor{panelbackground}{cmyk}{0.610,0.170,0.030,0.000}
      \definecolor{buttonbackground}{cmyk}{0.900,0.400,0.000,0.000}
      \definecolor{buttonshadow}{cmyk}{0.900,0.400,0.000,0.000}
      \definecolor{paneltext}{cmyk}{0.000,0.000,0.000,1.000}
      \definecolor{buttontext}{cmyk}{0.360,0.000,0.880,0.000}
   \fi      
   \ifessdd
      \definecolor{journalname}{rgb}{1.,1.,1.}
      \definecolor{panelbackground}{rgb}{0.01,0.50,0.69}
      \definecolor{buttonbackground}{rgb}{0.10,0.40,0.57}
      \definecolor{buttonshadow}{rgb}{0.10,0.40,0.57}
      \definecolor{paneltext}{rgb}{1.,1.,1.}
      \definecolor{buttontext}{rgb}{1.,1.,1.}
   \fi
   \ifamtd
      \definecolor{journalname}{rgb}{0.17,0.19,0.53}
      \definecolor{panelbackground}{rgb}{0.85,0.85,0.85}
      \definecolor{buttonbackground}{rgb}{0.17,0.19,0.53}
      \definecolor{buttonshadow}{rgb}{0.17,0.19,0.53}
      \definecolor{paneltext}{rgb}{0.,0.,0.}
      \definecolor{buttontext}{rgb}{1.,1.,1.}
   \fi
   \ifsed
      \definecolor{journalname}{rgb}{0.48,0.35,0.26}
      \definecolor{panelbackground}{rgb}{0.84,0.80,0.78}
      \definecolor{buttonbackground}{rgb}{0.48,0.35,0.26}
      \definecolor{buttonshadow}{rgb}{0.48,0.35,0.26}
      \definecolor{paneltext}{rgb}{0.,0.,0.}
      \definecolor{buttontext}{rgb}{1.,1.,1.}
   \fi
   \ifesdd
      \definecolor{journalname}{rgb}{0.00,0.20,0.62}
      \definecolor{panelbackground}{rgb}{0.70,0.76,0.89}
      \definecolor{buttonbackground}{rgb}{0.00,0.20,0.62}
      \definecolor{buttonshadow}{rgb}{0.00,0.20,0.62}
      \definecolor{paneltext}{rgb}{0.,0.,0.}
      \definecolor{buttontext}{rgb}{1.,1.,1.}
   \fi 
   \ifgid
      \definecolor{journalname}{rgb}{0.01,0.30,0.63}
      \definecolor{panelbackground}{rgb}{0.63,0.63,0.63}
      \definecolor{buttonbackground}{rgb}{0.01,0.30,0.63}
      \definecolor{buttonshadow}{rgb}{0.01,0.30,0.63}
      \definecolor{paneltext}{rgb}{0.,0.,0.}
      \definecolor{buttontext}{rgb}{1.,1.,1.}
   \fi                       
   %%
   \hypersetup{pdffitwindow=true,pdfmenubar=true,pdftoolbar=true,pdfwindowui=true,%
       anchorcolor=black,citecolor=black,filecolor=black,linkcolor=black,%
       menucolor=black,pagecolor=black,urlcolor=black}
   \setlength\footskip{5mm}
   \pagestyle{plain}
   \margins{10mm}{10mm}{7mm}{7mm}
   \screensize{15.9cm}{21.6cm}
   \definecolor{backgroundcolor}{rgb}{1.,1.,1.} % white
   \ifonline\backgroundcolor{backgroundcolor}\fi
   \definecolor{section0}{rgb}{0.,0.,0.} % black
   \definecolor{section1}{rgb}{0.,0.,0.} % black
   \definecolor{section2}{rgb}{0.,0.,0.} % black
   \definecolor{section3}{rgb}{0.,0.,0.} % black
   \definecolor{section4}{rgb}{0.,0.,0.} % black
   \def\panel{\colorbox{panelbackground}
   {\begin{minipage}[t][\paperheight][t]{\panelwidth}
   %% set default font for panel:
   \if@hvmath\else\fontfamily{\sfdefault}\fi\fontseries{m}\fontshape{n}\fontsize{11}{13.7pt}\selectfont
   %% journal name, volume, pages, year, runningtitle, runningauthor:
   \null\vspace*{7mm}\centering\parbox[t]{0.8\panelwidth}%
   {\centering\color{paneltext}%
      %% overwrite of default urlcolor=black to journal-specific color @journalname for the @journalnameshort link to the journal webpage on the panel
      \renewcommand{\@journallink}{\hypersetup{urlcolor=journalname}\href{http://\@journalurl}{\@journalnameshort}}
      {\Large\bfseries\@journallink}\\[2mm]
      \if@noref\else{\small\@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear}\\[1mm]\fi
      \rule{0.8\panelwidth}{1.1pt}\\[1mm]
      {\bfseries\mbox{}\@runtit}\if@noauthor\\[0mm]\else\\[3mm]\fi
      \if@noauthor\else{\small\mbox{}\@runauth}\\[0mm]\fi
      \rule{0.8\panelwidth}{1.1pt}\\[5mm]
   } % end of centering
   %% the buttons:
   \addButton{\bigbutton}{\hyperlink{title}{\hfill\color{buttontext}Title Page\hfill}}\\[1.5mm]
   \addButton{\smallbutton}{\hyperlink{abstr}{\hfill\color{buttontext}Abstract\hfill}}%
   \hspace{\buttongap}%
   \ifessdd
      \addButton{\smallbutton}{\hyperlink{instru}{\hfill\color{buttontext}Instruments\hfill}}\\[1.5mm]
   \else
      \addButton{\smallbutton}{\hyperlink{intro}{\hfill\color{buttontext}Introduction\hfill}}\\[1.5mm]
   \fi
   \ifessdd
      \addButton{\bigbutton}{\hyperlink{datastruct}{\hfill\color{buttontext}Data Provenance \& Structure\hfill}}\\[1.5mm]
   \else   
      \addButton{\smallbutton}{\hyperlink{conclusions}{\hfill\color{buttontext}Conclusions\hfill}}%
      \hspace{\buttongap}%
      \addButton{\smallbutton}{\hyperlink{references}{\hfill\color{buttontext}References\hfill}}\\[1.5mm]
   \fi
   \@ifundefined{@numtable}% automatically defined via \@num\@captype
      {\addButton{\smallbutton}{\hfill\color{buttontext}Tables\hfill}}%
      {\addButton{\smallbutton}{\hyperlink{table}{\hfill\color{buttontext}Tables\hfill}}}%
   \hspace{\buttongap}%
   \@ifundefined{@numfigure}% automatically defined via \@num\@captype
      {\addButton{\smallbutton}{\hfill\color{buttontext}Figures\hfill}\\[4mm]}
      {\addButton{\smallbutton}{\hyperlink{figure}{\hfill\color{buttontext}Figures\hfill}}\\[4mm]}%
   \Acrobatmenu{FirstPage}{\addButton{\smallbutton}%
      {\color{buttontext}$\rule[-0.144ex]{0.35ex}{1.244ex}\!\blacktriangleleft$}}%
   \hspace{\buttongap}%
   \Acrobatmenu{LastPage}{\addButton{\smallbutton}%
     {\color{buttontext}$\blacktriangleright\!\rule[-0.144ex]{0.35ex}{1.244ex}$}}\\[1.5mm]
   \Acrobatmenu{PrevPage}{\addButton{\smallbutton}{\color{buttontext}$\blacktriangleleft$}}%
   \hspace{\buttongap}%
   \Acrobatmenu{NextPage}{\addButton{\smallbutton}{\color{buttontext}$\blacktriangleright$}}\\[1.5mm]
   \Acrobatmenu{GoBack}{\addButton{\smallbutton}{\color{buttontext}Back}}%
   \hspace{\buttongap}%
   \Acrobatmenu{Close}{\addButton{\smallbutton}{\color{buttontext}Close}}\\[1.5mm]
   \Acrobatmenu{FullScreen}{\addButton{\bigbutton}{\color{buttontext}Full Screen / Esc}}\\[4mm]
   \addButton{\bigbutton}{\href{http://\@journalurl/\@pvol/\@fpage/\@pyear/\@journalnameshortlower-\@pvol-\@fpage-\@pyear-print.pdf}%
      {\hfill\color{buttontext}Printer-friendly Version\hfill}}\\[1.5mm]
   \addButton{\bigbutton}{\href{http://\@journalurl/\@pvol/\@fpage/\@pyear/\@journalnameshortlower-\@pvol-\@fpage-\@pyear-discussion.html}%
      {\hfill\color{buttontext}Interactive Discussion\hfill}}\\[4mm]
%   {\color{journalname}\href{http://\@journalpublisherurl}{\if@cop@home\fontfamily{ma1}\selectfont\fi\@journalpublisher}}
   \href{http://creativecommons.org/licenses/by/3.0/}{\includegraphics[width=1.7cm]{CreativeCommons_Attribution_License.png}}
   \null\vspace*{10mm}
   \end{minipage}}}
   \IfFileExists{lineno.sty}{\linenumbers}{}
   \ifgerman\def\equationname{Gl.}\else\def\equationname{Eq.}\fi
   \ifgerman\def\sectionname{Kap.}\else\def\sectionname{Sect.}\fi
\fi   
%%
\def\refname{References}
\def\figurename{Fig.}
\def\tablename{Table}
\def\fnum@figure{\if@hvmath\rm\else\sf\fi\bfseries\figurename~\thefigure}
\def\fnum@table{\if@hvmath\rm\else\sf\fi\bfseries\tablename~\thetable}
\def\abstractname{Abstract}
\def\acknowname{Acknowledgement}
\def\acknowsname{Acknowledgements}
%
% option german
%
\ifgerman
   \IfFileExists{german.sty}{\RequirePackage{german}}{%
      \ClassWarningNoLine{copernicus_discussions}{Cannot find german.sty; proceeding without it}
      \@ifundefined{language}{\newcount\language \language=0}{}%
      \providecommand{\selectlanguage}[1]{\csname captions##1\endcsname
      \language=\csname l@##1\endcsname\relax}%
      \providecommand{\iflanguage}[3]{%
         \expandafter\ifx\csname l@##1\endcsname\relax ##3%
         \else \ifnum\csname l@##1\endcsname=\language ##2%
         \else ##3\fi\fi}%
      \@ifundefined{l@english}{\chardef\l@english=255}{}%
      \@ifundefined{l@german}{\chardef\l@german=254}{}%
   }
   \def\captionsgerman{%
      \def\acknowname{Danksagung}%
      \def\acknowsname{Danksagung}%
      \def\refname{Literatur}%
      \def\abstractname{Zusammenfassung}%
      \def\appendixname{Anhang}%
      \def\figurename{Abb.}%
      \def\tablename{Tabelle}}
   \def\captionsenglish{%
      \def\acknowname{Acknowledgement}%
      \def\acknowsname{Acknowledgements}%
      \def\refname{References}%
      \def\abstractname{Abstract}%
      \def\appendixname{Appendix}%
      \def\figurename{Fig.}%
      \def\tablename{Table}}
   \selectlanguage{german}
\fi
%%
%% page size and font size
%%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xipt{13.6}%
   \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\renewcommand\small{%
   \@setfontsize\small\@xpt\@xiipt
   \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
\let\footnotesize=\small
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viiipt{9.5}}
\renewcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}   

\normalsize

\topmargin -1.84cm
\headheight 0pt
\headsep 0pt
\topskip 0pt
\footskip 5mm
\oddsidemargin -1.54cm
\evensidemargin -1.54cm
\textheight 140mm
\textwidth 146mm   

\advance\textheight by \topskip
\columnsep 0.7cm
\columnseprule 0pt   

\parindent 1em
\parskip 0pt plus 1pt

\def\section{\@startsection {section}{1}{\z@}{-2em plus-1ex minus
   -.2ex}{1em plus.2ex}{\reset@font\normalsize\bfseries}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-1em plus-0.25ex
   minus-.2ex}{1em plus.2ex}{\reset@font\normalsize\bfseries}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-1em plus
   -0.25ex minus-.2ex}{1em plus.2ex}{\reset@font\normalsize\bfseries}}
\let\paragraph=\subsubsection
\let\subparagraph=\paragraph

\if@hvmath\let\reset@font=\rm\else\let\reset@font=\sf\fi
\@ifundefined{reset@font}{\let\reset@font=\relax}{}
\setcounter{secnumdepth}{3}
%%
%% code copied from latex.ltx and renamed: equation->reaction, eqn->rxn
%%
\def\rxnlabel{R}
\@definecounter{reaction}
\def\reaction{$$\refstepcounter{reaction}}
\def\endreaction{\eqno \hbox{\@rxnnum}$$\@ignoretrue}
\def\@rxnnum{{\normalfont \normalcolor (\rxnlabel\thereaction)}}
\def\stackrel#1#2{\mathrel{\mathop{#2}\limits^{#1}}}
\def\frac#1#2{{\begingroup#1\endgroup\over#2}}
\DeclareRobustCommand\sqrt{\@ifnextchar[\@sqrt\sqrtsign}
\def\@sqrt[#1]{\root #1\of}
\newcount\@rxcnt
\newcount\@rxpen
\newskip\@centering
\@centering = 0pt plus 1000pt
\def\rxnarray{%
   \stepcounter{reaction}%
   \def\@currentlabel{\p@reaction\rxnlabel\thereaction}%
   \global\@eqnswtrue
   \m@th
   \global\@rxcnt\z@
   \tabskip\@centering
   \let\\\@rxncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@rxnsel
      &\global\@rxcnt\@ne\hskip \tw@\arraycolsep \hfil${##}$\hfil
      &\global\@rxcnt\tw@ \hskip \tw@\arraycolsep
         $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@rxcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr
}
\def\endrxnarray{%
      \@@rxncr
      \egroup
      \global\advance\c@reaction\m@ne
   $$\@ignoretrue
}
\let\@rxnsel=\relax
\def\@rxncr{%
   {\ifnum0=`}\fi
   \@ifstar{%
      \global\@rxpen\@M\@yrxncr
   }{%
      \global\@rxpen\interdisplaylinepenalty \@yrxncr
   }%
}
\def\@yrxncr{\@testopt\@xrxncr\z@skip}
\def\@xrxncr[#1]{%
   \ifnum0=`{\fi}%
   \@@rxncr
   \noalign{\penalty\@rxpen\vskip\jot\vskip #1\relax}%
}
\def\@@rxncr{\let\reserved@a\relax
    \ifcase\@rxcnt \def\reserved@a{& & &}\or \def\reserved@a{& &}%
     \or \def\reserved@a{&}\else
       \let\reserved@a\@empty
       \@latex@error{Too many columns in rxnarray environment}\@ehc\fi
     \reserved@a \if@eqnsw\@rxnnum\stepcounter{reaction}\fi
     \global\@eqnswtrue\global\@rxcnt\z@\cr}
\let\@srxncr=\@rxncr
\@namedef{rxnarray*}{\def\@rxncr{\nonumber\@srxncr}\rxnarray}
\@namedef{endrxnarray*}{\nonumber\endrxnarray}
\def\leftrxn#1{\rlap{$\displaystyle #1$}}
%%
%% code copied from from fleqn.clo and renamed: equation->reaction, eqn->rxn
%% this probably only works if [fleqn] is already loaded
%%
\renewenvironment{reaction}%
    {\@beginparpenalty\predisplaypenalty
     \@endparpenalty\postdisplaypenalty
     \refstepcounter{reaction}%
     \def\@currentlabel{\p@reaction\rxnlabel\thereaction}%
     \trivlist \item[]\leavevmode
       \hb@xt@\linewidth\bgroup $\m@th% $
         \displaystyle
         \hskip\mathindent}%
        {$\hfil % $
         \displaywidth\linewidth\hbox{\@rxnnum}%
       \egroup
     \endtrivlist}
\renewenvironment{rxnarray}{%
    \stepcounter{reaction}%
    \def\@currentlabel{\p@reaction\rxnlabel\thereaction}%
    \global\@eqnswtrue\m@th
    \global\@rxcnt\z@
    \tabskip\mathindent
    \let\\=\@rxncr
    \setlength\abovedisplayskip{\topsep}%
    \ifvmode
      \addtolength\abovedisplayskip{\partopsep}%
    \fi
    \addtolength\abovedisplayskip{\parskip}%
    \setlength\belowdisplayskip{\abovedisplayskip}%
    \setlength\belowdisplayshortskip{\abovedisplayskip}%
    \setlength\abovedisplayshortskip{\abovedisplayskip}%
    $$\everycr{}\halign to\linewidth% $$
    \bgroup
      \hskip\@centering
      $\displaystyle\tabskip\z@skip{##}$\@rxnsel&%
      \global\@rxcnt\@ne \hskip \tw@\arraycolsep \hfil${##}$\hfil&%
      \global\@rxcnt\tw@ \hskip \tw@\arraycolsep
        $\displaystyle{##}$\hfil \tabskip\@centering&%
      \global\@rxcnt\thr@@
        \hb@xt@\z@\bgroup\hss##\egroup\tabskip\z@skip\cr}%
      {\@@rxncr
    \egroup
    \global\advance\c@reaction\m@ne$$% $$
    \@ignoretrue
    } % end of eqn/rxn code
%%
%%
%%
\def\desfont{\itshape}
\def\descriptionlabel#1{\hspace\labelsep \desfont #1.}
\def\description{\list{}{\labelwidth\z@ \leftmargin\z@ \itemindent-\leftmargin
   \let\makelabel\descriptionlabel\reset@font\small}}
\let\enddescription\endlist

\setcounter{topnumber}{2}
\def\topfraction{1.}
\setcounter{bottomnumber}{1}
\def\bottomfraction{1.}
\setcounter{totalnumber}{3}
\def\textfraction{0}
\def\floatpagefraction{.7}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{1.}
\def\dblfloatpagefraction{.7}

\long\def\@makecaption#1#2{%
   \vskip 10\p@
   {\reset@font\small{\bf #1.} #2\par}
   \ifonline\ifnum\csname the\@captype\endcsname=1 % for 1st fig or tab only
      \immediate\write\@auxout{\string\gdef\string\@num\@captype{}}%
      \hypertarget{\@captype}{}%
   \fi\fi
}

\long\def\@makenarrowcap#1#2{\hfill\vbox to \z@{\hsize=5cm \vss
     \reset@font\small{\bf #1.} #2\par\null}}
\def\figbox{\@ifstar{\let\egsbox\makebox\@figbox}
  {\let\egsbox\framebox\@figbox}}
\def\@figbox#1#2#3{\setbox\@tempboxa=\hbox{%
  \if!#1!\egsbox{#3}\else
  \egsbox[#1][c]{\if!#2!#3\else\@tempdima#2\relax
  \divide\@tempdima by2\relax
  \advance\@tempdima by-\fboxsep \advance\@tempdima by-\fboxrule
  \vrule\@height\@tempdima\@depth\@tempdima\@width\z@
  \vbox to \z@{\vss\hbox{#3}\vss}\fi}\fi}%
  \@tempdima=\hsize \advance\@tempdima by-\wd\@tempboxa
  \box\@tempboxa
  \ifdim\@tempdima>5.5cm \let\@makecaption=\@makenarrowcap\fi}
\let\@oxfloat=\@xfloat
\def\@xfloat#1[#2]{\@oxfloat#1[#2]\small}
\def\labelitemi{\bf --}
\def\labelitemii{\bf --}
\def\labelitemiii{$\m@th\bullet$}
\def\labelitemiv{$\m@th\cdot$}
%%
%% title block
%%
\def\maketitle{%
\def\supplement##1{\expandafter
   {\csname url\endcsname{http://\@journalurl/\@pvol/\@fpage/\@pyear/\@journalnameshortlower-\@pvol-\@fpage-\@pyear-supplement.##1}}}
\ifodd\@fpage\else
   \ClassError{copernicus_discussions}
   {Starting page must be odd!}{change the firstpage command}
\fi
\setcounter{page}{\@fpage}
\setcounter{footnote}{0}%
\begingroup
\def\@thanks{}\parindent=0pt
\global\@topnum\z@
%%
%% discussion journal title page starts here
%%
\ifonline\hypertarget{title}{}\fi
\if@cop@home
   \IfFileExists{lineno.sty}{\begin{nolinenumbers}}{}          
   \parbox[t]{8.7cm}{\fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{8}{11}\selectfont
      \@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi\\
      \@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi\\
      \if@noref\else
         doi:10.5194/\@journalnameshortlower-\@pvol-\@fpage-\@pyear
      \fi\\
      \@journalcopyright}
   \hfill\@journallogo\@sentence%
   \vfill\raggedright
   {\huge\bfseries\@title\\[5mm]}
   \if@noauthor\else
      \renewcommand{\Authfont}{\if@hvmath\rm\else\sf\fi\bfseries}
      \renewcommand{\Affilfont}{\@affilfontsize\if@hvmath\rm\else\sf\fi\mdseries}
      \setlength{\affilsep}{3mm}
      \@author\\[3mm]
   \fi
   \if@longauthorlist\else
      {\small Received: \@recvd\ -- Accepted: \@accptd\ -- Published: \@published\\[2mm]
      \if@noauthor\else Correspondence to: \@corresp\fi\\[2mm]
      \@sentpub}
      \vfill
   \fi
   \IfFileExists{lineno.sty}{\end{nolinenumbers}}{}
\else
   \IfFileExists{lineno.sty}{\begin{nolinenumbers}}{}
   \parbox[t]{\textwidth}{%
      Manuscript prepared for \@journalnameabbreviation\\
      with version \clsversion\ of the \LaTeX\ class copernicus\_discussions.cls.\\
      Date: \number\day~\ifcase\month\or January\or February\or%
         March\or April\or May\or June\or July\or August\or September\or%
         October\or November\or December\fi~\number\year}
   \vfill\raggedright
   {\huge\bfseries\@title\\[5mm]}
   \if@noauthor\else
      \renewcommand{\Authfont}{\sf\bfseries}
      \renewcommand{\Affilfont}{\@affilfontsize\sf\mdseries}
      \setlength{\affilsep}{3mm}
      \@author\\[3mm]
      {\small Correspondence to: \@corresp}
   \fi
   \vfill
   \IfFileExists{lineno.sty}{\end{nolinenumbers}}{} 
\fi  
%%
%% discusssion journal title page ends here
%%   
\renewcommand\@makefntext[1]{\parindent 1em \noindent ##1}%
\let\footnotesize\normalsize

\endgroup
\setcounter{footnote}{0}%
\let\thanks\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax
}
%%
%% end of \def\maketitle
%%
\renewcommand\and{\@centercr}
\newcommand\sw@and{\end{minipage}\\[1em]\begin{minipage}[t]{\hsize}%
  \flushleft\baselineskip12pt}

\def\journal#1{\def\@journal{#1}} \def\@journal{}

\def\msnumber#1{\def\@msnumber{#1}} \def\@msnumber{???}
\def\firstauthor#1{\def\@firstauthor{#1}} \def\@firstauthor{???}
\def\proofs#1{\def\@proofs{#1}} \def\@proofs{}
\def\offsets#1{\expandafter\split@off#1\\@@ \def\@offsets{#1}}
\def\@offsets{}
\def\split@off#1\\#2@@{\def\@corresp{#1}}
\def\correspondence#1{\def\@corresp{#1} \def\offsets##1{\def\@offsets{##1}}}
  \def\@corresp{}
%% some of the following commands are only active if \@cop@hometrue
\def\pubdiscuss#1{\if@cop@home\def\@pubdiscuss{#1}\fi} \def\@pubdiscuss{}
\def\received#1{\if@cop@home\def\@recvd{#1}\fi}        \def\@recvd{}
\def\revised#1{\if@cop@home\def\@revsd{#1}\fi}         \def\@revsd{}
\def\accepted#1{\if@cop@home\def\@accptd{#1}\fi}       \def\@accptd{}
\def\published#1{\if@cop@home\def\@published{#1}\fi}   \def\@published{}
\def\titleheight#1{\def\@tithei{#1}}                   \def\@tithei{7.5cm}
\def\affilfontsize#1{\def\@affilfontsize{#1}}          \def\@affilfontsize{}
\def\@affilfontsize{\small}
\def\pubyear#1{\if@cop@home\def\@pyear{#1}\fi}         \def\@pyear{\number\year}
\def\pubvol#1{\if@cop@home\def\@pvol{#1}\fi}           \def\@pvol{0}
\def\pubnum#1{\if@cop@home\def\@pnum{#1}\fi}           \def\@pnum{0}
\def\firstpage#1{\if@cop@home\def\@fpage{#1}\fi}       \def\@fpage{1}
\def\specialissue#1#2{\def\@speciss{#1}\def\@specissurl{#2}}  \def\@speciss{}\def\@specissurl{}
\if@cop@home
   \newcounter{jnlvolume} % the journal volume
   \setcounter{jnlvolume}{\number\year}
   \addtocounter{jnlvolume}{-\@journalstartyear}
   \addtocounter{jnlvolume}{1}
   \def\@pvol{\arabic{jnlvolume}}
   \def\@year{\number\year}
   \def\@published{\number\day~\ifcase\month\or January\or February\or%
      March\or April\or May\or June\or July\or August\or September\or%
      October\or November\or December\fi~\number\year}
\fi
\def\runningauthor#1{\def\@runauth{#1}%
\ifonline\hypersetup{pdfauthor={\@runauth}}\fi} \def\@runauth{}
\def\runningtitle#1{\def\@runtit{#1}%
\ifonline\hypersetup{pdftitle={\@runtit}}\fi}   \def\@runtit{}
\def\runninghead#1{\def\@runhd{#1}}             \if@noauthor\def\@runhd{\@runtit}\else\def\@runhd{\@runauth: \@runtit}\fi
\def\lastpage@putlabel{\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string
   \newlabel{LastPage}{{}{\thepage}{}{}{}}}%
   \addtocounter{page}{1}}
\def\@lpage{\pageref*{LastPage}}
\def\abslang{}
\def\keywords#1{\ClassWarningNoLine{copernicus_discussions}{Keywords are not supported.}}
\renewenvironment{abstract}{%
   \gdef\abstractexists{true}
   \ifgerman\abslang\fi
   \section*{\abstractname}
   \ifonline\hypertarget{abstr}{}\fi}{%
   \ifgerman
      \iflanguage{german}{\gdef\abslang{\selectlanguage{english}}}{\gdef\abslang{\selectlanguage{german}}}  
   \fi}
\newcommand{\introduction}[1][\ifgerman Einleitung \else Introduction \fi]%
   {\section{#1}\ifonline\hypertarget{intro}{}\fi%
   \def\introductionexists{true}}
%% The following Commands "Instrumentation" and "Data Provenance and Structure" are only used for ESSDD
\ifessdd
   \newcommand{\instrumentation}[1][Instrumentation]%
      {\section{#1}\ifonline\hypertarget{instru}{}\fi%
      \def\instrumentationexists{true}
      \def\introductionexists{true}}
   \newcommand{\datastructure}[1][Data Provenance and Structure]%
      {\section{#1}\ifonline\hypertarget{datastruct}{}\fi%
      \def\datastructureexists{true}
      \def\conclusionsexists{true}}
\fi
%% End of ESSDD specific Commands
\newcommand{\conclusions}[1][\ifgerman Diskussion \else Conclusions \fi]%
   {\section{#1}\ifonline\hypertarget{conclusions}{}\fi%
   \def\conclusionsexists{true}}
\newenvironment{acknowledgements}{\begin{description}\item[\acknowsname]}{\end{description}}
\newenvironment{acknowledgement}{\begin{description}\item[\acknowname]}{\end{description}}

\def\ps@runninghead{
   \def\@oddhead{\parbox[t]{\textwidth}{
   %% the discussion paper bar
   \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
   \setlength{\unitlength}{1.0cm}
   \begin{picture}(0,0)
   \ifamtd
      \color{white}\put(15.6,0){\rule[-155mm]{0.5mm}{165mm}}
   \fi
   \color[gray]{0.85}\put(15.1,0){\rule[-155mm]{5mm}{165mm}}
   \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{10}{10}\selectfont
   \put(15.18,0.1){\rotatebox{270}{\textcolor{discussion_bartext}{Discussion Paper \quad | \quad Discussion Paper \quad | \quad Discussion Paper \quad | \quad Discussion Paper \quad |}}}
   \end{picture}}}
   %% end of discussion paper bar
   \def\@evenhead{\parbox[t]{\textwidth}{
   %% the discussion paper bar
   \definecolor{discussion_bartext}{cmyk}{0.000,0.000,0.000,0.500}
   \setlength{\unitlength}{1.0cm}
   \begin{picture}(0,0)
   \ifamtd
      \color{white}\put(15.6,0){\rule[-155mm]{0.5mm}{165mm}}
   \fi
   \color[gray]{0.85}\put(15.1,0){\rule[-155mm]{5mm}{165mm}}
   \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{10}{10}\selectfont
   \put(15.18,0.1){\rotatebox{270}{\textcolor{discussion_bartext}{Discussion Paper \quad | \quad Discussion Paper \quad | \quad Discussion Paper \quad | \quad Discussion Paper \quad |}}}
   \end{picture}}}
   \def\@oddfoot{\hfil\thepage\hfil}
   \def\@evenfoot{\hfil\thepage\hfil}}   

\def\iftwocol#1#2{\if@twocolumn#1\else #2\fi}

\pagenumbering{arabic}

\if@twoside \flushbottom \fi

\@twosidetrue\ps@runninghead
\newcommand\fncomma{\textsuperscript{,}}
\AtBeginDocument{\mathindent\z@}
%% commands for narrow math
\AtBeginDocument{%
\thinmuskip = 1mu%
\medmuskip = 2mu plus 1mu minus 1mu%
\thickmuskip = 3mu plus 1mu%
}
\AtBeginDocument{\if@hvmath\else\fontfamily{\sfdefault}\fi\selectfont}
%%
%% ------------------------------------------------------------------------
%%
%% Copyright 1997-1999 Patrick W Daly
%% Max-Planck-Institut f\"ur Sonnensystemforschung
%% Max-Planck-Str. 2
%% D-37191 Katlenburg-Lindau
%% Germany
%% E-mail: daly@mps.mpg.de
%%
\def\ModuleVersion#1[#2]{}
    \ModuleVersion{authblk}
          [1999/02/23 1.2 (PWD)]
%% authblk coding copyright (C) 1997 Patrick W. Daly
\newcommand\Authfont{\normalfont}
\newcommand\Affilfont{\normalfont}
\newcommand\Authsep{, }
\newcommand\Authands{, and }
\newcommand\Authand{ and }
\newlength{\affilsep}\setlength{\affilsep}{1em}
\newlength{\@affilsep}
\newcounter{Maxaffil}
\setcounter{Maxaffil}{2}
\newcounter{authors}
\newcounter{affil}
\newif\ifnewaffil \newaffiltrue
\newcommand\AB@authnote[1]{\textsuperscript{\normalfont#1}}
\newcommand\AB@affilnote[1]{\textsuperscript{\normalfont#1}}
\providecommand\textsuperscript[1]{$^{#1}$}
\newcommand\AB@blk@and{\protect\Authfont\protect\AB@setsep}
\newcommand\AB@pand{\protect\and \protect\Authfont \protect\AB@setsep}
\@namedef{@sep1}{}
\@namedef{@sep2}{\Authand}
\newcommand\AB@affilsep{\protect\Affilfont}
\newcommand\AB@affilsepx{\protect\\\protect\Affilfont}
\newcommand\AB@setsep{\setlength{\@affilsep}{\affilsep}}
\newcommand\AB@resetsep{\setlength{\@affilsep}{\z@}}
\newcommand\AB@authlist{}
\newcommand\AB@affillist{}
\newcommand\AB@authors{}
\newcommand\AB@empty{}
\xdef\AB@author{\noexpand\AB@blk@and\@author}
\renewcommand\author[2][]%
      {\ifnewaffil\addtocounter{affil}{1}%
       \edef\AB@thenote{\arabic{affil}}\fi
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \setcounter{Maxaffil}{0}\fi
      \ifnum\value{authors}>1\relax
      \@namedef{@sep\number\c@authors}{\Authsep}\fi
      \addtocounter{authors}{1}%
      \begingroup
          \let\protect\@unexpandable@protect \let\and\AB@pand
          \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
         \@temptokena=\expandafter{\AB@authors}%
         {\def\\{\protect\\[\@affilsep]\protect\Affilfont
              \protect\AB@resetsep}%
              \xdef\AB@author{\AB@blk@and#2}%
       \ifnewaffil\gdef\AB@las{}\gdef\AB@lasx{\protect\Authand}\gdef\AB@as{}%
           \xdef\AB@authors{\the\@temptokena\AB@blk@and}%
       \else
          \xdef\AB@authors{\the\@temptokena\AB@as\AB@au@str}%
          \global\let\AB@las\AB@lasx\gdef\AB@lasx{\protect\Authands}%
          \gdef\AB@as{\Authsep}%
       \fi
       \gdef\AB@au@str{#2}}%
         \@temptokena=\expandafter{\AB@authlist}%
         \let\\=\authorcr
         \xdef\AB@authlist{\the\@temptokena
           \protect\@nameuse{@sep\number\c@authors}%
           \protect\Authfont#2\AB@authnote{\AB@note}}%
      \endgroup
      \ifnum\value{authors}>2\relax
      \@namedef{@sep\number\c@authors}{\Authands}\fi
      \newaffilfalse
}
\newcommand\authorcr{\protect\\ \protect\Authfont \protect\AB@setsep}%
\newcommand\affil[2][]%
   {\newaffiltrue\let\AB@blk@and\AB@pand
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \setcounter{Maxaffil}{0}\fi
      \begingroup
        \let\protect\@unexpandable@protect
        \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
        \@temptokena=\expandafter{\AB@authors}%
        {\def\\{\protect\\\protect\Affilfont}\xdef\AB@temp{#2}}%
         \xdef\AB@authors{\the\@temptokena\AB@las\AB@au@str
         \protect\\[\affilsep]\protect\Affilfont\AB@temp}%
         \gdef\AB@las{}\gdef\AB@au@str{}%
        {\def\\{, \ignorespaces}\xdef\AB@temp{#2}}%
        \@temptokena=\expandafter{\AB@affillist}%
        \xdef\AB@affillist{\the\@temptokena \AB@affilsep
          \AB@affilnote{\AB@note}\protect\Affilfont\AB@temp}%
      \endgroup
       \let\AB@affilsep\AB@affilsepx
}
\def\@author{}
\renewcommand\@author{\ifx\AB@affillist\AB@empty\AB@author\else
      \ifnum\value{affil}>\value{Maxaffil}\def\rlap##1{##1}%
    \AB@authlist\\[\affilsep]\AB@affillist
    \else  \AB@authors\fi\fi}
%%
%% ------------------------------------------------------------------------
%%
%% Copyright 1993-1999 Patrick W Daly
%% Max-Planck-Institut f\"ur Sonnensystemforschung
%% Max-Planck-Str. 2
%% D-37191 Katlenburg-Lindau
%% Germany
%% E-mail: daly@mps.mpg.de
%%
\def\ModuleVersion#1[#2]{}
    \ModuleVersion{appendix}
           [1999/02/23 2.1 (PWD)]
\@ifundefined{iffigcaps}{}
  {\PackageWarningNoLine{appendix}
     {***********************************\MessageBreak
      This package read in after `figcaps'\MessageBreak
      There could be problems with sublabelled\MessageBreak
      figure and table numbers.\MessageBreak
      ***********************************}}
\providecommand{\appendixname}{Appendix}
\let\orisection=\section
\let\theolds=\thesection
\let\theoldss=\thesubsection
\def\appendix{\par
  \setcounter{section}{0}
  \setcounter{subsection}{0}
  \def\thesection{\Alph{section}}
  \def\thesubsection{\thesection\arabic{subsection}}
  \setcounter{secnumdepth}{4}
  \@addtoreset{equation}{section}
  \setcounter{equation}{0}
  \def\theequation{\thesection\arabic{equation}}
  \def\@Alph##1{\ifcase##1A\or A\or B\or C\or D\else\@Ialph{##1}\fi}
  \def\section{\@startsection {section}{1}{\z@}{-2em plus
    -1ex minus-.2ex}{1em plus.2ex}{\reset@font
    \normalsize
    \bfseries\noindent \appendixname~}}
}
\def\noappendix{\setcounter{secnumdepth}{0}
  \global\let\section=\orisection
  \global\let\thesection=\theolds
  \global\let\thesubsection=\theoldss
}
%%
%% ------------------------------------------------------------------------
%%
%% Copyright 1993-1999 Patrick W Daly
%% Max-Planck-Institut f\"ur Sonnensystemforschung
%% Max-Planck-Str. 2
%% D-37191 Katlenburg-Lindau
%% Germany
%% E-mail: daly@mps.mpg.de
%%
\def\ModuleVersion#1[#2]{}
    \ModuleVersion{figcaps}
        [1999/02/23 4.7 (PWD)]
\@ifundefined{chapter}{}{%
    \PackageError{figcaps}
     {`figcaps' may only be used with article-like classes}
     {There is no help. You just cannot use `figcaps'}}
\newif\iffigcaps \figcapstrue
\newif\iffigmark \figmarkfalse
\newif\if@figpage \@figpagefalse
\@ifundefined{figurecapname}{\def\figurecapname{Figure Captions}}{}
\@ifundefined{tablepagename}{\def\tablepagename{Tables}}{}
\@ifundefined{figurepagename}{\def\figurepagename{Figures}}{}
\begingroup
  \catcode `|=0 \catcode `[= 1
  \catcode`]=2 \catcode `\{=12 \catcode `\}=12
  \catcode`\^^M=13 \catcode`\\=12 %
|long|gdef|@vfig#1\end{figure}[|def|@term[\end{figure}]%
          |expandafter|writelof#1^^M\end{figure}^^M|end[figure]]%
|long|gdef|@vsfig#1\end{figure*}[|def|@term[\end{figure*}]%
          |expandafter|writelof#1^^M\end{figure*}^^M|end[figure*]]%
|long|gdef|@vtab#1\end{table}[|def|@term[\end{table}]%
          |expandafter|writelot#1^^M\end{table}^^M|end[table]]%
|long|gdef|@vstab#1\end{table*}[|def|@term[\end{table*}]%
          |expandafter|writelot#1^^M\end{table*}^^M|end[table*]]%
|long|gdef|@fcaponly#1\caption[|endgroup|@fcaption]%
|long|gdef|@feject#1\end{figure}[|end[figure]]%
  |endgroup
\long\def\FC@writefile#1#2{\@ifundefined{tf@#1}{}{%
  \immediate\write\csname tf@#1\endcsname{#2}}}
\def\lof{lof} \def\lot{lot}

{\catcode`\^^M=13%
  \long\gdef\writelof#1^^M{\def\@tempb{#1}%
      \ifx\@tempb\@term\let\@tempa\relax\else
      \if@filesw\FC@writefile{pof}{#1}\fi\let\@tempa\writelof\fi \@tempa}
  \long\gdef\writelot#1^^M{\def\@tempb{#1}%
      \ifx\@tempb\@term\let\@tempa\relax\else
      \if@filesw\FC@writefile{pot}{#1}\fi\let\@tempa\writelot\fi \@tempa}
}
\def\@fcaption{\refstepcounter\@captype \@ifnextchar[{\@@fcapopt}{\@@fcap}}
\def\@@fcapopt[#1]#2{\@caption\@captype[]{#2}\begingroup\set@literal\@feject}
\def\@@fcap#1{\@caption\@captype[]{#1}\begingroup\set@literal\@feject}
\def\figcapson{\figcapstrue}
\def\figcapsoff{\figcapsfalse}
\def\figmarkon{\figmarktrue}
\def\figmarkoff{\figmarkfalse}
\def\figure{\iffigcaps \let\@tempb=\@zfigure \else \let\@tempb=\@float\fi
  \@tempb{figure}}
\def\@zfigure#1{\begingroup\set@literal\@ifnextchar[{\@figure}{\@figure[]}}
\def\@figure[#1]{\@ifundefined{tf@pof}{\newwrite\tf@pof
     \if@filesw\immediate\openout\tf@pof\jobname.\lof\relax
     \ifFC@appendix\FC@writefile{pof}{\string\doappendix}\fi\fi}{}%
  \refstepcounter{figure}\iffigmark\marginpar{\fbox{\fnum@figure}}\fi
  \def\@captype{figure}\if@filesw\FC@writefile{pof}{\string\begin{figure}}\fi
  \@vfig}

\def\endfigure{\iffigcaps
    \endgroup\if@filesw\FC@writefile{pof}{\string\end{figure}}\fi\else
    \end@float\fi}

\@namedef{figure*}{\iffigcaps \let\@tempb=\@zsfigure \else
  \let\@tempb=\@dblfloat\fi \@tempb{figure}}
\def\@zsfigure#1{\begingroup\set@literal\@ifnextchar[{\@sfigure}{\@sfigure[]}}
\def\@sfigure[#1]{\@ifundefined{tf@pof}{\newwrite\tf@pof
     \if@filesw\immediate\openout\tf@pof\jobname.\lof\relax
     \ifFC@appendix\FC@writefile{pof}{\string\doappendix}\fi\fi}{}%
  \refstepcounter{figure}\iffigmark\marginpar{\fbox{\fnum@figure}}\fi
  \def\@captype{figure}\if@filesw\FC@writefile{pof}{\string\begin{figure}}\fi
  \@vsfig}

\@namedef{endfigure*}{\iffigcaps\endfigure\else\end@dblfloat\fi}
\def\table{\iffigcaps \let\@tempb=\@ztable \else \let\@tempb=\@float\fi
  \@tempb{table}}
\def\@ztable#1{\begingroup\set@literal\@ifnextchar[{\@table}{\@table[]}}
\def\@table[#1]{\@ifundefined{tf@pot}{\newwrite\tf@pot
     \if@filesw\immediate\openout\tf@pot\jobname.\lot\relax
     \ifFC@appendix\FC@writefile{pot}{\string\doappendix}\fi\fi}{}%
  \refstepcounter{table}\iffigmark\marginpar{\fbox{\fnum@table}}\fi
  \def\@captype{table}\if@filesw\FC@writefile{pot}{\string\begin{table}}\fi
  \@vtab}

\def\endtable{\iffigcaps
   \endgroup\if@filesw\FC@writefile{pot}{\string\end{table}}\fi\else
   \end@float\fi}

\@namedef{table*}{\iffigcaps \let\@tempb=\@zstable \else
  \let\@tempb=\@dblfloat\fi \@tempb{table}}
\def\@zstable#1{\begingroup\set@literal\@ifnextchar[{\@stable}{\@stable[]}}
\def\@stable[#1]{\@ifundefined{tf@pot}{\newwrite\tf@pot
     \if@filesw\immediate\openout\tf@pot\jobname.\lot\relax
     \ifFC@appendix\FC@writefile{pot}{\string\doappendix}\fi\fi}{}%
  \refstepcounter{table}\iffigmark\marginpar{\fbox{\fnum@table}}\fi
  \def\@captype{table}\if@filesw\FC@writefile{pot}
    {\string\begin{table}}%
    \fi\@vstab}

\@namedef{endtable*}{\iffigcaps\endtable\else
   \end@dblfloat\fi}
\def\tableofcontents{%
  \PackageWarningNoLine{figcaps}
   {Ignored: \protect\tableofcontents\space command}}
\def\listoffigures{%
  \PackageWarningNoLine{figcaps}
   {Ignored: \protect\listoffigures\space command}}
\def\listoftables{%
  \PackageWarningNoLine{figcaps}
   {Ignored: \protect\listoftables\space command}}
\def\addtocontents#1#2{\relax}
\def\addcontentsline#1#2#3{\relax}
{\catcode`\^^M=\active \gdef\cr@relax{\catcode`\^^M=\active \let^^M=\relax}}
\def\set@literal{\cr@relax \let\do\@makeother\dospecials}
\def\@figurecaps{\@ifundefined{tf@pof}{}{\if@filesw
  \immediate\closeout\tf@pof\fi
  \@ifundefined{appendixname}{}{\def\appendixname{}}
  \parindent\z@
  \reset@figtab\clearpage\section*{\figurecapname}\vspace{1cm}%
    \@mkboth{\uppercase{\figurecapname}}{\uppercase{\figurecapname}}%
    \addcontentsline{toc}{section}{\figurecapname}%
  \def\figure{\def\addcontentsline####1####2####3{}%
    \def\@captype{figure}%
    \begingroup\set@literal\@fcaponly
   }\def\endfigure{\endgroup\bigskip}%
  {\let\@makecaption=\@makefcaption
  \@input{\jobname.\lof}}%
  \clearpage}}%
\def\@tablepage{\@ifundefined{tf@pot}{}{\if@filesw
  \immediate\closeout\tf@pot\fi
  \@ifundefined{appendixname}{}{\def\appendixname{}}
  \parindent\z@
  \reset@figtab\clearpage\section*{\tablepagename}
    \@mkboth{\uppercase{\tablepagename}}{\uppercase{\tablepagename}}%
   \def\table{\def\@captype{table}\vbox\bgroup
    \small
   }\def\endtable{\egroup\bigskip}%
  \@input{\jobname.\lot}
  \clearpage}}
\def\printfigures{\@figpagetrue}
\def\@figurepage{\if@figpage\@ifundefined{tf@pof}{}{%
  \@ifundefined{appendixname}{}{\def\appendixname{}}
  \reset@figtab\clearpage\section*{\figurepagename}%
  \@mkboth{\uppercase{\figurepagename}}{\uppercase{\figurepagename}}%
  \begingroup
  \def\figure{\def\@captype{figure}\vbox\bgroup}\def\endfigure{\egroup
    \vspace{20pt}}%
  \def\label##1{}%
  \@input{\jobname.\lof}\newpage\endgroup}\fi}
\def\reset@figtab{%
  \setcounter{figure}{0}\setcounter{table}{0}
}
\AtEndDocument{\iffigcaps\IfFileExists{lineno.sty}{\nolinenumbers}{}\@tablepage\@figurecaps\@figurepage\fi}
\AtEndDocument{\clearpage\lastpage@putlabel}
\let\@appendix=\appendix
\newif\ifFC@appendix \FC@appendixfalse
\def\appendix{\FC@appendixtrue
  \@ifundefined{tf@pof}{}{\if@filesw\FC@writefile{pof}{\string\doappendix}\fi}%
  \@ifundefined{tf@pot}{}{\if@filesw\FC@writefile{pot}{\string\doappendix}\fi}%
  \global\let\@section=\section
  \doappendix
  \let\@@section=\section
  \def\section{%
    \@ifundefined{tf@pof}{}{\if@filesw\FC@writefile{pof}{\string
        \stepcounter{section}}\fi}%
    \@ifundefined{tf@pot}{}{\if@filesw\FC@writefile{pot}{\string
        \stepcounter{section}}\fi}%
    \@@section}
  \global\let\reset@figtab=\@unappendix}
\def\doappendix{%
  \global\let\@thefigure=\thefigure
  \global\let\@thetable=\thetable
  \global\let\@cl@section=\cl@section
  \@appendix
}
\def\@unappendix{\FC@appendixfalse
  \setcounter{figure}{0}\setcounter{table}{0}
  \let\thefigure=\@thefigure
  \let\thetable=\@thetable
  \let\cl@section=\@cl@section
  \let\section=\@section
}
\let\@makefcaption=\@makecaption
\figcapsfalse
%%
%% ------------------------------------------------------------------------
%%
%% Natbib configuration, added by Patrick Daly, Oct 16, 2006
%% replacing the integrated natbib module.
%% These formatting lines have been extracted from natbib.dtx
%% and were intended for egs.cls, egu.cls originally
\RequirePackage[authoryear,round]{natbib}
\def\NAT@sort{0}\def\NAT@cmprs{0}
\renewcommand\NAT@sep{;} \renewcommand\NAT@cmt{, }
\renewcommand\NAT@aysep{,} \renewcommand\NAT@yrsep{,}
\setlength{\bibsep}{\z@}
\def\bibsection{%
    \noappendix\section*{\refname}\ifonline\hypertarget{references}{}\fi}
\let\bibfont\small
% Force the author-year style, even when people use \bibitem merely
%   as \item without natbib syntax
\NAT@numbersfalse
\NAT@set@cites
\let\NAT@set@cites\relax
% The copernicus.bst will prefix URLs with "URL" unless otherwise defined
% So define it otherwise here
\newcommand{\urlprefix}{}
%%
%% End of file `copernicus_discussions.cls'.
