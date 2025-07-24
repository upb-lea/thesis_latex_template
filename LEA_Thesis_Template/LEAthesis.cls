% LEA-thesis DOCUMENT CLASS -- version 1.2 (26.10.23)
%% Partitially based on svmono.cls and jku.cls
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{LEAthesis}[2023/10/26 v12 LEA global LaTeX document class for theses]

\LoadClass[12pt,twoside,a4paper]{book}


\newif\ifdeutsch
\newif\ifenglish
\newif\ifonline
\newif\ifdiss
\newif\iffinal
%\newif\ifupbfonts

\DeclareOption{english}{\englishtrue}
\DeclareOption{deutsch}{\deutschtrue}
\DeclareOption{online}{\onlinetrue}
\DeclareOption{diss}{\disstrue}
\DeclareOption{final}{\finaltrue}
%\DeclareOption{upbfonts}{\upbfontstrue}
\ProcessOptions\relax




\DeclareRobustCommand*{\title}[1]{\gdef\@title{#1}}
\DeclareRobustCommand*{\shorttitle}[1]{\gdef\@shorttitle{#1}}
\DeclareRobustCommand*{\author}[1]{\gdef\@author{#1}}
\DeclareRobustCommand*{\date}[1]{\gdef\@date{#1}}
\ifdiss\else\DeclareRobustCommand*{\thesistype}[1]{\gdef\@thesistype{#1}}\fi
\ifdiss\else\DeclareRobustCommand*{\matrnr}[1]{\gdef\@matrnr{#1}}\fi
\DeclareRobustCommand*{\supervisora}[1]{\gdef\@supervisora{#1}}
\DeclareRobustCommand*{\supervisorb}[1]{\gdef\@supervisorb{#1}}
\DeclareRobustCommand*{\supervisorc}[1]{\gdef\@supervisorc{#1}}
\ifdiss\else\DeclareRobustCommand*{\thesisnr}[1]{\gdef\@thesisnr{#1}}\fi
\ifdiss\else\DeclareRobustCommand*{\filingdate}[1]{\gdef\@filingdate{#1}}\fi
\ifdiss\DeclareRobustCommand*{\birthdate}[1]{\gdef\@birthdate{#1}}\fi
\ifdiss\DeclareRobustCommand*{\birthplace}[1]{\gdef\@birthplace{#1}}\fi
\ifdiss\DeclareRobustCommand*{\examdate}[1]{\gdef\@examdate{#1}}\fi
\ifdiss\DeclareRobustCommand*{\publicationyear}[1]{\gdef\@publicationyear{#1}}\fi
\ifdiss\DeclareRobustCommand*{\thesisnr}[1]{\gdef\@thesisnr{#1}}\fi
%

%% Language phrases
\ifenglish%
\def\abstractname{Abstract}%
\def\ackname{Acknowledgements}%
\def\andname{and}%
\def\bibname{References}%
\def\by{by}%
\def\lastandname{, and}%
 \def\acrname{Acronyms}%
\def\appendixname{Appendix}%
\def\chaptername{Chapter}%
\def\claimname{Claim}%
\def\conjecturename{Conjecture}%
\def\contentsname{Contents}%
\def\corollaryname{Corollary}%
\def\datename{Date}%
\def\declaration{Declaration of Authorship}%
\def\declarationtext{I declare that I have authored this thesis independently, that I have not used other than the declared sources, and that I have explicitly marked all material which has been quoted either literally or by content from the used sources. This paper was not previously presented to another examination board and has not been published.}%
\def\definitionname{Definition}%
\def\emailname{e-mail}%
\def\examplename{Example}%
\def\exercisename{Exercise}%
\def\figurename{Fig.}%
 \def\filingdatename{Filing Date}%
\def\forewordname{Foreword}%
\def\glossaryname{Glossary}%
\def\keywordname{{\bf Key words:}}%
\def\indexname{Index}%
\def\lemmaname{Lemma}%
\def\listsname{Lists}%
\def\contriblistname{List of Contributors}%
\def\listfigurename{List of Figures}%
\def\listtablename{List of Tables}%
\def\mailname{{\it Correspondence to\/}:}%
\def\nomname{Nomenclature}%
\def\noteaddname{Note added in proof}%
\def\notename{Note}%
\def\partname{Part}%
\def\prefacename{Preface}%
\def\problemname{Problem}%
\def\proofname{Proof}%
\def\propertyname{Property}%
\def\propositionname{Proposition}%
\def\questionname{Question}%
\def\refname{References}%
\def\remarkname{Remark}%
\def\seename{see}%
\def\signature{Signature}%
\def\solutionname{Solution}%
\def\subclassname{{\it Subject Classifications\/}:}%
\def\firstexaminer{First examiner}%
\def\secondexaminer{Second examiner}%
\def\supervisor{Supervisor}%
\def\tablename{Tab.}%
\def\thesisnrname{Thesis Nr.}%
\def\theoremname{Theorem}%
\def\titledepartment{Department of Power Electronics and Electrical Drives}%
\def\titleinstitute{Institute of Electrical Engineering and Information Technology}%
\def\titleuniversity{Paderborn University}
\fi
%
% German section
\ifdeutsch
 \def\abstractname{Zusammenfassung}%
 \def\ackname{Danksagung}%
 \def\andname{und}%
 \def\lastandname{ und}%
 \def\appendixname{Anhang}%
 \def\acrname{Abkürzungen}%
 \def\bibname{Literaturverzeichnis}%
 \def\by{von}%
 \def\chaptername{Kapitel}%
 \def\claimname{Behauptung}%
 \def\conjecturename{Hypothese}%
 \def\contentsname{Inhaltsverzeichnis}%
 \def\corollaryname{Korollar}%
 \def\datename{Datum}%
 \def\declaration{Eidesstattliche Erklärung}%
 \def\declarationtext{Ich versichere, dass ich die vorliegende wissenschaftliche Arbeit selbstständig verfasst und keine anderen als die angegebenen Hilfsmittel verwendet habe. Die Stellen der Arbeit, die anderen Werken dem Wortlaut oder dem Sinn nach entnommen sind, wurden unter Angabe der Quelle als Entlehnung deutlich gemacht. Das gleiche gilt auch für beigegebene Skizzen und Darstellungen. Diese Arbeit hat in gleicher oder ähnlicher Form meines Wissens nach noch keiner Prüfungsbehörde vorgelegen.}%
 \def\definitionname{Definition}%
 \def\emailname{E-mail}%
 \def\examplename{Beispiel}%
 \def\exercisename{\"Ubung}%
 \def\figurename{Abb.}%
 \def\filingdatename{Einreichdatum}%
 \def\forewordname{Geleitwort}%
 \def\glossaryname{Glossar}%
 \def\keywordname{{\bf Schl\"usselw\"orter:}}%
 \def\indexname{Sachverzeichnis}%
\def\lemmaname{Lemma}%
\def\listsname{Verzeichnisse}%
 \def\contriblistname{Mitarbeiter}%
 \def\listfigurename{Abbildungsverzeichnis}%
 \def\listtablename{Tabellenverzeichnis}%
 \def\mailname{{\it Kontakt\/}:}%
 \def\nomname{Formelzeichen}%
 \def\noteaddname{Nachtrag}%
 \def\notename{Anmerkung}%
 \def\partname{Teil}%
 \def\prefacename{Vorwort}%
\def\problemname{Problem}%
 \def\proofname{Beweis}%
 \def\propertyname{Eigenschaft}%
\def\propositionname{Proposition}%
 \def\questionname{Frage}%
 \def\refname{Literaturverzeichnis}%
 \def\remarkname{Anmerkung}%
 \def\seename{siehe}%
 \def\signature{Unterschrift}%
 \def\solutionname{L\"osung}%
 \def\subclassname{{\it Subject Classifications\/}:}%
 \def\firstexaminer{Erstprüfer}%
 \def\secondexaminer{Zweitprüfer}%
 \def\supervisor{Betreuer}%
 \def\tablename{Tab.}%
 \def\thesisnrname{Nummer der Arbeit}%
\def\theoremname{Theorem}%
\def\titledepartment{Fachgebiet Leistungselektronik und Elektrische Antriebssysteme}%
\def\titleinstitute{Institut für Elektrotechnik und Informationstechnik}%
\def\titleuniversity{Universit\"at Paderborn}
\fi

%% Hyphenation
\ifenglish\RequirePackage[english=usenglish]{hyphsubst}\fi
\ifdeutsch\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}\fi
\RequirePackage[hyphens]{url}

%%Graphics
\RequirePackage{graphicx,grffile}
\graphicspath{{fig/}{include/}{figures/}{images/}{../include/}{../figures/}{../images/}}
\def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth\else\Gin@nat@width\fi}
\def\maxheight{\ifdim\Gin@nat@height>\textheight\textheight\else\Gin@nat@height\fi}
% Scale images if necessary, so that they will not overflow the page
% margins by default, and it is still possible to overwrite the defaults
% using explicit options in \includegraphics[width, height, ...]{}
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}
\RequirePackage{epsfig}
%\pdfminorversion=7
\RequirePackage{rotating}
\RequirePackage[section]{placeins}% Grafiken in der dazugehÃ¶rigen section eingefÃŒgt
\RequirePackage{lmodern,etoolbox,letltxmacro}
\RequirePackage{setspace}

%% Math env
\RequirePackage[sumlimits,intlimits]{amsmath}	% mathematische Formelsetzung
\RequirePackage{amssymb}								% In diesem package sind die AMS-Symbole enthalten
\RequirePackage{amstext}								% Text innerhalb einer Formel
\RequirePackage{amsfonts}								% FÃŒr zusÃ€tzliche Schriften und Zeichen
\RequirePackage{amsxtra}								% Sonderfunktionen
\RequirePackage{amsopn}									% Definition eigener Operatoren
\RequirePackage{amscd}									% Erstellen einafcher kommutativer Diagramme
\RequirePackage{amsbsy}									% Darstellung fettgedruckter mathematischer Symbole
\RequirePackage{bm}
\RequirePackage[scaled]{helvet}

\RequirePackage[
free-standing-units, 
space-before-unit, 
number-unit-product = \,, 
output-decimal-marker = {,},
per-mode=fraction,
separate-uncertainty = true,
multi-part-units = repeat
]{siunitx}

%% Text settings
\RequirePackage{ifxetex,ifluatex}
\RequirePackage{fix-cm}
\RequirePackage{setspace}
\RequirePackage{datetime2}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{upquote}
%\RequirePackage{microtype}
\RequirePackage{xspace}
\RequirePackage{blindtext}
\RequirePackage[parfill]{parskip}
\RequirePackage[unicode=true]{hyperref}
\hypersetup{
  pdfborder={0 0 0},
  breaklinks=true
}
\RequirePackage{csquotes}
\ifdeutsch
    \RequirePackage[ngerman]{babel}
\fi
\ifenglish
    \RequirePackage[english]{babel}
\fi

% \ifupbfonts
% \RequirePackage{fontspec}
% \setsansfont{SegoeUI}[
%     Path=./fonts/SegoeUI/,
%     Extension = .ttf,
%     UprightFont=*-Regular,
%     BoldFont=*-Bold,
%     ItalicFont=*-Italic,
%     BoldItalicFont=*-BoldItalic
%     ]
%
% \setmainfont{SegoeUI}[
%     Path=./fonts/SegoeUI/,
%     Extension = .ttf,
%     UprightFont=*-Regular,
%     BoldFont=*-Bold,
%     ItalicFont=*-Italic,
%     BoldItalicFont=*-BoldItalic
%     ]
% %
% % \setsansfont{Karla}[
% %     Path=./fonts/Karla/,
% %     Extension = .ttf,
% %     UprightFont=*-Regular,
% %     BoldFont=*-Bold,
% %     ItalicFont=*-Italic,
% %     BoldItalicFont=*-BoldItalic
% %     ]
% %
% % \setmainfont{Karla}[
% %     Path=./fonts/Karla/,
% %     Extension = .ttf,
% %     UprightFont=*-Regular,
% %     BoldFont=*-Bold,
% %     ItalicFont=*-Italic,
% %     BoldItalicFont=*-BoldItalic
% %     ]
%
% \fi




\RequirePackage{algorithm}
\RequirePackage{algpseudocode}


\urlstyle{same}  % don't use monospace font for urls

\RequirePackage[backend=biber,style=ieee,giveninits=true,maxnames=99,minnames=3,natbib,autopunct,backref=false,doi=false,isbn=false,url=true,backrefstyle=three+,defernumbers=true]{biblatex}
%\RequirePackage[backend=biber,style=alphabetic,giveninits=true,maxnames=99,minnames=3,natbib,autopunct,backref=false,doi=false,isbn=false,url=true,backrefstyle=three+,defernumbers=true]{biblatex}

\RequirePackage[belowskip=12pt,aboveskip=4pt,figurename=\figurename,tablename=\tablename,labelfont=bf]{caption}

\RequirePackage{subcaption}
\RequirePackage[countmax]{subfloat}


%% Tikz
\RequirePackage{pgfplots}
\usetikzlibrary{shapes, arrows, positioning, fit, calc, patterns, decorations.pathmorphing,decorations.pathreplacing,decorations.shapes,decorations.text}
\usepgfplotslibrary{groupplots}% Use this package to import Inkscape generated pdfs with pdf_tex files
\pgfplotsset{compat=newest}
\RequirePackage{import}
\newlength\fheight % Plots aus Matlab immer gleich gross
\newlength\fwidth % Plots aus Matlab immer gleich gross
\RequirePackage[european,straightvoltages,straightlabels,american inductors]{circuitikz}



% % % % Table related features

% Define new column types to allow centering and width of each cell
\RequirePackage{array}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Tables 
\RequirePackage{tabularx, etoolbox, booktabs}
\RequirePackage{multirow} % Allows rowspan
%\newcommand{\rarray}[1]{\renewcommand{\arraystretch}{#1}} % Slightly enlarged cells

\setlength{\emergencystretch}{3em}  % prevent overfull lines
%


%% Head and foot
\RequirePackage[includeheadfoot,top=0cm,headheight=16pt,margin=2.5cm]{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}{}}
\fancyhf{}
\ifonline
\fancyhead[L]{\@author}
\fancyhead[R]{\@shorttitle}
\fancyhead[C]{}
\fancyfoot[R]{}%outer
\fancyfoot[L]{}%inner
\fancyfoot[C]{\thepage}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{\thepage}%outer
    \renewcommand{\headrulewidth}{0pt}
}
\else
\fancyhead[LE]{ \thechapter~\leftmark}
\fancyhead[RO]{ \leftmark~\thechapter}
\fancyhead[RE,LO]{\rightmark}
\fancyhead[C]{}
\fancyfoot[RO,LE]{\thepage}%outer
\fancyfoot[RE,LO]{}%inner
\fancyfoot[C]{}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[RO,LE]{\thepage}%outer
    \renewcommand{\headrulewidth}{0pt}
}
\fi


\tolerance=500

\predisplaypenalty=0
\clubpenalty=10000
\widowpenalty=10000

\setlength\footnotesep{7.7\p@}

\newdimen\betweenumberspace          % dimension for space between
\betweenumberspace=5\p@               % number and text of titles
\newdimen\headlineindent             % dimension for space of
\headlineindent=2.5cc                % number and gap of running heads

\ifonline
\def\cleardoublepage{\clearpage}

\newcommand{\clearemptydoublepage}{%
        \clearpage}
\newcommand{\startnewpage}{\clearpage}
\else
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\newcommand{\clearemptydoublepage}{%
        \clearpage{\pagestyle{empty}\cleardoublepage}
        }
\newcommand{\startnewpage}{\if@openright\clearemptydoublepage\else\clearpage\fi}
\fi


% (re)define sectioning
\setcounter{secnumdepth}{3}

\def\seccounterend{}
\def\seccountergap{\hskip\betweenumberspace}
\def\@seccntformat#1{\csname the#1\endcsname\seccounterend\seccountergap\ignorespaces}
%
\let\firstmark=\botmark
%
\@ifundefined{thechapterend}{\def\thechapterend{}}{}
%
\let\cleardoublepagebackup\cleardoublepage
%

%% Matter definitions
\newif\if@mainmatter \@mainmattertrue
\renewcommand\frontmatter{\startnewpage
    \pagestyle{fancy}
    \@mainmatterfalse\pagenumbering{roman}
    \setcounter{page}{1}
    \titleformat{\chapter}
    [display] % The paragraph shape
    {\bfseries\huge} % Format of the main text
    {} % Label is ommitted here, since it is below
    {0ex}
    {\vspace{-5ex}\titlerule\vspace{1.5ex}\filright~}
    [\vspace{1ex}\titlerule]

    \let\cleardoublepage\clearpage
}
%
\renewcommand\mainmatter{
    \let\cleardoublepage\cleardoublepagebackup
    \clearemptydoublepage
    \pagestyle{fancy}
    \@mainmattertrue
    \pagenumbering{arabic}
    \titleformat{\chapter}
    [display] % The paragraph shape
    {\bfseries\huge} % Format of the main text
    {} % Label is ommitted here, since it is below
    {0ex}
    {\vspace{-5ex}\titlerule\vspace{1.5ex}\filright \thechapter~}
    [\vspace{1ex}\titlerule]
    \let\cleardoublepage\cleardoublepagebackup
}
%
\renewcommand\backmatter{
    \pagestyle{fancy}
    \clearemptydoublepage
    \@mainmatterfalse
    \titleformat{\chapter}
    [display] % The paragraph shape
    {\bfseries\huge} % Format of the main text
    {} % Label is ommitted here, since it is below
    {0ex}
    {\vspace{-5ex}\titlerule\vspace{1.5ex}\filright~}
    [\vspace{1ex}\titlerule]

}
%

%% Verzeichnisse
\makeindex
\RequirePackage[acronym,shortcuts,nopostdot,nogroupskip,section,nonumberlist]{glossaries}
\renewcommand*{\glsgroupskip}{}
\makeglossaries

\ifenglish
\RequirePackage[english,notintoc,refeq,norefpage]{nomencl}
\renewcommand\nomname{Nomenclature}
\fi
\ifdeutsch
\RequirePackage[german,notintoc,refeq,norefpage]{nomencl}
\renewcommand\nomname{Formelzeichen}
\renewcommand{\nomlabelwidth}{6em}
\renewcommand{\eqdeclaration}[1]{ (Gl.~#1)}
\renewcommand{\pagedeclaration}[1]{, S.~#1)}
\fi
\makenomenclature
%%%%%%%%%%% Nomencl als Section umdefiniert
%\makeatletter
\def\thenomenclature{%
  \section*{\nomname}
  \if@intoc\addcontentsline{toc}{section}{\nomname}\fi%
\nompreamble
\list{}{%
\labelwidth\nom@tempdim
\leftmargin\labelwidth
\advance\leftmargin\labelsep
\itemsep\nomitemsep
\let\makelabel\nomlabel}}
%\makeatother

%%%%%%%%%%%%%%%%
\renewcommand\listoffigures{%
    \section*{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    }
\renewcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\renewcommand\listoftables{%
    \section*{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    }
\let\l@table\l@figure
  
% lists environment
\newenvironment{lists}
{\clearpage
\chapter{\listsname}
\phantomsection\addcontentsline{toc}{section}{\listtablename}\listoftables
\phantomsection\addcontentsline{toc}{section}{\listfigurename}\listoffigures
\phantomsection\addcontentsline{toc}{section}{\acrname}\printglossary[type=\acronymtype,title=\acrname]
\phantomsection\addcontentsline{toc}{section}{\glossaryname}\printglossary[title=\glossaryname]
\phantomsection\addcontentsline{toc}{section}{\nomname}\printnomenclature
\printbibliography[heading=subbibintoc,title=\refname]
}{\clearpage}
%
%


% abstract environment
\newenvironment{abstract}
{\clearpage
\chapter*{\abstractname}
}{\clearpage}


% % Appendix
\renewcommand\appendix{\par
                \stepcounter{chapter}%
                \setcounter{chapter}{1}%
                \stepcounter{section}%
                \setcounter{section}{0}%
                \setcounter{equation}{0}%
                \setcounter{figure}{0}%
                \setcounter{table}{0}%
                \setcounter{footnote}{0}%
                \pagestyle{fancy}%
  \def\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}%
    \chapter{\appendixname}%
}

%% Internal reference shortcuts
\ifenglish\newcommand{\figref}[1]{Fig.~\ref{#1}}\fi 
\ifdeutsch\newcommand{\figref}[1]{Abb.~\ref{#1}}\fi

\newcommand{\tabref}[1]{Tab.~\ref{#1}}

\ifenglish\newcommand{\capref}[1]{Ch.~\ref{#1}}\fi 
\ifdeutsch\newcommand{\capref}[1]{Kap.~\ref{#1}}\fi


%  special signs and characters
\RequirePackage{upgreek}
\newcommand{\D}{\mathrm{d}}
\newcommand{\E}{\mathrm{e}}
\let\eul=\E
\newcommand{\I}{{\rm j}}
\let\imag=\I
\DeclareMathOperator{\exponential}{exp}
\DeclareMathOperator{\trace}{tr}
\DeclareMathOperator{\argmax}{argmax}
\DeclareMathOperator{\argmin}{argmin}
\DeclareMathOperator{\variance}{var}
\newcommand{\const}{\mathrm{const}\@ifnextchar.{}{.}}

 \def\vec#1{\ensuremath{\mathchoice
                     {\mbox{\boldmath$\displaystyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\textstyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\scriptstyle\mathbf{#1}$}}
                     {\mbox{\boldmath$\scriptscriptstyle\mathbf{#1}$}}}}%

\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{1.5\p@}


%% Table of contents
\setcounter{tocdepth}{2}

\newdimen\tocchpnum
\newdimen\tocsecnum
\newdimen\tocsectotal
\newdimen\tocsubsecnum
\newdimen\tocsubsectotal
\newdimen\tocsubsubsecnum
\newdimen\tocsubsubsectotal
\newdimen\tocparanum
\newdimen\tocparatotal
\newdimen\tocsubparanum
\tocchpnum=20\p@            % chapter {\bf 88.} \@plus 5.3\p@
\tocsecnum=22.5\p@          % section 88.8. plus 4.722\p@
\tocsubsecnum=30.5\p@       % subsection 88.8.8 plus 4.944\p@
\tocsubsubsecnum=38\p@      % subsubsection 88.8.8.8 plus 4.666\p@
\tocparanum=45\p@           % paragraph 88.8.8.8.8 plus 3.888\p@
\tocsubparanum=53\p@        % subparagraph 88.8.8.8.8.8 plus 4.11\p@
\def\calctocindent{%
\tocsectotal=\tocchpnum
\advance\tocsectotal by\tocsecnum
\tocsubsectotal=\tocsectotal
\advance\tocsubsectotal by\tocsubsecnum
\tocsubsubsectotal=\tocsubsectotal
\advance\tocsubsubsectotal by\tocsubsubsecnum
\tocparatotal=\tocsubsubsectotal
\advance\tocparatotal by\tocparanum}
\calctocindent

\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\rightskip \@tocrmarg \advance\rightskip by \z@ \@plus 2cm
               \parfillskip -\rightskip \pretolerance=10000
     \parindent #2\relax\@afterindenttrue
     \interlinepenalty\@M
     \leavevmode
     \ifnum #1>\c@secnumdepth \@tempdima\z@ \else \@tempdima #3\fi
%    \@tempdima #3\relax
     \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
     {#4}\nobreak
     \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
     \nobreak
     \hb@xt@\@pnumwidth{\hfil\normalfont \normalcolor #5}%
     \par}%
  \fi}
%
\def\l@section{\@dottedtocline{1}{\tocchpnum}{\tocsecnum}}
\def\l@subsection{\@dottedtocline{2}{\tocsectotal}{\tocsubsecnum}}
\def\l@subsubsection{\@dottedtocline{3}{\tocsubsectotal}{\tocsubsubsecnum}}
\def\l@paragraph{\@dottedtocline{4}{\tocsubsubsectotal}{\tocparanum}}
\def\l@subparagraph{\@dottedtocline{5}{\tocparatotal}{\tocsubparanum}}


\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width 36mm
  \kern2.6\p@}

\newdimen\foot@parindent
\foot@parindent 10.83\p@

\footnotesep 9\p@

%%% Title Page
\def\maketitle{
\ifdiss{
%Title Page Master
\newpage
\pagestyle{empty}
\newgeometry{top=2.5cm,left=2.5cm,right=2.5cm,bottom=2.5cm}
 \null
  \begingroup
\def\and{\unskip, }
  \parindent=\z@
  \pretolerance=10000
  \rightskip=\z@ \@plus 3cm
  \ifenglish{
    %%%%%%%%%% english dissertation version
  \begin{center}
  	\includegraphics[height=2.5cm]{Logos/UPB_Logo_ENG_coloured_CMYK}
  	\hfill
  	\includegraphics[height=2cm]{Logos/EIM}
  	%\linespread{1.0}
  	\sffamily
  	\vfill
  	{\Huge \begin{spacing}{1.1}\textbf{\\[13mm] \@title \\[15mm]}\end{spacing}}
  	\vfill
  	\large{A thesis submitted in fulfillment of the requirements}\\
  	\Large{for the degree of Doktoringenieur (Dr.-Ing.)\\[5mm]
  		\large{in the department}}\\[5mm]
  	\Large{Power Electronics and Electrical Drives}\\[5mm]
  	\iffinal approved\ \else submitted\ \fi dissertation \\
  	by \\[5mm]
  	\Large{\@author} \\[5mm]
  	\iffinal{
  		\begin{tabular}[ht]{ll}
  			\Large{First examiner:} & \Large{\@supervisora}\\
  			\Large{Second examiner:} & \Large{\@supervisorb}\\[5mm]
  			\Large{Oral examination:\ \ } & \Large{\@examdate}
  		\end{tabular}\\[12mm]
  		
  		\Large{Paderborn \@publicationyear} \\[6mm]
  		\Large{Diss. EIM-E/\@thesisnr}
  	}\else{
  		\Large{born on \@birthdate\ in \@birthplace}
  	}\fi
  	\vfill
  \end{center}
  }\fi
  \ifdeutsch{
  	  %%%%%%%%%% german dissertation version
  	\begin{center}
  		\includegraphics[height=2.5cm]{Logos/UPB_Logo_DE_vierfarbig_CMYK}
  		\hfill
  		\includegraphics[height=2cm]{Logos/EIM}
  		%\linespread{1.0}
  		\sffamily
  		\vfill
  		{\Huge \begin{spacing}{1.1}\textbf{\\[13mm] \@title \\[15mm]}\end{spacing}}
  		\vfill
  		\Large{Der Fakultät für Elektrotechnik, Informatik und Mathematik}\\
  		\Large{der Universität Paderborn}\\[5mm]
  		\large{zur Erlangung des akademischen Grades\\[5mm]
  			\Large{Doktor der Ingenieurwissenschaften (Dr.-Ing.)}}\\[5mm]
  		\iffinal genehmigte\ \else vorgelegte\ \fi Dissertation \\
  		von \\[5mm]
  		\Large{\@author} \\[5mm]
  		\iffinal{
  			\begin{tabular}[ht]{ll}
  				\Large{Erster Gutachter:} & \Large{\@supervisora}\\
  				\Large{Zweiter Gutachter:} & \Large{\@supervisorb}\\[5mm]
  				\Large{Tag der mündlichen Prüfung:\ \ } & \Large{\@examdate}
  			\end{tabular}\\[12mm]
  			
  			\Large{Paderborn \@publicationyear} \\[6mm]
  			\Large{Diss. EIM-E/\@thesisnr}
  		}\else{
  			\Large{geboren am \@birthdate\ in \@birthplace}
  		}\fi
  		\vfill
  	\end{center}
  }\fi
  
  
  
  
  

\endgroup
\restoregeometry
\newpage
}\else{
%Title Page Master
\newpage
\pagestyle{empty}
\newgeometry{top=2.5cm,left=2.5cm,right=2.5cm,bottom=2.5cm}
 \null
  \begingroup
  \def\and{\unskip, }
  \parindent=\z@
  \pretolerance=10000
  \rightskip=\z@ \@plus 3cm
  \ifenglish\includegraphics[height=2.5cm]{Logos/UPB_Logo_ENG_coloured_CMYK}\fi
  \ifdeutsch\includegraphics[height=2.5cm]{Logos/UPB_Logo_DE_vierfarbig_CMYK} \fi
  \hfill
  \includegraphics[height=2cm]{Logos/logo_lea}
  \\[5ex]
 \begin{center}
\textbf{\titleinstitute\\[.2ex]
\titleuniversity\\[.2ex]
\titledepartment\\[.2ex]
Prof. Dr.-Ing. Jakub Kučka}
\vfill
 {\LARGE \textbf{\@thesistype} }\vskip3ex
 {\Huge \begin{spacing}{1.1} \textbf{\@title}\end{spacing}}
 \vfill
{\Large \by}
\vfill
{\Large  \@author }\vskip1ex
\ifenglish{\Large Student ID: \@matrnr }\fi
\ifdeutsch{\Large Matr.-Nr.: \@matrnr }\fi
\\[3cm]
\vfill
 \end{center}
 {\large \firstexaminer: \@supervisora }\vskip.1ex
 {\large \secondexaminer: \@supervisorb }\vskip.1ex
 {\large \supervisor: \@supervisorc }\vskip.1ex
 {\large \thesisnrname: \@thesisnr }\vskip.1ex
 {\large \filingdatename: \@filingdate }
\endgroup
\restoregeometry
\newpage
}\fi
}

%%% Declaration
\def\makedeclaration{
 \chapter*{\declaration}
  \declarationtext\vskip5ex
  \begin{tabbing}
Paderborn, \hspace{0.4cm} \= \rule[-0.15\baselineskip]{5cm}{.4pt}  \hspace{0.7cm}\= \rule[-0.15\baselineskip]{6cm}{.4pt}\\
% \renewcommand{\baselinestretch}{0.5}\normalsize
\>\small{\datename}\>\small{\signature}
\end{tabbing}
}


\endinput
%end of file LEAthesis.cls
