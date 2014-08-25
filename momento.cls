%\NeedsTeXFormat{LaTeX2e}
%\ProvidesClass{momento}[2014/05/23 v.0 A LaTeX document class for keeping nice notes.]

\PassOptionsToClass{\CurrentOption}{memoir}

\LoadClass[a4paper, openany, oldfontcommands,twocolumn, 10pt]{memoir}

%%%% Allow complex maths
\usepackage{amsmath}
\usepackage{amsthm}


%%%% Margins

\settypeblocksize{245mm}{155mm}{*}
\setulmargins{2.5cm}{*}{*}
\setheadfoot{\onelineskip}{2\onelineskip}
\setheaderspaces{1.5cm}{*}{*}
\setlength{\columnsep}{0.5cm}
\setlrmarginsandblock{2cm}{1.5cm}{*}
\checkandfixthelayout


%%%% Automatic Title Generation Settings.

\usepackage{color}					% Coloured Text
\usepackage[usenames,dvipsnames]{xcolor}

\setlength\droptitle{-1cm}

% Hook A appears above the title.
%\def\maketitlehooka{
%
%}

% Hook B appears below the title
%\def\maketitlehookb{
%
%}

% The Pre-title hook changes the behaviour 
% of the rendering engine prior to setting the title.

\pretitle{
  \begin{minipage}{0.75\textwidth}
    \begin{flushleft}
      \begingroup
      \color{Maroon}
      \Huge \bfseries
}

\posttitle{
      \endgroup
   \end{flushleft}
  \end{minipage}
}

\preauthor{
  \vspace*{-.1cm}
   \hfill
   \begin{minipage}{0.18\textwidth}
   \hfill
 }
 \postauthor{
   \end{minipage}
 }
\predate{
   \begin{minipage}{\textwidth}
   \hfill
 }
\postdate{
  \end{minipage}
  \vspace*{0.2cm}
  \hrule
  \vspace*{0.2cm}
 }

%%%% Chapter Headings
\makechapterstyle{minimalist}{%
  \renewcommand*{\chapnamefont}{}
  \renewcommand*{\chaptitlefont}{\Large \rmfamily \scshape}
  \renewcommand*{\chapnumfont}{\color{Maroon}\normalfont\Huge}
  \renewcommand*{\printchaptername}{}
  \setlength{\chapindent}{0pt}
  \renewcommand*{\afterchapternum}{}
  \addtolength{\chapindent}{0pt}
  \renewcommand*{\printchapternum}{\chapnumfont \thechapter\space}
  \renewcommand{\printchaptertitle}[1]{%
      \chaptitlefont 
      \scshape ##1 
    }
}

\chapterstyle{minimalist}
\setlength\beforechapskip{0cm}
\def\afterchaptertitle{
  \vspace{1cm}
}
%\def\clearforchapter{
%  \newpage
%}

%%%%% Theorem-like environments
\newtheorem{definition}{Definition}
\numberwithin{definition}{chapter} % important bit
\newtheorem{lemma}{Lemma}
\numberwithin{lemma}{chapter} % important bit
\newtheorem{theorem}{Theorem}
\numberwithin{theorem}{chapter} % important bit
%\newtheorem{proof}{Proof}
%\numberwithin{proof}{theorem} % important bit
\newtheorem{subtheorem}{}
\numberwithin{subtheorem}{theorem} % important bit
\newtheorem{corollary}{Corollary}
\numberwithin{corollary}{chapter} % important bit
\newtheorem{algorithm}{Algorithm}
\numberwithin{algorithm}{chapter} % important bit
\newtheorem{property}{Property}
\numberwithin{property}{chapter} % important bit
\newtheorem{properties}{Properties}
\numberwithin{properties}{chapter} % important bit
\numberwithin{equation}{chapter}

\makeatletter
\renewcommand\tableofcontents{%
    \@starttoc{toc}%
}
\makeatother

