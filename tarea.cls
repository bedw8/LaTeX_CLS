%MIT License
%
%Copyright (c) 2019 tarea.cls
%
%Permission is hereby granted, free of charge, to any person obtaining a copy
%of this software and associated documentation files (the "Software"), to deal
%in the Software without restriction, including without limitation the rights
%to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%copies of the Software, and to permit persons to whom the Software is
%furnished to do so, subject to the following conditions:
%
%The above copyright notice and this permission notice shall be inclMIT License
%copies or substantial portions of the Software.
%
%THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%SOFTWARE.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tarea}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{default}}
\ProcessOptions \relax
\LoadClass{default}

\RequirePackage{subfiles}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}

\titleformat*{\section}{\bfseries}
\titleformat*{\subsection}{\bfseries}
%\titleformat*{\subsubsection}
% \titlelabel{\thetitle. }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@facultad{Facultad de Ciencias}
\newcommand\facultad[1]{\renewcommand\@facultad{#1}}

\def\@curso{}
\newcommand\curso[1]{\renewcommand\@curso{#1}}

\def\@ntarea{1}
\newcommand\ntarea[1]{\renewcommand\@ntarea{#1}}

\def\@tarea{Tarea}
\newcommand\tarea[1]{\renewcommand\@tarea{#1}}

\newcommand\profesor[1]{
\addperson{Profesor}{#1}
}

\newcommand\ayudante[1]{
\addperson{Ayudante}{#1}
}

\newcommand\auxiliar[1]{
\addperson{Auxiliar}{#1}
}

\newcommand\cargo[2][Cargo]{
   #1:\hspace{-5mm} &
     \begin{tabular}[t]{l}
       #2
     \end{tabular}\\
 }

\newcommand\@personal{}
\newcommand\addperson[2]{\appto\@personal{
    \cargo[#1]{#2}
}}

\thispagestyle{fancy}
%\fancyh{}
\lhead{\noindent
  \begin{tabular}[t]{l}
    \@facultad\\
    Universidad de Chile
  \end{tabular}
}
\rhead{
  {\begin{tabular}[t]{rl}
        \@personal
         \end{tabular}}
}

\setlength{\headheight}{40pt}
\renewcommand{\headrulewidth}{0.0pt}
%\fancyheadoffset[l]{6pt}
\fancyheadoffset[l]{\marginparpush + 1pt}
\fancyheadoffset[r]{\marginparsep}
      
\def\maketitle{
  \begin{center}
    \textbf{
      \Large{\@tarea\space\@ntarea}
      \vspace{3pt}
      \large{\\\@curso}
    }
  \end{center}
  \vspace{0mm}

\noindent\textbf{\@author} \hfill \textbf{\@date}

\vspace{1mm}\noindent\hrule height 0.4mm \relax
\phantom \newline\newline


}
\endinput
