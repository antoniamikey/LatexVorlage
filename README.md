
# 📘 LaTeX-Vorlage für wissenschaftliche Arbeiten

Diese Vorlage richtet sich an Studierende, die wissenschaftliche Arbeiten wie Bachelor-, Master- oder Diplomarbeiten verfassen. Sie basiert auf LaTeX und nutzt Erweiterungen für saubere Struktur, Zitation und Typographie.

> 💡 **Voraussetzung:** Installiertes LaTeX-System (z. B. TeX Live oder MikTeX) und ein Editor mit der Extension **LaTeX Workshop** (z. B. Visual Studio Code).

---

## 📑 Gliederungsebenen

```latex
\chapter{Kapitel}           % 1. Ebene
\section{Abschnitt}         % 2. Ebene
\subsection{Unterabschnitt} % 3. Ebene
\subsubsection{Titel}       % 4. Ebene
\paragraph{Absatz}          % 5. Ebene (ohne Nummer)
\subparagraph{Unterabsatz}  % 6. Ebene (ohne Nummer)
```

---

## 🔗 Labels & Referenzen

```latex
% Kapitel-Label
\chapter{Einleitung}
\label{chap:einleitung}

% Abschnitts-Label
\section{Methodik}
\label{sec:methodik}

% Empfohlene Präfixe:
% chap:, sec:, fig:, tab:, eq:, lst:

% Referenzen:
Siehe Kapitel~\ref{chap:einleitung}
In Abschnitt~\ref{sec:methodik}
Wie in Abbildung~\ref{fig:diagramm}
Gemäß Tabelle~\ref{tab:ergebnisse}
Laut Gleichung~\ref{eq:formel}
Siehe Seite~\pageref{sec:methodik}

% Mehrere Referenzen:
In den Kapiteln~\ref{chap:einleitung} und~\ref{chap:methodik}

% Tipp: Nutze ~ vor \ref/\pageref für geschützte Leerzeichen
```

---

## 🛠 Wichtige LaTeX-Befehle

### ✍️ Textformatierung

```latex
\changefont{cmss}{sbc}{n}    % Schrift ändern
\NeuerBegriff{Cloud Computing}        % Fett
\Fachbegriff{Algorithmus}             % Kursiv
\Fachbegriff[Erklärung]{Algorithmus}  % Mit Glossar
```

### 🔤 Abkürzungen

```latex
\zB     % z. B.
\ua     % u. a.
\dahe   % d. h.
\Vgl    % Vgl.
\bzw    % bzw.
\evtl   % evtl.
```

---

## 📚 Zitation und Literatur

```latex
% Zitate im Text
\Autor{mustermann2023}
\Zitat{mustermann2023}{42}
\VglZitat{mustermann2023}{15}

% Beispiel BibTeX-Eintrag
@book{mustermann2023,
  author    = {Mustermann, Max},
  title     = {Titel des Buchs},
  year      = {2023},
  publisher = {Verlag},
  address   = {Stadt}
}
```

---

## 🖼 Abbildungen

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{Bilder/beispiel.png}
  \caption{Beschreibung der Abbildung}
  \label{fig:beispiel}
\end{figure}

% Referenz:
\Abbildung{beispiel}
```

---

## 💻 Code & Technik

```latex
\Code{for i in range(10)}
\Eingabe{ls -l}
\Datei{main.py}
\Datentyp{Integer}
\XMLElement{body}
\Webservice{REST-API}
```

---

## 💶 Währungen

```latex
\Betrag[euro]{42}     % → 42 €
\Betrag[dollar]{99}   % → 99 $
\Betrag[pound]{50}    % → 50 £
```

---

## 📊 Tabellen

```latex
\begin{tabular}{w{5cm}} Rechtsbündig \end{tabular}

\begin{tabularx}{\textwidth}{y{1.0}} Linksbündig mit Umbruch \end{tabularx}
```

---

## ➗ Mathematische Formeln

```latex
% Inline
$x = y^2$

% Mit Nummer
\begin{equation}
  E = mc^2
  \label{eq:einstein}
\end{equation}

% Mehrzeilig
\begin{align}
  y &= mx + b \\
  m &= \frac{\Delta y}{\Delta x}
\end{align}
```

---

## 📌 Listen & Fußnoten

```latex
\begin{itemize}
  \item Punkt
  \begin{enumerate}
    \item Unterpunkt
  \end{enumerate}
\end{itemize}

\begin{description}
  \item[Begriff] Erklärung
\end{description}

Text\footnote{Fußnote.}
```

---

## 🧱 Hervorhebungen

```latex
\begin{important}
  Kritische Information
\end{important}

\marginpar{Notiz am Rand}
```

---

## ⚙️ Kompilierung

Um ein vollständiges PDF mit Literaturverzeichnis zu erzeugen:

```bash
pdflatex Main.tex
bibtex Main
pdflatex Main.tex
pdflatex Main.tex
```

---

## 🧠 Tipps

- `%` für Kommentare verwenden
- `~` für geschützte Leerzeichen (z. B. bei Referenzen)
- Anführungen: ``Text'' für deutschsprachige Zitate
- `\label` und `\ref` konsequent nutzen
- `\clearpage` für Seitenumbruch
- `\index{Begriff}` für Indexeintrag

---

**Viel Erfolg bei deiner Arbeit!** 🎓  
Für Fragen oder Erweiterungen – gerne Issues oder Pull Requests öffnen.
