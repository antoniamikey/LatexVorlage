# LatexVorlage
Wichtige LaTeX-Befehle im Schreibprozess
Strukturierung
\chapter{Titel} – Kapitelüberschrift (nur in Büchern/Berichten)
\section{Titel} – Abschnitt
\subsection{Titel} – Unterabschnitt
\subsubsection{Titel} – Unter-Unterabschnitt
\label{marker} – Setzt eine Marke für Querverweise
\ref{marker} – Verweist auf eine Marke (z.B. Kapitel, Abbildung)
\pageref{marker} – Gibt die Seitenzahl einer Marke aus
Textgestaltung
\textbf{fett} – Fett
\textit{kursiv} – Kursiv
\underline{unterstrichen} – Unterstrichen
\emph{betont} – Betont (meist kursiv)
\footnote{Text} – Fußnote
Listen
\begin{itemize} ... \end{itemize} – Aufzählung (Punkte)
\begin{enumerate} ... \end{enumerate} – Nummerierte Liste
Abbildungen und Tabellen
\begin{figure} ... \end{figure} – Abbildung
\includegraphics[width=...]{datei} – Bild einfügen
\caption{Text} – Bildunterschrift
\begin{table} ... \end{table} – Tabelle
Mathematik
$...$ – Inline-Mathematik
\[ ... \] – Abgesetzte Mathematik
Querverweise
\autoref{marker} – Automatischer Verweistyp (z.B. „Abbildung 1“)
\nameref{marker} – Gibt den Namen des Labels aus
Spezielle Befehle aus deinem Projekt
\Fachbegriff[Erklärung]{Begriff} – Fachbegriff mit Erklärung (siehe Befehle.tex)
\FachbegriffSpezialA{Label}{Langform}{Erklärung}{Kurzform} – Spezial-Fachbegriff
\gls{abkürzung} – Abkürzung aus dem Glossar
\Zitat{quelle} – Literaturverweis (siehe Befehle.tex)
\Code{code} – Quelltext inline
Literaturverweise (BibTeX/Natbib)
\cite{key} – Zitat im Text (numerisch oder Autor-Jahr, je nach Stil)
\citep{key} – Zitat in Klammern (z.B. [Autor, Jahr])
\citet{key} – Zitat als Teil des Satzes (z.B. Autor (Jahr))
\Zitat{key} – Dein Makro für Zitate (siehe Befehle.tex)