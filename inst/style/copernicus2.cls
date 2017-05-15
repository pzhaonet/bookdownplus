%% File: copernicus2.cls
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
%% With contributions by Copernicus Publications
%% ---------------------------------
%% This file may be used for non-profit purposes. 
%% It may not be distributed in exchange of money.
%% The author provides it 'as is' and does not
%% guarantee it in any way.
%% ---------------------------------
%% This class file consists of several modules, each with its separate copyright
%% The modules that are specific to Copernicus publications are
%% Copyright (C) Copernicus GmbH
%%
%% The entire package is available from
%% http://publications.copernicus.org/for_authors/latex_instructions.html
%% ---------------------------------
%% Version 5.2, 2011/08/16

\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\ProvidesClass{copernicus2}[2011/08/16 5.2 (DS)]
\def\clsversion{5.2}

\newif\ifasr
\newif\ifdwes
\newif\ifessd
\newif\ifhgss
\newif\ifmeteff
\newif\ifms
\newif\ifsg
\newif\ifwe

\newif\if@nohyperref
\newif\if@noauthor
\newif\if@noref
\newif\if@nolastpage
\newif\if@cop@home
\newif\if@bar
\newif\if@twostagejnl

\DeclareOption{asr}{\asrtrue\@bartrue\@twostagejnlfalse}
\DeclareOption{dwes}{\dwestrue\@barfalse\@twostagejnltrue}
\DeclareOption{essd}{\essdtrue\@barfalse\@twostagejnltrue}
\DeclareOption{hgss}{\hgsstrue\@bartrue\@twostagejnlfalse}
\DeclareOption{meteff}{\metefftrue\@barfalse\@twostagejnlfalse}
\DeclareOption{ms}{\mstrue\@barfalse\@twostagejnlfalse}
\DeclareOption{sg}{\sgtrue\@barfalse\@twostagejnltrue}
\DeclareOption{we}{\wetrue\@bartrue\@twostagejnlfalse}


\DeclareOption{nohyperref}{\@nohyperreftrue}
\DeclareOption{noauthor}{\@noauthortrue}
\DeclareOption{noref}{\@noreftrue}
\DeclareOption{nolastpage}{\@nolastpagetrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[fleqn,twoside,twocolumn]{article}

\IfFileExists{copernicuslogo.pdf}{\@cop@hometrue}{\@cop@homefalse}

\if@cop@home
   \if@bar
      \paperheight=283mm
      \paperwidth=213mm
   \else
      \paperheight=277mm
      \paperwidth=210mm
   \fi  
\else
   \paperheight=277mm
   \paperwidth=210mm
\fi

\ifx\pdfoutput\undefined
   \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
      \DeclareGraphicsExtensions{.eps,.ps}}{%
      \ClassWarningNoLine{copernicus2}{Cannot find graphicx.sty; proceeding without it}}
   \RequirePackage[dvips]{color}
\else
   \ifnum\pdfoutput=0
      \IfFileExists{graphicx.sty}{\RequirePackage[dvips]{graphicx}% LaTeX
         \DeclareGraphicsExtensions{.eps,.ps}}{%
         \ClassWarningNoLine{copernicus2}{Cannot find graphicx.sty; proceeding without it}}
      \RequirePackage[dvips]{color}
   \else
      \IfFileExists{graphicx.sty}{\RequirePackage[pdftex]{graphicx}% pdfLaTeX
         \DeclareGraphicsExtensions{.pdf,.png,.jpg}}{%
         \ClassWarningNoLine{copernicus2}{Cannot find graphicx.sty; proceeding without it}}
      \RequirePackage[pdftex]{color}
      \pdfinfo{/Creator (copernicus2.cls version \clsversion)}
      \if@cop@home
         \if@bar
            \pdfpagewidth=213mm
            \pdfpageheight=283mm
         \else
            \pdfpagewidth=210mm
            \pdfpageheight=277mm
         \fi
      \else
         \pdfpagewidth=210mm
         \pdfpageheight=277mm
      \fi
   \fi
\fi

\RequirePackage{authblk}

