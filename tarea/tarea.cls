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
% \titlelabel{\thetitle. }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand\facultad[1]{\renewcommand\@facultad{#1}}
\newcommand\@facultad{Facultad de Ciencias}

\newcommand\curso[1]{\renewcommand\@curso{#1}}
\newcommand\@curso{}

\newcommand\ntarea[1]{\renewcommand\@ntarea{#1}}
\newcommand\@ntarea{1}

\newcommand\tarea[1]{\renewcommand\@tarea{#1}}
\newcommand\@tarea{Tarea}

\newcommand\profesor[1]{\renewcommand\@profesor{#1}}
\newcommand\@profesor{}

\newcommand\ayudante[1]{\renewcommand\@ayudante{#1}}
\newcommand\@ayudante{}

\thispagestyle{fancy}
%\fancyh{}
\lhead{
  \begin{tabular}[t]{l}
    \small{\@facultad}\\
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
      \Large{\@tarea\space\@ntarea}
      \vspace{3pt}
      \large{\\\@curso}
    }
  \end{center}
  \vspace{15pt}

\noindent \textbf{\@author} \hfill \textbf{\@date}

\vspace{1mm}\noindent\hrule height 0.4mm \relax
\phantom \newline\newline


}
\endinput
