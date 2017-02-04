defaults
defaultLatexHeader
	^ '\documentclass[a4paper,10pt,twoside]{book}
\usepackage[
	papersize={6.13in,9.21in},
	hmargin={.75in,.75in},
	vmargin={.75in,1in},
	ignoreheadfoot
]{geometry}

% packages
\usepackage{tikz}
\usepackage{color}
\usepackage{xcolor}
\usepackage{xspace}
\usepackage{ifthen}
\usepackage{amsbsy}
\usepackage{amssymb}
\usepackage{tabularx}
\usepackage{verbatim}
\usepackage{needspace}
\usepackage{microtype}

% english
\usepackage[english]{babel}
\usepackage[parfill]{parskip}
\usepackage[normalem]{ulem}

% fonts
\usepackage{lmodern}
\usepackage{palatino}
\usepackage[T1]{fontenc}

% references
\usepackage{hyperref}
\usepackage[all]{hypcap}
\setcounter{tocdepth}{2}
\hypersetup{
	colorlinks=true,
	linkcolor=black,
	anchorcolor=black,
	citecolor=black,
	filecolor=black,
	pagecolor=black,
	urlcolor=black,
	plainpages=black,
	bookmarksopen=true,
	bookmarksopenlevel=2}

% boxes
\newsavebox{\StandoutBox}

\definecolor{noteBackground}{HTML}{EBEBEB}
\definecolor{noteForeground}{HTML}{777777}
\newenvironment{note}%
	{\begin{lrbox}{\StandoutBox}%
	 \begin{minipage}{0.97\textwidth}}
	{\end{minipage}%
	 \end{lrbox}%
	 \begin{center}
		\begin{tikzpicture}
			\node [fill=noteBackground, rectangle, rounded corners, inner sep=5pt] (box)
				{\usebox{\StandoutBox}};
			\node [text=noteForeground, anchor=south west] at (box.north west)
				{\textbf{Note}};
		\end{tikzpicture}
	 \end{center}}

\definecolor{advancedBackground}{HTML}{D9E6EE}
\definecolor{advancedForeground}{HTML}{01598E}
\newenvironment{advanced}%
	{\begin{lrbox}{\StandoutBox}%
	 \begin{minipage}{0.97\textwidth}}
	{\end{minipage}%
	 \end{lrbox}%
	 \begin{center}
		\begin{tikzpicture}
			\node [fill=advancedBackground, rectangle, rounded corners, inner sep=5pt] (box)
				{\usebox{\StandoutBox}};
			\node [text=advancedForeground, anchor=south west] at (box.north west)
				{\textbf{Advanced}};
		\end{tikzpicture}
	 \end{center}}

\definecolor{importantBackground}{HTML}{E8E0EF}
\definecolor{importantForeground}{HTML}{662D91}
\newenvironment{important}%
	{\begin{lrbox}{\StandoutBox}%
	 \begin{minipage}{0.97\textwidth}}
	{\end{minipage}%
	 \end{lrbox}%
	 \begin{center}
		\begin{tikzpicture}
			\node [fill=importantBackground, rectangle, rounded corners, inner sep=5pt] (box)
			 	{\usebox{\StandoutBox}};
			\node [text=importantForeground, anchor=south west] at (box.north west)
				{\textbf{Important}};
		\end{tikzpicture}
	 \end{center}}

\newenvironment{todo}%
	{\obeylines\comment}%
	{\endtrivlist\normalsize}

\newenvironment{blockquote}%
	{\begin{quote}}
	{\end{quote}}

% source code
\usepackage{textcomp}
\usepackage{listings}
\lstset{
	language={},
	% characters
	tabsize=3,
	frame=single,
	framesep=2pt,
	upquote=true,
	framerule=0pt,
	keepspaces=true,
	breaklines=true,
	alsoletter={\#:},
	mathescape=false,
	columns=fullflexible,
	breakautoindent=true,
	showstringspaces=false,
	basicstyle=\sffamily,
	backgroundcolor=\color{noteBackground}}
\newcommand{\ct}[1]{{\sffamily\textup{#1}}}

% float placement: http://www.tex.ac.uk/cgi-bin/texfaq2html?label=floats
\renewcommand{\topfraction}{.85}
\renewcommand{\bottomfraction}{.7}
\renewcommand{\textfraction}{.15}
\renewcommand{\floatpagefraction}{.66}
\renewcommand{\dbltopfraction}{.66}
\renewcommand{\dblfloatpagefraction}{.66}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}

% supress widows and orphans
\widowpenalty=300
\clubpenalty=300

% keyword index 
\usepackage{makeidx}
\makeindex
\makeglossary

% graphics
\usepackage{graphicx}
\DeclareGraphicsExtensions{.png,.jpg,.pdf,.gif}

% references
\def\partautorefname{Part}
\def\chapterautorefname{Chapter}
\def\sectionautorefname{Section}
\def\subsectionautorefname{Section}
\def\figureautorefname{Figure}
\def\tableautorefname{Table}'