\RequirePackage[authoryear,round]{natbib}
\def\NAT@sort{0}\def\NAT@cmprs{0}
\renewcommand\NAT@sep{;} \renewcommand\NAT@cmt{, }
\renewcommand\NAT@aysep{,} \renewcommand\NAT@yrsep{,}
\setlength{\bibsep}{\z@}
\let\bibfont\small
\NAT@numbersfalse
\NAT@set@cites
\let\NAT@set@cites\relax
\newcommand{\urlprefix}{}

\IfFileExists{txfonts.sty}{\RequirePackage{txfonts}}{%
   \ClassWarningNoLine{copernicus2}{Cannot find txfonts.sty; proceeding without it}}

\IfFileExists{amssymb.sty}{\RequirePackage{amssymb}}{%
   \ClassWarningNoLine{copernicus2}{Cannot find amssymb.sty; proceeding without it}}

\if@cop@home\if@nohyperref\else
   \usepackage[pdftex,bookmarks=false,colorlinks]{hyperref}
   \hypersetup{anchorcolor=black,citecolor=black,filecolor=black,linkcolor=black,%
      menucolor=black,pagecolor=black,urlcolor=black}
\fi\fi

\IfFileExists{url.sty}{\RequirePackage{url}\urlstyle{same}}%
   {\ClassWarningNoLine{copernicus2}{Cannot find url.sty; proceeding without it}%
   \newcommand{\url}[1]{\ClassError{copernicus2}%
   {To use \string\url, you must have url.sty}{Install url.sty}}}
   
\IfFileExists{textcomp.sty}{\RequirePackage{textcomp}\let\permil\textperthousand}%
   {\ClassWarningNoLine{copernicus2}{Cannot find textcomp.sty; proceeding without it}%
   \newcommand{\permil}{\ensuremath{\kern-.05em%
   \raise.5ex\hbox{\the\scriptfont0 0}%
   \kern-.15em/\kern-.15em\lower.25ex\hbox{\the\scriptfont0 00}}}%
   \def\textmu{\ensuremath{\mu}}}
   
