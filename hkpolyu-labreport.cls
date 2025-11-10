\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hkpolyu-labreport}[2025/11/10 HK PolyU Lab Report Class]

% Base class
\LoadClass[16pt]{article}

% Packages
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\RequirePackage{titling}
\RequirePackage{hyperref}
\RequirePackage{hyperref}
\RequirePackage{caption}
\RequirePackage{float}

% Page layout
\geometry{a4paper, margin=2.5cm}
\pagestyle{fancy}
\fancyhf{}
\lhead{\thetitle}
\cfoot{\thepage}


% Metadata commands
\newcommand{\coursecode}[1]{\def\thecoursecode{#1}}
\newcommand{\coursename}[1]{\def\thecoursename{#1}}
\newcommand{\studentid}[1]{\def\thestudentid{#1}}

% Logo command with optional width
\newcommand{\setlogo}[2][10cm]{%
  \def\logowidth{#1}%
  \def\thelogo{#2}%
}

% Keywords
\newcommand{\keywords}[1]{%
  \vspace{1em}
  \noindent\textbf{Keywords:} #1
}

% Title page
\renewcommand{\maketitle}{
  \begin{titlepage}
    \centering
    \includegraphics[width=\logowidth]{\thelogo}\vspace{1cm}

    {\Huge \bfseries \thetitle \par}
    \vspace{2cm}
    {\Large \thesubtitle \par}
    \vspace{2cm}

    {\large \thecoursecode \par}
    \vspace{2cm}
     {\large \thecoursename \par}
    \vspace{2cm}
    {\large \theauthor \par}
    \vspace{2cm}
    {\large \thestudentid \par}
    \vspace{2cm}
    {\large \thdate \par}

  \end{titlepage}
}

