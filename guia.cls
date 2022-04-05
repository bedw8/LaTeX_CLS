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

\titleformat*{\section}{\bfseries}
\titleformat*{\subsection}{\bfseries}
%\titleformat*{\subsubsection}
% \titlelabel{\thetitle. \,}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\curso[1]{\renewcommand\@curso{#1}}
\newcommand\@curso{}

\newcommand\nguia[1]{\renewcommand\@nguia{#1}}
\newcommand\@nguia{1}

\newcommand\guia[1]{\renewcommand\@guia{#1}}
\newcommand\@guia{Guia}

\newcommand\profesor[1]{\renewcommand\@profesor{
    #1
  }}
\newcommand\@profesor{}

\newcommand\ayudante[1]{\renewcommand\@ayudante{
    #1     
  }}
\newcommand\@ayudante{Benjamín Ortiz E}

\renewcommand\author[1]{\renewcommand\@author{#1\hfill}}

\thispagestyle{fancy}
%\fancyh{}
\lhead{
  \begin{tabular}[t]{l}
    \small{Facultad de Ciencias}\\
    \small{Universidad de Chile}
  \end{tabular}
}
\fancyhead[R]{
  \small{\begin{tabular}[t]{rl}
           Profesor:\hspace{-4mm}
           &
             \begin{tabular}[t]{l}
               \@profesor
             \end{tabular}\\
           Ayudante:\hspace{-4mm}
           &
             \begin{tabular}[t]{l}
               \@ayudante
             \end{tabular}
         \end{tabular}}
}

\setlength{\headheight}{25pt}
\renewcommand{\headrulewidth}{0.0pt}
\fancyheadoffset[l]{6pt}
\fancyheadoffset[r]{15pt}

\def\maketitle{
  \begin{center}
    \textbf{
      \large{\@guia\space\@nguia}\\
      \large{\@curso}}
  \end{center}


\noindent \textbf{\@author}\textbf{\MONTH\space \the\year}\vspace{4pt}

\hrule
}

\endinput
