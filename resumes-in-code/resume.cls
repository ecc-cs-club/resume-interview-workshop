\ProvidesClass{resume}[2022/11/17 v0.1.0 Resume Class]
\LoadClass[11px,letterpaper]{article} % Font size and paper type

\RequirePackage{xparse}
\RequirePackage[margin=0.8in]{geometry}
\RequirePackage[parfill]{parskip}
\RequirePackage{enumitem}
\RequirePackage{ragged2e}
\RequirePackage{setspace}
\RequirePackage{multicol}

\setlist[itemize]{noitemsep, topsep=0pt}
\setstretch{1.2}
\pagestyle{empty}

\def \var@infoperson {Michael Gary Scott}
\NewDocumentCommand{\infoperson}{m} { \def \var@infoperson {#1} }

\def \var@infoaddress {Scranton, PA 18105}
\NewDocumentCommand{\infoaddress}{m} { \def \var@infoaddress {#1} }

\def \var@infophone {(919) 839-1252}
\NewDocumentCommand{\infophone}{m} { \def \var@infophone {#1} }

\def \var@infoemail {michael\_scott@example.com}
\NewDocumentCommand{\infoemail}{m} { \def \var@infoemail {#1} }

\def \var@infolinkedin {linkedin.com/in/michaelscott10}
\NewDocumentCommand{\infolinkedin}{m} { \def \var@infolinkedin {#1} }

\NewDocumentCommand{\makeheader}{} {
	\begin{center}
		{\huge \textbf{\var@infoperson}}

		\var@infoaddress\ \textbullet\
		\var@infophone\ \textbullet\
		\var@infoemail\ \textbullet\
		\var@infolinkedin
	\end{center}
	\vspace{5px}
}

\newenvironment{rSection}[1]{ % TODO: make argument mandatory
	\MakeUppercase{\textbf{#1}} \newline
	\vspace*{-11px}
	\hrule
	\vspace{2px}
} {
	\vspace{5px}
}

\newenvironment{rPlace}[4]{
	\textbf{#1} \hfill \textbf{#2} \newline
	\textit{#3} \hfill \textit{#4}{\parfillskip0pt\par} 
}{
	\vspace{5px}
}

\newenvironment{rItems}{
	\vspace*{-\parskip}
	% \begin{justify}
	\begin{itemize}[leftmargin=2ex]
	\itemsep0.5em
}{
	\end{itemize}
	% \end{justify}
}
