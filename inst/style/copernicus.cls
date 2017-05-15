%% File: copernicus.cls
%% ---------------------------------
%% The LaTeX2e class file for journals published by Copernicus Publications (Copernicus GmbH)
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
%% Version 4.2, 2011/08/16

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\def\MyProvidesClass#1 [#2 #3 #4]
   {\ProvidesClass{#1}[#2 #3 #4]%
   \def\clsname{#1}\def\clsdate{#2}\def\clsversion{#3}\def\clsinfo{#4}}
\MyProvidesClass{copernicus}
   [2011/08/16 4.2 (DS)]
%%
%% twostage journals
%%
\newif\ifacp
\newif\ifbg
\newif\ifcp
\newif\ifhess
\newif\ifos
\newif\iftc
\newif\ifgmd
\newif\ifamt
\newif\ifse
\newif\ifesd
\newif\ifgi
%%
%% other journals
%%
\newif\ifadgeo
\newif\ifangeo
\newif\ifnhess
\newif\ifnpg
\newif\ifars
\newif\ifastra
\newif\ifsmsps
%%
%% other if
%%
\newif\if@cop@home
\newif\ifgerman
\newif\iftwostagejnl
\newif\ifonline
\newif\if@ps
\newif\if@aglet
\newif\if@draft
\newif\if@headers \@headerstrue
\newif\if@nohyperref
\newif\if@noline
\newif\if@nolastpage
\newif\if@noauthor
\newif\if@noref
\newif\if@sil
\newif\if@longauthorlist
%%
%% draft options
%%
\DeclareOption{draft}{\@drafttrue\@headersfalse}
\DeclareOption{ms}{\@drafttrue\@headersfalse}
%%
%% options for twostage journals
%%
\DeclareOption{acp}{\acptrue\twostagejnltrue}
\DeclareOption{bg}{\bgtrue\twostagejnltrue}
\DeclareOption{os}{\ostrue\twostagejnltrue}
\DeclareOption{hess}{\hesstrue\twostagejnltrue}
\DeclareOption{cp}{\cptrue\twostagejnltrue}
\DeclareOption{tc}{\tctrue\twostagejnltrue}
\DeclareOption{gmd}{\gmdtrue\twostagejnltrue}
\DeclareOption{amt}{\amttrue\twostagejnltrue}
\DeclareOption{se}{\setrue\twostagejnltrue}
\DeclareOption{esd}{\esdtrue\twostagejnltrue}
\DeclareOption{gi}{\gitrue\twostagejnltrue}
%%
%% options for other journals
%%
\DeclareOption{adgeo}{\adgeotrue}
\DeclareOption{angeo}{\angeotrue}
\DeclareOption{angeocom}{\@aglettrue}
\DeclareOption{nhess}{\nhesstrue}
\DeclareOption{npg}{\npgtrue}
\DeclareOption{ars}{\arstrue}
\DeclareOption{astra}{\astratrue}
\DeclareOption{smsps}{\smspstrue}
%%
%% other options
%%
\DeclareOption{german}{\germantrue}
\DeclareOption{online}{\onlinetrue}
\DeclareOption{fleqn}{\relax}
\DeclareOption{twoside}{\relax}
\DeclareOption{twocolumn}{\relax}
\DeclareOption{titlepage}{\relax}
\DeclareOption{headers}{\@headerstrue}
\DeclareOption{noheaders}{\@headersfalse}
\DeclareOption{nohyperref}{\@nohyperreftrue}
\DeclareOption{noline}{\@nolinetrue}
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
%%
%% now for each journal
%%
\ifacp
   \renewcommand{\@journalname}{Atmospheric Chemistry and Physics}
   \renewcommand{\@journalnameabbreviation}{Atmos. Chem. Phys.}
   \renewcommand{\@journalnameshort}{ACP}
   \renewcommand{\@journalnameshortlower}{acp}
   \renewcommand{\@journalurl}{www.atmos-chem-phys.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2001}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{42.0mm}{\vskip-3.5mm\includegraphics[width=15.5mm]{egulogo.pdf}\\[-19.3mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{8.3mm}\rule{29.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.}[1.0]{Atmospheric}\\
      \null\hfill\scalebox{1.}[1.0]{Chemistry}\\
      \null\hfill\scalebox{1.}[1.0]{and Physics}}\\[-2.7mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{32.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifbg
   \renewcommand{\@journalname}{Biogeosciences}
   \renewcommand{\@journalnameabbreviation}{Biogeosciences}
   \renewcommand{\@journalnameshort}{BG}
   \renewcommand{\@journalnameshortlower}{bg}
   \renewcommand{\@journalurl}{www.biogeosciences.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2004}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{44.0mm}{\vskip-3.5mm\includegraphics[width=10.5mm]{egulogo.pdf}\\[-14.8mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{6.3mm}\rule{33.7mm}{1pt}\\[1.9mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.}[1.0]{Biogeosciences}}\\[-0.4mm]
      \null\hspace{0.5mm}\rule{1.0mm}{1pt}\hspace{6.5mm}\rule{36.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifcp
   \renewcommand{\@journalname}{Climate of the Past}
   \renewcommand{\@journalnameabbreviation}{Clim. Past}
   \renewcommand{\@journalnameshort}{CP}
   \renewcommand{\@journalnameshortlower}{cp}
   \renewcommand{\@journalurl}{www.clim-past.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2005}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{34.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-15.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{23.7mm}{1pt}\\[0.1mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Climate}\\
      \null\hfill\scalebox{1.0}[1.0]{of the Past}}\\[-2.4mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{26.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifhess
   \renewcommand{\@journalname}{Hydrology and Earth System Sciences}
   \renewcommand{\@journalnameabbreviation}{Hydrol. Earth Syst. Sci.}
   \renewcommand{\@journalnameshort}{HESS}
   \renewcommand{\@journalnameshortlower}{hess}
   \renewcommand{\@journalurl}{www.hydrol-earth-syst-sci.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{1997}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{45.0mm}{\vskip-3.5mm\includegraphics[width=15.5mm]{egulogo.pdf}\\[-19.3mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{8.3mm}\rule{32.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Hydrology and}\\
      \null\hfill\scalebox{1.0}[1.0]{Earth System}\\
      \null\hfill\scalebox{1.0}[1.0]{Sciences}}\\[-2.7mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{35.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifos
   \renewcommand{\@journalname}{Ocean Science}
   \renewcommand{\@journalnameabbreviation}{Ocean Sci.}
   \renewcommand{\@journalnameshort}{OS}
   \renewcommand{\@journalnameshortlower}{os}
   \renewcommand{\@journalurl}{www.ocean-sci.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2005}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{42.0mm}{\vskip-3.5mm\includegraphics[width=10.5mm]{egulogo.pdf}\\[-14.8mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{6.3mm}\rule{31.7mm}{1pt}\\[1.9mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Ocean Science}}\\[-0.4mm]
      \null\hspace{0.5mm}\rule{1.0mm}{1pt}\hspace{6.5mm}\rule{34.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\iftc
   \renewcommand{\@journalname}{The Cryosphere}
   \renewcommand{\@journalnameabbreviation}{The Cryosphere}
   \renewcommand{\@journalnameshort}{TC}
   \renewcommand{\@journalnameshortlower}{tc}
   \renewcommand{\@journalurl}{www.the-cryosphere.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2007}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{43.0mm}{\vskip-3.5mm\includegraphics[width=10.5mm]{egulogo.pdf}\\[-14.8mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{6.3mm}\rule{32.7mm}{1pt}\\[1.9mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{The Cryosphere}}\\[-0.4mm]
      \null\hspace{0.5mm}\rule{1.0mm}{1pt}\hspace{6.5mm}\rule{35.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifgmd
   \renewcommand{\@journalname}{Geoscientific Model Development}
   \renewcommand{\@journalnameabbreviation}{Geosci. Model Dev.}
   \renewcommand{\@journalnameshort}{GMD}
   \renewcommand{\@journalnameshortlower}{gmd}
   \renewcommand{\@journalurl}{www.geosci-model-dev.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{53.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-15.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{42.7mm}{1pt}\\[0.1mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Geoscientific}\\
      \null\hfill\scalebox{1.0}[1.0]{Model Development}}\\[-2.4mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{45.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifamt
   \renewcommand{\@journalname}{Atmospheric Measurement Techniques}
   \renewcommand{\@journalnameabbreviation}{Atmos. Meas. Tech.}
   \renewcommand{\@journalnameshort}{AMT}
   \renewcommand{\@journalnameshortlower}{amt}
   \renewcommand{\@journalurl}{www.atmos-meas-tech.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2008}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{43.5mm}{\vskip-3.5mm\includegraphics[width=15.5mm]{egulogo.pdf}\\[-19.3mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{8.3mm}\rule{31.2mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.}[1.0]{Atmospheric}\\
      \null\hfill\scalebox{1.}[1.0]{Measurement}\\
      \null\hfill\scalebox{1.}[1.0]{Techniques}}\\[-2.7mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{33.5mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifse
   \renewcommand{\@journalname}{Solid Earth}
   \renewcommand{\@journalnameabbreviation}{Solid Earth}
   \renewcommand{\@journalnameshort}{SE}
   \renewcommand{\@journalnameshortlower}{se}
   \renewcommand{\@journalurl}{www.solid-earth.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2010}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{34.0mm}{\vskip-3.5mm\includegraphics[width=10.5mm]{egulogo.pdf}\\[-14.8mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{6.3mm}\rule{23.7mm}{1pt}\\[1.9mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.}[1.0]{Solid Earth}}\\[-0.4mm]
      \null\hspace{0.5mm}\rule{1.0mm}{1pt}\hspace{6.5mm}\rule{26.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifesd
   \renewcommand{\@journalname}{Earth System Dynamics}
   \renewcommand{\@journalnameabbreviation}{Earth Syst. Dynam.}
   \renewcommand{\@journalnameshort}{ESD}
   \renewcommand{\@journalnameshortlower}{esd}
   \renewcommand{\@journalurl}{www.earth-syst-dynam.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2010}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{41.0mm}{\vskip-3.5mm\includegraphics[width=12.2mm]{egulogo.pdf}\\[-15.7mm]
      \null\hspace{0.5mm}\rule{2.5mm}{1pt}\hspace{7.3mm}\rule{30.7mm}{1pt}\\[0.1mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Earth System}\\
      \null\hfill\scalebox{1.0}[1.0]{Dynamics}}\\[-2.4mm]
      \null\hspace{0.5mm}\rule{1.5mm}{1pt}\hspace{6.0mm}\rule{33.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifgi
   \renewcommand{\@journalname}{Geoscientific Instrumentation, Methods and Data Systems}
   \renewcommand{\@journalnameabbreviation}{Geosci. Instrum. Method. Data Syst.}
   \renewcommand{\@journalnameshort}{GI}
   \renewcommand{\@journalnameshortlower}{gi}
   \renewcommand{\@journalurl}{www.geosci-instrum-method-data-syst.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2011}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{32mm}{\vskip-3mm\includegraphics[width=33mm]{GI_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifadgeo
   \renewcommand{\@journalname}{Advances in Geosciences}
   \renewcommand{\@journalnameabbreviation}{Adv. Geosci.}
   \renewcommand{\@journalnameshort}{ADGEO}
   \renewcommand{\@journalnameshortlower}{adgeo}
   \renewcommand{\@journalurl}{www.adv-geosci.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2003}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{39.5mm}{\vskip-3.5mm\includegraphics[width=13.0mm]{egulogo.pdf}\\[-16.8mm]
      \null\hspace{0.5mm}\rule{3.0mm}{1pt}\hspace{8.3mm}\rule{27.7mm}{1pt}\\[0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Advances in}\\[0.7mm]
      \null\hfill\scalebox{1.0}[1.0]{Geosciences}}\\[-2.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{29.5mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifangeo
   \renewcommand{\@journalname}{Annales Geophysicae}
   \renewcommand{\@journalnameabbreviation}{Ann. Geophys.}
   \renewcommand{\@journalnameshort}{ANGEO}
   \renewcommand{\@journalnameshortlower}{angeo}
   \renewcommand{\@journalurl}{www.ann-geophys.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{1983}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{40.0mm}{\vskip-3.5mm\includegraphics[width=13mm]{egulogo.pdf}\\[-16.5mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.8mm}\rule{29.7mm}{1pt}\\[0.0mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Annales}\\
      \null\hfill\scalebox{1.0}[1.0]{Geophysicae}}\\[-2.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{30.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifnhess
   \renewcommand{\@journalname}{Natural Hazards and Earth System Sciences}
   \renewcommand{\@journalnameabbreviation}{Nat. Hazards Earth Syst. Sci.}
   \renewcommand{\@journalnameshort}{NHESS}
   \renewcommand{\@journalnameshortlower}{nhess}
   \renewcommand{\@journalurl}{www.nat-hazards-earth-syst-sci.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2001}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{50.0mm}{\vskip-3.5mm\includegraphics[width=15.5mm]{egulogo.pdf}\\[-19.3mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{8.3mm}\rule{37.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Natural Hazards}\\
      \null\hfill\scalebox{1.0}[1.0]{and Earth}\\
      \null\hfill\scalebox{1.0}[1.0]{System Sciences}}\\[-2.7mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{40.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
\ifnpg
   \renewcommand{\@journalname}{Nonlinear Processes in Geophysics}
   \renewcommand{\@journalnameabbreviation}{Nonlin. Processes Geophys.}
   \renewcommand{\@journalnameshort}{NPG}
   \renewcommand{\@journalnameshortlower}{npg}
   \renewcommand{\@journalurl}{www.nonlin-processes-geophys.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{1994}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{51.5mm}{\vskip-3.5mm\includegraphics[width=13.0mm]{egulogo.pdf}\\[-16.8mm]
      \null\hspace{0.5mm}\rule{3.0mm}{1pt}\hspace{8.3mm}\rule{39.7mm}{1pt}\\[0.1mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{0.9}[1.0]{Nonlinear Processes}\\[0.7mm]
      \null\hfill\scalebox{1.0}[1.0]{in Geophysics}}\\[-2.3mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{41.5mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union
      and the American Geophysical Union.}
\fi
%%
\ifars
   \renewcommand{\@journalname}{Advances in Radio Sciences}
   \renewcommand{\@journalnameabbreviation}{Adv. Radio Sci.}
   \renewcommand{\@journalnameshort}{ARS}
   \renewcommand{\@journalnameshortlower}{ars}
   \renewcommand{\@journalurl}{www.adv-radio-sci.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2003}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{6.9pc}
      {\vspace{-.7\baselineskip}%
      \rule{\linewidth}{1\p@}\\
      \fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill Advances in\\[0.5mm]Radio Science\\
      \vspace{-6.5mm}
      \rule{\linewidth}{1\p@}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the
      URSI Landesausschuss in der Bundesrepublik Deutschland e.V.}
\fi
%%
\ifastra
   \renewcommand{\@journalname}{Astrophysics and Space Sciences Transactions}
   \renewcommand{\@journalnameabbreviation}{Astrophys. Space Sci. Trans.}
   \renewcommand{\@journalnameshort}{ASTRA}
   \renewcommand{\@journalnameshortlower}{astra}
   \renewcommand{\@journalurl}{www.astrophys-space-sci-trans.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2004}
%    \renewcommand{\@journallogo}{%
%       \parbox[t][\z@][t]{10.2em}
%       {\vspace{-.7\baselineskip}
%       \rule{\linewidth}{1\p@}\\
%       \fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
%       \null\hfill Astrophysics and\\[0.5mm]
%       \null\hfill Space Science\\[0.5mm]
%       \null\hfill Transactions\\
%       \vspace{-6.5mm}
%       \rule{\linewidth}{1\p@}}}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{30.0mm}{\vskip-2mm\includegraphics[width=30mm]{astra.png}\\[-2.1mm] \null\hfill
      \scalebox{0.64}{{\bf A}strophysics and {\bf S}pace Sciences}\\[-2.1mm] \null\hfill \scalebox{0.64}{{\bf Tr}ans{\bf a}ctions}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the
      Arbeitsgemeinschaft Extraterrestrische Forschung e.V.}
\fi
%%
\ifsmsps
   \renewcommand{\@journalname}{Stephan Mueller Special Publication Series}
   \renewcommand{\@journalnameabbreviation}{Stephan Mueller Spec. Publ. Ser.}
   \renewcommand{\@journalnameshort}{SMSPS}
   \renewcommand{\@journalnameshortlower}{smsps}
   \renewcommand{\@journalurl}{www.stephan-mueller-spec-publ-ser.net}
   \renewcommand{\@journalpublisher}{Copernicus Publications}
   \renewcommand{\@journalpublisherurl}{www.copernicus.org}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journalstartyear}{2002}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{39.0mm}{\vskip-3.5mm\includegraphics[width=15.5mm]{egulogo.pdf}\\[-19.3mm]
      \null\hspace{0.5mm}\rule{3.5mm}{1pt}\hspace{8.3mm}\rule{26.7mm}{1pt}\\[-0.4mm]
      {\fontencoding{T1}\fontfamily{ma1}\fontseries{b}\fontshape{n}\fontsize{12}{12}\selectfont
      \null\hfill\scalebox{1.0}[1.0]{Special}\\
      \null\hfill\scalebox{1.0}[1.0]{Publication}\\
      \null\hfill\scalebox{1.0}[1.0]{Series}}\\[-2.7mm]
      \null\hspace{0.5mm}\rule{2.0mm}{1pt}\hspace{7.5mm}\rule{29.0mm}{1pt}}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Geosciences Union.}
\fi
%%
%% end of journal dependent variables
%%
\IfFileExists{copernicuslogo.pdf}{\@cop@hometrue}{\@cop@homefalse}
%%
\paperheight=277mm\paperwidth=210mm
\if@aglet\paperheight=283mm\paperwidth=213mm\fi
%%
\ifx\pdfoutput\undefined%
   \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
   \DeclareGraphicsExtensions{.eps,.ps}}{%
   \ClassWarningNoLine{copernicus}{Cannot find graphicx.sty; proceeding without it}}
   \if@aglet\IfFileExists{color.sty}{\RequirePackage{color}}{%
   \ClassWarningNoLine{copernicus}{Cannot find color.sty; proceeding without it}}\fi
   \@pstrue
\else%
   \ifnum\pdfoutput=0
      \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
      \DeclareGraphicsExtensions{.eps,.ps}}{%
      \ClassWarningNoLine{copernicus}{Cannot find graphicx.sty; proceeding without it}}
      \if@aglet\IfFileExists{color.sty}{\RequirePackage{color}}{%
      \ClassWarningNoLine{copernicus}{Cannot find color.sty; proceeding without it}}\fi
      \@pstrue
   \else
      \IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}% pdfLaTeX
      \DeclareGraphicsExtensions{.pdf,.png,.jpg}}{%
      \ClassWarningNoLine{copernicus}{Cannot find graphicx.sty; proceeding without it}}
      \if@aglet\IfFileExists{color.sty}{\RequirePackage[pdftex]{color}}{%
      \ClassWarningNoLine{copernicus}{Cannot find color.sty; proceeding without it}}\fi
      \@psfalse
      \pdfinfo{/Creator (copernicus.cls version \clsversion)}
   \fi
\fi
%%
\IfFileExists{url.sty}{\RequirePackage{url}\urlstyle{same}}%
   {\ClassWarningNoLine{copernicus}{Cannot find url.sty; proceeding without it}%
   \newcommand{\url}[1]{\ClassError{copernicus}%
   {To use \string\url, you must have url.sty}{Install url.sty}}}
\IfFileExists{textcomp.sty}{\RequirePackage{textcomp}\let\permil\textperthousand}%
   {\ClassWarningNoLine{copernicus}{Cannot find textcomp.sty; proceeding without it}%
   \newcommand{\permil}{\ensuremath{\kern-.05em%
   \raise.5ex\hbox{\the\scriptfont0 0}%
   \kern-.15em/\kern-.15em\lower.25ex\hbox{\the\scriptfont0 00}}}%
   \def\textmu{\ensuremath{\mu}}}
\IfFileExists{times.sty}{\RequirePackage{times}}{%
   \ClassWarningNoLine{copernicus}{Cannot find times.sty; proceeding without it}}
\IfFileExists{fix2col.sty}{\RequirePackage{fix2col}}{%
   \ClassWarningNoLine{copernicus}{Cannot find fix2col.sty; proceeding without it}}
\IfFileExists{amssymb.sty}{\RequirePackage{amssymb}}{%
   \ClassWarningNoLine{copernicus}{Cannot find amssymb.sty; proceeding without it}}
\IfFileExists{ifthen.sty}{\RequirePackage{ifthen}}{%
   \ClassWarningNoLine{copernicus}{Cannot find ifthen.sty; proceeding without it}}
\IfFileExists{array.sty}{\RequirePackage{array}}{%
   \ClassWarningNoLine{copernicus}{Cannot find array.sty; proceeding without it}}
\IfFileExists{multicol.sty}{\RequirePackage{multicol}}{%
   \ClassWarningNoLine{copernicus}{Cannot find multicol.sty; proceeding without it}}
%%
\if@cop@home\RequirePackage[mtbold]{mathtime}\fi
\@twosidefalse
\if@draft\@twocolumnfalse\else\@twocolumntrue\fi
\IfFileExists{lineno.sty}{\RequirePackage[displaymath,mathlines,modulo]{lineno}}{%
   \ClassWarningNoLine{copernicus}{Cannot find lineno.sty; proceeding without it}}
\if@draft\IfFileExists{lineno.sty}{\linenumbers\renewcommand{\linenumberfont}{\normalfont\small\sffamily}}{}%
   \else\IfFileExists{lineno.sty}{\nolinenumbers}{}\fi

\iftwostagejnl % make sure the author doesn't forget anything
   \newcommand{\UndefinedError}[1]
      {\ClassError{copernicus}{You must define #1}{Add #1 to your document!}}
   \newcommand{\NoSectionError}[2]
      {\ClassError{copernicus}{You forgot the section: #1}{Add #2 to your document!}}
   \AtEndDocument{%
      \@ifundefined{abstractexists}{\NoSectionError{Abstract}
         {\string\begin{abstract}...\string\end{abstract}}}{}
      \@ifundefined{introductionexists}{\NoSectionError{Introduction}
         {\string\introduction}}{}
      \@ifundefined{conclusionsexists}{\NoSectionError{Conclusions}
         {\string\conclusions}}{}
      \if!\@runauth!\UndefinedError{\string\runningauthor}\fi
      \if!\@runtit!\UndefinedError{\string\runningtitle}\fi
   }
   \def\acpurl{% \maketitle will define correct value for \acpurl
      \ClassError{copernicus}{Did you forget \string\maketitle\space ?}
      {Add \string\maketitle\space just before your abstract!}}
\fi

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
\DeclareRobustCommand*{\chem}[1]{\ensuremath{%
\mathcode`-="0200\mathcode`\=="003D% no space around "-" and "="
\ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}
\DeclareRobustCommand*{\unit}[1]{\ensuremath{\def\mu{\mbox{\textmu}}\def~{\,}%
\ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}   

\if@cop@home\if@nohyperref\else
   \usepackage[pdftex]{color}
   \usepackage[pdftex,bookmarks=false,colorlinks]{hyperref}
   \hypersetup{anchorcolor=black,citecolor=black,filecolor=black,linkcolor=black,%
      menucolor=black,pagecolor=black,urlcolor=black}
\fi\fi
%%
\def\refname{References}
\def\figurename{Fig.}
\def\tablename{Table}
\def\fnum@figure{\figurename~\thefigure}
\def\fnum@table{\tablename~\thetable}
\def\abstractname{Abstract}
\def\acknowname{Acknowledgement}
\def\acknowsname{Acknowledgements}
%
% option german
%
\ifgerman
   \IfFileExists{german.sty}{\RequirePackage{german}}{%
      \ClassWarningNoLine{copernicus}{Cannot find german.sty; proceeding without it}
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
\if@draft
   \oddsidemargin  0cm
   \evensidemargin 0cm
   \textheight 22cm
   \textwidth 14cm
   \topmargin -1cm
   \raggedbottom
   \let\subsecsize=\normalsize
\else
   \def\@normalsize{\@setsize\normalsize{12pt}\xpt\@xpt
   \abovedisplayskip 10\p@ plus2\p@ minus5\p@
   \belowdisplayskip \abovedisplayskip
   \abovedisplayshortskip  \z@ plus3\p@
   \belowdisplayshortskip  6\p@ plus3\p@ minus3\p@
   \let\@listi\@listI}
   \def\small{%
      \@setsize\small{11pt}\ixpt\@ixpt
      \abovedisplayskip 8.5\p@ plus3\p@ minus4\p@
      \belowdisplayskip \abovedisplayskip
      \abovedisplayshortskip \z@ plus2\p@
      \belowdisplayshortskip 4\p@ plus2\p@ minus2\p@
      \def\@listi{\leftmargin\leftmargini
      \topsep 4\p@ plus2\p@ minus2\p@\parsep 2\p@ plus\p@ minus\p@
      \itemsep \parsep}}
   \let\footnotesize=\small
   \def\scriptsize{\@setsize\scriptsize{8pt}\viipt\@viipt}
   \def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
   \def\large{\@setsize\large{14pt}\xiipt\@xiipt}
   \def\Large{\@setsize\Large{18pt}\xivpt\@xivpt}
   \def\LARGE{\@setsize\LARGE{22pt}\xviipt\@xviipt}
   \def\huge{\@setsize\huge{25pt}\pt\@xxpt}
   \def\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}   

   \normalsize
   
   \topmargin -3.0cm
   \headheight 2cm
   \headsep 0.5cm
   \topskip = 12pt
   \footskip 30pt
   \oddsidemargin -0.9cm
   \evensidemargin -0.9cm
   \if@aglet \evensidemargin -0.6cm \topmargin -2.7cm \fi
   \if@ps \topmargin -1.0cm \fi
   \textwidth 17.7cm
   \textheight = 54\baselineskip

   \advance\textheight by \topskip
   \columnsep 0.7cm
   \columnseprule 0pt
\fi
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
\if@twocolumn
\sloppy\clubpenalty4000\widowpenalty4000
\leftmargini 2em
\leftmarginii 1.75em
\leftmarginiii 1.5em
\leftmarginiv 1em
\leftmarginv .5em
\leftmarginvi .5em
\fi
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
   \ClassError{copernicus}
   {Starting page must be odd!}{change the firstpage command}
\fi

\if@headers\setcounter{page}{\@fpage}\thispagestyle{journal}\fi

\setcounter{footnote}{0}%
\begingroup
\def\@thanks{}\parindent=0pt
\if@twocolumn
   %%
   %% generic layout for first page in twocolumn mode
   %%
   \twocolumn[%
   {\begin{minipage}[b][\@tithei][s]{\hsize}
      \null\vfil
      \begin{minipage}{\hsize}
         \raggedright
         \let\footnotesize\normalsize
         \let\footnoterule\relax
         \def\thefootnote{\fnsymbol{footnote}}%
         \def\@mpfn{footnote}%
         \let\thempfn=\thefootnote
         \renewcommand\@makefntext[1]{%
         \parindent 1em \noindent
         \@makefnmark##1}
         {\LARGE\bfseries\@title\par}
         \if@noauthor\else
            \vspace{10pt}
            {\normalsize
            \renewcommand{\Authfont}{\bfseries}%
            \renewcommand{\Affilfont}{\@affilfontsize\mdseries}%
            \setlength{\affilsep}{4pt}%
            \baselineskip 15pt
            \let\and=\sw@and
            \begin{minipage}[t]{\hsize}\flushleft\baselineskip=12pt%
               \@author
            \end{minipage}\par}%
         \fi
         \@thanks
      \end{minipage}%
      \if!\@recvd!\else
         \par\vspace{10pt}
         \iftwostagejnl
            Received: \@recvd\ -- Published in \@journalnameabbreviation\ Discuss.: \@pubdiscuss\\
            Revised: \@revsd\ -- Accepted: \@accptd\ -- Published: \@published
         \else
            Received: \@recvd\ \if!\@revsd!\else -- Revised: \@revsd\ \fi
            \if!\@accptd!\else -- Accepted: \@accptd\ -- Published: \@published \fi
         \fi
      \fi
      \if!\@speciss!\else
         \par\vspace{10pt}
         \if@sil
            Part of Special Issue \href{\@specissurl}{``\@speciss''}
         \else
            Part of Special Issue ``\@speciss''
         \fi
      \fi
      \vspace{20pt}%
   \end{minipage}%
   }]%
   %%
   %% end of title page in twocolumn mode
   %%
\else
   \global\@topnum\z@
   \if@draft
      \IfFileExists{lineno.sty}{\begin{nolinenumbers}}{}
      \parbox[t]{\textwidth}{%
         Manuscript prepared for \@journalnameabbreviation\\
         with version \clsversion\ of the \LaTeX\ class copernicus.cls.\\
         Date: \number\day~\ifcase\month\or January\or February\or%
            March\or April\or May\or June\or July\or August\or September\or%
            October\or November\or December\fi~\number\year}
      \begin{minipage}[b][5cm][s]{\hsize}
         \null\vfil
         \begin{minipage}{\hsize}
            \raggedright
            \let\footnotesize\normalsize
            \let\footnoterule\relax
            \def\thefootnote{\fnsymbol{footnote}}%
            \def\@mpfn{footnote}%
            \let\thempfn=\thefootnote
            \renewcommand\@makefntext[1]{%
               \parindent 1em \noindent
               \@makefnmark##1}
            {\LARGE\bfseries \@title\par}
            \vspace{12pt}
            \if@noauthor\else
               {\large
               \renewcommand{\Authfont}{\normalfont}%
               \renewcommand{\Affilfont}{\normalsize\@affilfontsize\normalfont}%
               \setlength{\affilsep}{4pt}%
               \baselineskip 15pt
               \let\and=\sw@and
               \begin{minipage}[t]{\hsize}\flushleft\baselineskip=12pt%
                  \@author\\[4pt]
                  \if!\@corresp!\else\textit{Correspondence to:} \@corresp\fi
               \end{minipage}\par}%
            \fi
            \@thanks
         \end{minipage}%
      \end{minipage}%
      \null\vspace{12pt}
      \IfFileExists{lineno.sty}{\end{nolinenumbers}}{}
   \fi
\fi
\renewcommand\@makefntext[1]{\parindent 1em \noindent ##1}%
\let\footnotesize\normalsize
\if@draft\else\if@noauthor\else   
   \if@cop@home
         \footnotetext{\vskip0mm\hskip-3mm %
         \if@nohyperref
            \includegraphics[width=2.5cm]{CreativeCommons_Attribution_License.png}
         \else
            \href{http://creativecommons.org/licenses/by/3.0/}{\includegraphics[width=2.5cm]{CreativeCommons_Attribution_License.png}}
         \fi %         
         \if!\@corresp!\else\hskip2mm\parbox{57mm}{\vskip-6mm\textit{Correspondence to:} \@corresp}\fi}
   \else
      \if!\@corresp!\else\footnotetext{\textit{Correspondence to:} \@corresp}\fi
   \fi   
\fi\fi
\endgroup
\setcounter{footnote}{0}%
\let\thanks\relax
\gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\maketitle\relax
\if@draft\gdef\baselinestretch{1.4}\reset@font\large\normalsize\fi
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
\def\runningauthor#1{\def\@runauth{#1}}         \def\@runauth{}
\def\runningtitle#1{\def\@runtit{#1}}           \def\@runtit{}
\def\runninghead#1{\def\@runhd{#1}}             \if@noauthor\def\@runhd{\@runtit}\else\def\@runhd{\@runauth: \@runtit}\fi
\def\lastpage@putlabel{\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string
   \newlabel{LastPage}{{}{\thepage}{}{}{}}}%
   \addtocounter{page}{1}}
\def\@lpage{\pageref{LastPage}}
\def\abslang{}
\def\keywords#1{%
   \iftwostagejnl
      \ClassWarningNoLine{copernicus}{Keywords are not supported.}
   \else
      \vspace{1.7mm}\par\noindent{\bfseries Keywords.}\enspace\ignorespaces#1
   \fi}
\renewenvironment{abstract}{%
   \iftwostagejnl\gdef\abstractexists{true}\fi
   \ifgerman\abslang\fi
   \reset@font\normalsize\par\noindent{\bfseries\abstractname.} \ignorespaces
   }{%
   \ifgerman
      \iflanguage{german}{\gdef\abslang{\selectlanguage{english}}}{\gdef\abslang{\selectlanguage{german}}}
   \else
      \if@draft\else\if@noline\else
         \newline\null\par\hrule
      \fi\fi
   \fi}
\newcommand{\introduction}[1][\ifgerman Einleitung \else Introduction \fi]%
   {\section{#1}\def\introductionexists{true}}
\newcommand{\conclusions}[1][\ifgerman Diskussion \else Conclusions \fi]%
   {\section{#1}\def\conclusionsexists{true}}
\newenvironment{acknowledgements}{\begin{description}\item[\acknowsname]}{\end{description}}
\newenvironment{acknowledgement}{\begin{description}\item[\acknowname]}{\end{description}}

\def\ps@runninghead{\let\@mkboth\@gobbletwo
   \def\@oddhead{\@runhd\hfil\makebox[\z@][r]{\thepage}
      \if@aglet
         {\setlength{\unitlength}{1.0cm}
         \begin{picture}(0,0)
         \color[gray]{0.85}\put(0.8,0){\rule[-300mm]{14mm}{400mm}}
         \end{picture}}
      \fi}
   \def\@evenhead{\makebox[\z@][l]{\thepage}\hfil\@runhd
      \if@aglet
        {\setlength{\unitlength}{1.0cm}
        \begin{picture}(0,0)
        \color[gray]{0.85}\put(-19.7,0){\rule[-300mm]{14mm}{400mm}}
        \end{picture}}
      \fi}
   \if@cop@home
      \ifgi
      \def\@oddfoot{\hfil\@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi}
      \else
      \def\@oddfoot{\@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi
         \hfil\@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi}
      \fi
      \ifgi
      \def\@evenfoot{\@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi\\ }
      \else
      \def\@evenfoot{\@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi
         \hfil\@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi}
      \fi
   \else
      \def\@oddfoot{}
      \def\@evenfoot{}
   \fi}   

\def\ps@journal{\let\@mkboth\@gobbletwo % only for 1st page
   \if@cop@home % real header
      \def\@oddhead{\parbox[t]{0.6\textwidth}{%
         \@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi\\
         \@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi\\
         \if@noref\else doi:10.5194/\@journalnameshortlower-\@pvol-\@fpage-\@pyear\fi\\
         \@journalcopyright}
         \hfill\scalebox{1.25}{\@journallogo\\}
         \if@aglet
             {\setlength{\unitlength}{1.0cm}
             \begin{picture}(0,0)
             \color[gray]{0.85}\put(0.7,0){\rule[-300mm]{14mm}{400mm}}
             \fontencoding{T1}\fontfamily{ma1}\fontseries{m}\fontshape{n}\fontsize{15}{15}\selectfont
             \put(1,-24.7){\rotatebox{90}{\textcolor{black}{AnGeo Communicates}}}
             \end{picture}}
         \fi}
      \def\@oddfoot{\@sentence\hfil}
   \else
      \def\@oddhead{\parbox[t]{0.6\textwidth}{%
         Manuscript prepared for \@journalnameabbreviation\\
         with version \clsversion\ of the \LaTeX\ class copernicus.cls.\\
         Date: \number\day~\ifcase\month\or January\or February\or%
            March\or April\or May\or June\or July\or August\or September\or%
            October\or November\or December\fi~\number\year}}
      \def\@oddfoot{}
   \fi}

\def\iftwocol#1#2{\if@twocolumn#1\else #2\fi}

\pagenumbering{arabic}
\if@twocolumn \flushbottom \else \raggedbottom \fi
\if@twoside \flushbottom \fi

\if@draft\ps@plain\fi
\if@headers\@twosidetrue\ps@runninghead\fi
\newcommand\fncomma{\textsuperscript{,}}
\AtBeginDocument{\mathindent\z@}
%% commands for narrow math added by Rolf Sander, 2009-05-20:
\AtBeginDocument{%
\thinmuskip = 1mu%
\medmuskip = 2mu plus 1mu minus 1mu%
\thickmuskip = 3mu plus 1mu%
}
\AtBeginDocument{\if@cop@home\else\def\balance{%
\ClassWarningNoLine{copernicus}{Please do not use \string\balance}}\fi}
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
  \if@draft\else
     \@addtoreset{figure}{section}
     \setcounter{figure}{0}
     \def\thefigure{\thesection\arabic{figure}}
     \@addtoreset{table}{section}
     \def\thetable{\thesection\arabic{table}}
     \setcounter{table}{0}
  \fi
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
% \iftwostagejnl\def\appendix{\ClassWarningNoLine{egs}%
%   {\string\appendix\space is not supported in acp\MessageBreak
%   see egs_man.pdf for details}}\fi
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
%\if@draft\figcapstrue\else\figcapsfalse\fi
\figcapsfalse
%%
%% ------------------------------------------------------------------------
%%
%% Natbib configuration, added by Patrick Daly, Oct 16, 2006
%% replacing the integrated natbib module.
%% These formatting lines have been extracted from natbib.dtx
%%  and were intended for egs.cls, egu.cls originally
\RequirePackage[authoryear,round]{natbib}
\def\NAT@sort{0}\def\NAT@cmprs{0}
\renewcommand\NAT@sep{;} \renewcommand\NAT@cmt{, }
\renewcommand\NAT@aysep{,} \renewcommand\NAT@yrsep{,}
\setlength{\bibsep}{\z@}
\def\bibsection{\if@draft\newpage\fi
    \noappendix\section*{\refname}\ifonline\hypertarget{references}{}\fi}
\let\bibfont\small
% Force the author-year style, even when people use \bibitem merely
%   as \item without natbib syntax
% Added PWD in 1.21 of 2006/11/07
\NAT@numbersfalse
\NAT@set@cites
\let\NAT@set@cites\relax
% The copernicus.bst will prefix URLs with "URL" unless otherwise defined
% So define it otherwise here
\newcommand{\urlprefix}{}
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
    \ModuleVersion{balance}
         [1999/02/23 4.3 (PWD)]
\newcommand{\@BAlancecol}{\if@twocolumn
  \setbox0=\vbox{\unvbox\@outputbox} \@tempdima=\ht0
  \advance\@tempdima by \topskip \advance\@tempdima
     by -\baselineskip \divide\@tempdima by 2
     \splittopskip=\topskip
  {\vbadness=\@M \loop \global\setbox3=\copy0
   \global\setbox1=\vsplit3 to \@tempdima
   \ifdim\ht3>\@tempdima \global\advance\@tempdima by 1pt \repeat}
   \setbox\@leftcolumn=\vbox to \@tempdima{\unvbox1\vfil}
   \setbox\@outputbox=\vbox to \@tempdima
     {\dimen2=\dp3\unvbox3\kern-\dimen2
      \vfil}
  \fi}
\newif\if@BAlanceone
\global\@BAlanceonefalse
\newdimen\oldvsize
\newcommand{\@BAdblcol}{\if@firstcolumn
       \unvbox\@outputbox \penalty\outputpenalty
       \global\oldvsize=\@colht \global\multiply \@colht by 2
       \global\@BAlanceonetrue
       \global\@firstcolumnfalse
  \else \global\@firstcolumntrue
       \if@BAlanceone
       \global\@BAlanceonefalse\@BAlancecol
       \global\@colht=\oldvsize \else
       \PackageWarningNoLine{balance}
          {You have called \protect\balance\space
             in second column\MessageBreak
           Columns might not be balanced}\fi
     \setbox\@outputbox\vbox to \@colht{\hbox to\textwidth
     {\hbox to\columnwidth {\box\@leftcolumn \hss}\hfil
      \vrule width\columnseprule\hfil \hbox to\columnwidth
      {\box\@outputbox \hss}}\vfil}\@combinedblfloats
     \@outputpage \begingroup \@dblfloatplacement
     \@startdblcolumn \@whilesw\if@fcolmade \fi
     {\@outputpage\@startdblcolumn}\endgroup
  \fi}
\newcommand{\@BAcleardblpage}{\clearpage\if@twoside \ifodd\c@page\else
  \hbox{}\newpage\fi\fi}
\newcommand{\@@cleardblpage}{}
\let\@@cleardblpage=\cleardoublepage

\newcommand{\@@utputdblcol}{}
\let\@@utputdblcol=\@outputdblcol
\newcommand{\balance}{\global\let\@outputdblcol=\@BAdblcol
  \global\let\cleardoublepage=\@BAcleardblpage}
\newcommand{\nobalance}{\global\let\@outputdblcol=\@@utputdblcol
  \global\let\cleardoublepage=\@@cleardblpage}
\endinput
%%
%% End of file `copernicus.cls'.