\newcommand{\@journalnameabbreviation}{J. Name}
\newcommand{\@journalnameshort}{JN}
\newcommand{\@journalnameshortlower}{jn}
\newcommand{\@journalurl}{www.jn.net}
\newcommand{\@journalcopyright}{Copyright}
\newcommand{\@journallogo}{Journallogo}
\newcommand{\@sentence}{Sentence.}
\definecolor{textcol}{cmyk}{0.0,0.00,0.00,1.00}
\definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
\definecolor{barcol}{cmyk}{0.00,0.00,0.00,0.00}
%%
\ifasr
   \renewcommand{\@journalnameabbreviation}{Adv. Sci. Res.}
   \renewcommand{\@journalnameshort}{ASR}
   \renewcommand{\@journalnameshortlower}{asr}
   \renewcommand{\@journalurl}{www.adv-sci-res.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{36.0mm}{\vskip-3mm\includegraphics[width=38mm]{ASR_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications.}
   \definecolor{textcol}{cmyk}{1.00,0.75,0.05,0.40}
   \definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
   \definecolor{barcol}{cmyk}{0.10,0.15,0.50,0.00}
\fi
\ifdwes
   \renewcommand{\@journalnameabbreviation}{Drink. Water Eng. Sci.}
   \renewcommand{\@journalnameshort}{DWES}
   \renewcommand{\@journalnameshortlower}{dwes}
   \renewcommand{\@journalurl}{www.drink-water-eng-sci.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{38.5mm}{\vskip-3mm\includegraphics[width=39mm]{DWES_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the Delft University of Technology.}
   \definecolor{textcol}{cmyk}{0.00,0.00,0.00,1.00}
   \definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
   \definecolor{barcol}{cmyk}{0.00,0.00,0.00,0.00}
\fi
\ifessd
   \renewcommand{\@journalnameabbreviation}{Earth Syst. Sci. Data}
   \renewcommand{\@journalnameshort}{ESSD}
   \renewcommand{\@journalnameshortlower}{essd}
   \renewcommand{\@journalurl}{www.earth-syst-sci-data.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{24.0mm}{\vskip-3mm\includegraphics[width=24mm]{ESSD_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications.}
   \definecolor{textcol}{cmyk}{1.00,0.25,0.20,0.40}
   \definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
   \definecolor{barcol}{cmyk}{0.00,0.00,0.00,0.00}
\fi
\ifhgss
   \renewcommand{\@journalnameabbreviation}{Hist. Geo Space Sci.}
   \renewcommand{\@journalnameshort}{HGSS}
   \renewcommand{\@journalnameshortlower}{hgss}
   \renewcommand{\@journalurl}{www.hist-geo-space-sci.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{31.0mm}{\vskip-4mm\includegraphics[width=33mm]{HGSS_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications.}
   \definecolor{textcol}{cmyk}{1.00,0.50,0.05,0.00}
   \definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
   \definecolor{barcol}{cmyk}{0.00,0.00,0.00,0.00}
\fi
\ifmeteff
   \renewcommand{\@journalnameabbreviation}{Meter. Energ. Fluid Flow.}
   \renewcommand{\@journalnameshort}{MetEFF}
   \renewcommand{\@journalnameshortlower}{meteff}
   \renewcommand{\@journalurl}{www.meter-energ-fluid-flow.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{30.0mm}{\vskip-3.5mm\includegraphics[width=30mm]{MetEFF_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the PTB and the TIB.}
   \definecolor{textcol}{rgb}{0.04,0.39,0.64}
   \definecolor{bgcol}{rgb}{1.,1.,1.}
   \definecolor{barcol}{rgb}{1.,1.,1.}
\fi
\ifms
   \renewcommand{\@journalnameabbreviation}{Mech. Sci.}
   \renewcommand{\@journalnameshort}{MS}
   \renewcommand{\@journalnameshortlower}{ms}
   \renewcommand{\@journalurl}{www.mech-sci.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{43.0mm}{\vskip-3mm\includegraphics[width=43mm]{MS_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications.}
   \definecolor{textcol}{rgb}{0.47,0.65,0.80}
   \definecolor{bgcol}{rgb}{1.,1.,1.}
   \definecolor{barcol}{rgb}{0.,0.,0.}
\fi
\ifsg
   \renewcommand{\@journalnameabbreviation}{Soc. Geogr.}
   \renewcommand{\@journalnameshort}{SG}
   \renewcommand{\@journalnameshortlower}{sg}
   \renewcommand{\@journalurl}{www.soc-geogr.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{33.0mm}{\vskip-2.5mm\includegraphics[width=33mm]{SG_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications.}
   \definecolor{textcol}{cmyk}{0.00,1.00,0.70,0.40}
   \definecolor{bgcol}{cmyk}{0.00,0.00,0.00,0.00}
   \definecolor{barcol}{cmyk}{0.00,0.00,0.00,0.00}
\fi
\ifwe
   \renewcommand{\@journalnameabbreviation}{Web Ecol.}
   \renewcommand{\@journalnameshort}{WE}
   \renewcommand{\@journalnameshortlower}{we}
   \renewcommand{\@journalurl}{www.web-ecol.net}
   \renewcommand{\@journalcopyright}{\copyright\ Author(s)\ \@pyear. CC Attribution 3.0 License.}
   \renewcommand{\@journallogo}{%
      \parbox[t][\z@][t]{26.0mm}{\vskip-8.5mm\includegraphics[width=28mm]{WE_Logo.pdf}\\[-2.1mm] \null\hfill}}
   \renewcommand{\@sentence}{Published by Copernicus Publications on behalf of the European Ecological Federation (EEF).}
   \definecolor{textcol}{rgb}{0.20,0.60,0.20}
   \definecolor{bgcol}{rgb}{1.,1.,1.}
   \definecolor{barcol}{rgb}{1.,1.,1.}
\fi
\fboxrule=0.8pt
%\fboxsep=1mm  

\newcommand{\blackbox}{\rule{8mm}{3mm}}
\newcommand{\degree}{\ensuremath{^{\circ}}}
\newcommand{\tophline}{\hline\noalign{\vspace{1mm}}}
\newcommand{\middlehline}{\noalign{\vspace{1mm}}\hline\noalign{\vspace{1mm}}}
\newcommand{\bottomhline}{\noalign{\vspace{1mm}}\hline}
\newcommand{\hhline}{\noalign{\vspace{1mm}}\hline\noalign{\vspace{1mm}}} 
   
\DeclareRobustCommand*{\vec}[1]{\ensuremath{%
   \mathchoice{\mbox{\boldmath$\displaystyle#1$}}
              {\mbox{\boldmath$\textstyle#1$}}
              {\mbox{\boldmath$\scriptstyle#1$}}
              {\mbox{\boldmath$\scriptscriptstyle#1$}}}}

\def\testbx{bx}
\DeclareRobustCommand*{\chem}[1]{\ensuremath{%
   \mathcode`-="0200\mathcode`\=="003D% no space around "-" and "="
   \ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}
\DeclareRobustCommand*{\unit}[1]{\ensuremath{\def\mu{\mbox{\textmu}}\def~{\,}%
   \ifx\testbx\f@series\mathbf{#1}\else\mathrm{#1}\fi}}

\def\acknowname{Acknowledgement}
\def\acknowsname{Acknowledgements}
\def\refname{References}
\def\abstractname{Abstract}
\def\appendixname{Appendix}
\def\figurename{Figure}
\def\tablename{Table}
\def\fnum@figure{\sffamily\color{textcol}\figurename~\thefigure}
\def\fnum@table{\sffamily\color{textcol}\tablename~\thetable}

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

\if@cop@home
   \if@bar
      \topmargin=-27mm
      \evensidemargin=-6mm
   \else
      \topmargin=-30mm
      \evensidemargin=-9mm
   \fi
\else
   \topmargin=-30mm
   \evensidemargin=-9mm
\fi
\headheight=20mm
\headsep=5mm
\topskip=12pt
\footskip=30pt
\oddsidemargin=-9mm
\textwidth=177mm
\textheight=54\baselineskip
\advance\textheight by \topskip
\columnsep 7mm
\columnseprule 0pt
\parindent=1em
\parskip 0pt plus 1pt

\setcounter{totalnumber}{2}
\setcounter{topnumber}{2}
\setcounter{dbltopnumber}{2}
\def\topfraction{1.}
\def\dbltopfraction{1.}
\setcounter{bottomnumber}{0}
\def\textfraction{0}
\def\floatpagefraction{.7}
\def\dblfloatpagefraction{.7}

%\def\section{\@startsection{section}{1}{\z@}{-3.5ex plus -1ex minus
%   -0.2ex}{2.3ex plus 0.2ex}{\reset@font\sffamily\normalsize\bfseries\color{textcol}}}
%\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus -1ex
%   minus -0.2ex}{1.5ex plus 0.2ex}{\reset@font\sffamily\normalsize\mdseries\color{textcol}}}
%\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-3.25ex plus
%   -1ex minus -0.2ex}{1.5ex plus 0.2ex}{\reset@font\sffamily\normalsize\mdseries\color{textcol}}}
\def\section{\@startsection{section}{1}{\z@}{-3.5ex plus -1ex minus
   -0.2ex}{2.3ex plus 0.2ex}{\reset@font\sffamily\normalsize\bfseries\noindent\leavevmode\color{textcol}}}
\def\subsection{\@startsection{subsection}{2}{\z@}{-3.25ex plus -1ex
   minus -0.2ex}{1.5ex plus 0.2ex}{\reset@font\sffamily\normalsize\mdseries\noindent\leavevmode\color{textcol}}}
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{-3.25ex plus
   -1ex minus -0.2ex}{1.5ex plus 0.2ex}{\reset@font\sffamily\normalsize\mdseries\noindent\leavevmode\color{textcol}}}
\let\paragraph=\subsubsection
\let\subparagraph=\paragraph

\@ifundefined{reset@font}{\let\reset@font=\relax}{}
\setcounter{secnumdepth}{3}

\def\desfont{\sffamily\bfseries\small}
\def\descriptionlabel#1{\hspace\labelsep \desfont #1.}
\def\description{\list{}{\labelwidth\z@ \leftmargin\z@ \itemindent-\leftmargin
   \let\makelabel\descriptionlabel\reset@font\small}}
\let\enddescription\endlist

\newcommand{\introduction}[1][Introduction]{\section{#1}}
\newcommand{\conclusions}[1][Conclusions]{\section{#1}}

\newlength{\nhsize}

%\let\ofigure=\figure 
%\let\endofigure=\endfigure
%\def\figure{\ofigure[tp]\center\vskip2mm\setlength{\nhsize}{\hsize}\addtolength{\nhsize}{-2\fboxsep}\addtolength{\nhsize}{-2\fboxrule}}
%\def\endfigure{\endcenter\vskip-10\p@\endofigure}
%\@namedef{figure*}{\@dblfloat{figure}[tp]\center\vskip2mm\setlength{\nhsize}{\hsize}\addtolength{\nhsize}{-2\fboxsep}\addtolength{\nhsize}{-2\fboxrule}}
%\@namedef{endfigure*}{\endcenter\vskip-10\p@\end@dblfloat}
%
%\let\otable=\table
%\let\endotable=\endtable
%\def\table{\otable[tp]\center\vskip-1mm\setlength{\nhsize}{\hsize}\addtolength{\nhsize}{-2\fboxsep}\addtolength{\nhsize}{-2\fboxrule}}
%\def\endtable{\endcenter\endotable}
%\@namedef{table*}{\@dblfloat{table}[tp]\center\vskip-1mm\setlength{\nhsize}{\hsize}\addtolength{\nhsize}{-2\fboxsep}\addtolength{\nhsize}{-2\fboxrule}}
%\@namedef{endtable*}{\endcenter\end@dblfloat}

\long\def\@makecaption#1#2{\vskip 10\p@{\reset@font\small{\bf #1.} #2\par}} % caption without box
%\long\def\@makecaption#1#2{\vskip 10\p@{\reset@font\small{\bf #1.} #2\par}\vskip 10\p@} % caption without box, use only with above figure/table
%\long\def\@makecaption#1#2{\vskip 10\p@\fcolorbox{bgcol}{bgcol}{\parbox{\nhsize}{\reset@font\small{\bf #1.} #2}\par}\vskip 10\p@} % caption with box

\let\@oxfloat=\@xfloat
\def\@xfloat#1[#2]{\@oxfloat#1[#2]\small}

\sloppy\clubpenalty4000\widowpenalty4000
\leftmargini 2em
\leftmarginii 1.75em
\leftmarginiii 1.5em
\leftmarginiv 1em
\leftmarginv .5em
\leftmarginvi .5em
\def\labelitemi{\bf --}
\def\labelitemii{\bf --}
\def\labelitemiii{$\m@th\bullet$}
\def\labelitemiv{$\m@th\cdot$}

\def\maketitle{
\def\supplement##1{\expandafter
   {\csname url\endcsname{http://\@journalurl/\@pvol/\@fpage/\@pyear/\@journalnameshortlower-\@pvol-\@fpage-\@pyear-supplement.##1}}}
\ifodd\@fpage\else
   \ClassError{copernicus2}
   {Starting page must be odd!}{change the firstpage command}
\fi
   \setcounter{footnote}{0}
   \setcounter{page}{\@fpage}
   \thispagestyle{titlepage}
   \setcounter{footnote}{0}%
   \twocolumn[%
      \vspace{25mm}\hspace{10mm}{\begin{minipage}[t]{157mm}
         \null\vfil
         \noindent\begin{minipage}{\hsize}
            \raggedright
            \let\footnotesize\normalsize
            \let\footnoterule\relax
            \def\thefootnote{\fnsymbol{footnote}}%
            \def\@mpfn{footnote}%
            \let\thempfn=\thefootnote
            \renewcommand\@makefntext[1]{%
            \parindent 1em \noindent
            \@makefnmark##1}
            {\sffamily\LARGE\bfseries\center\color{textcol}{\@title}\par}
            \vspace{10pt}
            {\normalsize
               \renewcommand{\Authfont}{\bfseries}%
               \renewcommand{\Affilfont}{\reset@font}%
               \setlength{\affilsep}{4pt}%
               \baselineskip 15pt
               \let\and=\sw@and
               \if@noauthor\else
                  \begin{minipage}[t]{\hsize}\flushleft\baselineskip=12pt%
                     \center\@author
                  \end{minipage}
               \fi
            \par}%
         \end{minipage}
         \if!\@recvd!\else
            \if@twostagejnl
               \par\center{\small Received: \@recvd\ -- Published in \@journalnameabbreviation\ Discuss.: \@pubdiscuss\\[-0.5mm]
               Revised: \@revsd\ -- Accepted: \@accptd\ -- Published: \@published}
            \else         
               \par\center{\small Received: \@recvd\ \if!\@revsd!\else -- Revised: \@revsd\ \fi
               \if!\@accptd!\else -- Accepted: \@accptd\ \fi -- Published: \@published}
            \fi
         \fi
         \if!\@abstr!\else
            \par\vspace{10pt}
            \setlength{\nhsize}{\hsize}\addtolength{\nhsize}{-2\fboxsep}\addtolength{\nhsize}{-2\fboxrule}         
            \fcolorbox{bgcol}{bgcol}{\parbox{\nhsize}{%
               \par\noindent{\reset@font\normalsize\sffamily\bfseries\color{textcol}\abstractname.}\enspace\ignorespaces\@abstr % abstract name left
               %{\vspace{-7.5mm}\center\reset@font\normalsize\sffamily\bfseries\color{textcol}\center\abstractname\\[1.7mm]}\@abstr % abstract name centered
               \if!\@keyw!\else\vspace{1.7mm}\par\noindent{\reset@font\normalsize\sffamily\bfseries\color{textcol} Keywords.}\enspace\ignorespaces\@keyw\fi
            }}
         \fi
         \par\vspace{20pt}
      \end{minipage}%
   }]%
   {\renewcommand\@makefntext[1]{\parindent 1em \noindent ##1}%
   \let\footnotesize\normalsize
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
   \let\footnotesize\small
   \setcounter{footnote}{0}}%
}

\renewcommand\and{\@centercr}
\newcommand\sw@and{\end{minipage}\\[1em]\begin{minipage}[t]{\hsize}%
   \flushleft\baselineskip12pt}
   
\def\bartext#1{\def\@btext{#1}}                        \def\@btext{}

\def\pubyear#1{\if@cop@home\def\@pyear{#1}\fi}         \def\@pyear{\number\year}
\def\pubvol#1{\if@cop@home\def\@pvol{#1}\fi}           \def\@pvol{1}
 \ifwe
 \def\pubvol#1{\if@cop@home\def\@pvol{#1}\fi}           \def\@pvol{11}
 \fi
\def\firstpage#1{\if@cop@home\def\@fpage{#1}\fi}       \def\@fpage{1}

\def\runningauthor#1{\def\@runauth{#1}}                \def\@runauth{}
\def\runningtitle#1{\def\@runtit{#1}}                  \def\@runtit{}
\def\runninghead#1{\def\@runhd{#1}}                    \def\@runhd{\@runauth: \@runtit}

\def\correspondence#1{\def\@corresp{#1}}               \def\@corresp{}

\def\pubdiscuss#1{\if@cop@home\def\@pubdiscuss{#1}\fi} \def\@pubdiscuss{}
\def\received#1{\if@cop@home\def\@recvd{#1}\fi}        \def\@recvd{}
\def\revised#1{\if@cop@home\def\@revsd{#1}\fi}         \def\@revsd{}
\def\accepted#1{\if@cop@home\def\@accptd{#1}\fi}       \def\@accptd{}
\def\published#1{\if@cop@home\def\@published{#1}\fi}   \def\@published{}

\def\lastpage@putlabel{\addtocounter{page}{-1}%
   \immediate\write\@auxout{\string
   \newlabel{LastPage}{{}{\thepage}{}{}{}}}%
   \addtocounter{page}{1}}
\AtEndDocument{\clearpage\lastpage@putlabel}
\def\@lpage{\hypersetup{linkcolor=textcol}\pageref{LastPage}}

\def\keywords#1{\def\@keyw{#1}}                        \def\@keyw{}
\def\abstract#1{\def\@abstr{#1}}                       \def\@abstr{}
   
\newenvironment{acknowledgements}{\begin{description}\item[\color{textcol}\acknowsname]}{\end{description}}
\newenvironment{acknowledgement}{\begin{description}\item[\color{textcol}\acknowname]}{\end{description}}
   
\def\ps@runninghead{\let\@mkboth\@gobbletwo
   \if@cop@home
      \def\@oddhead{{\reset@font\sffamily\normalsize\color{textcol}\@runhd\hfil\makebox[\z@][r]{\thepage}
         \if@bar   
            {\setlength{\unitlength}{1.0cm}
            \begin{picture}(0,0)
            \color{barcol}\put(0.7,0){\rule[-300mm]{14mm}{400mm}}
            \color{textcol}\put(0.7,0){\rule[-300mm]{0.8pt}{400mm}}
            \end{picture}}
         \fi}}
      \def\@evenhead{{\reset@font\sffamily\normalsize\color{textcol}\makebox[\z@][l]{\thepage}\hfil\@runhd
         \if@bar
            {\setlength{\unitlength}{1.0cm}
            \begin{picture}(0,0)
            \color{barcol}\put(-19.7,0){\rule[-300mm]{14mm}{400mm}}
            \color{textcol}\put(-18.3,0){\rule[-300mm]{0.8pt}{400mm}}
            \end{picture}}
         \fi}}
      \def\@oddfoot{{\reset@font\sffamily\normalsize\color{textcol}\@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi
         \hfil \@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi}}
      \def\@evenfoot{{\reset@font\sffamily\normalsize\color{textcol}\@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi
         \hfil\@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi}}
   \else
      \def\@oddhead{\@runhd\hfil\makebox[\z@][r]{\thepage}}
      \def\@evenhead{\makebox[\z@][l]{\thepage}\hfil\@runhd}
      \def\@oddfoot{\@journalurl\hfil\@journalnameabbreviation}
      \def\@evenfoot{\@journalnameabbreviation\hfil\@journalurl}
   \fi}
   
\def\ps@titlepage{\let\@mkboth\@gobbletwo
   \if@cop@home
      \def\@oddhead{{\reset@font\sffamily\normalsize\color{textcol}\parbox[t]{0.5\textwidth}{%
         \@journalnameabbreviation\if@noref\else, \@pvol, \@fpage\if@nolastpage\else{--\@lpage}\fi, \@pyear\fi\\
         \@journalurl\if@noref\else/\@pvol/\@fpage/\@pyear/\fi\\
         \if@noref\else doi:10.5194/\@journalnameshortlower-\@pvol-\@fpage-\@pyear\fi\\
         \@journalcopyright}
         \hfill\@journallogo
         \if@bar
            {\setlength{\unitlength}{1.0cm}
            \begin{picture}(0,0)
            \color{barcol}\put(0.7,0){\rule[-300mm]{14mm}{400mm}} 
            \color{textcol}\put(0.7,0){\rule[-300mm]{0.8pt}{400mm}}           
            \put(1,0.3){\rotatebox{270}{\reset@font\sffamily\Large\color{textcol}\@btext}}      
            \end{picture}}
         \fi}}             
      \def\@oddfoot{{\reset@font\sffamily\normalsize\color{textcol}\@sentence\hfil}}
   \else
      \def\@oddhead{\parbox[t]{0.6\textwidth}{%
         Manuscript prepared for \@journalnameabbreviation\\
         with version \clsversion\ of the \LaTeX\ class copernicus2.cls.\\
         Date: \number\day~\ifcase\month\or January\or February\or%
            March\or April\or May\or June\or July\or August\or September\or%
            October\or November\or December\fi~\number\year}}
      \def\@oddfoot{}
   \fi}
   
\pagenumbering{arabic}

\flushbottom
\ps@runninghead

\AtBeginDocument{\mathindent\z@}
%% commands for narrow math
\AtBeginDocument{%
\thinmuskip = 1mu%
\medmuskip = 2mu plus 1mu minus 1mu%
\thickmuskip = 3mu plus 1mu%
}

%% End of file `copernicus2.cls'.
