
# 📘 LaTeX-Vorlage für wissenschaftliche Arbeiten

Diese Vorlage richtet sich an Studierende, die wissenschaftliche Arbeiten wie Bachelor-, Master- oder Diplomarbeiten verfassen. Sie basiert auf LaTeX und nutzt Erweiterungen für saubere Struktur, Zitation und Typographie.

> 💡 **Voraussetzung:** Installiertes LaTeX-System (z. B. TeX Live oder MikTeX) und ein Editor mit der Extension **LaTeX Workshop** (z. B. Visual Studio Code).

## Vorabeinstellungen
Bei dem Build Prozess der PDF entstehen viele Dateien, die im Anschluss nicht mehr benötigt werden. Um diese danach wieder loszuwerden, kann folgendes in die settings.json eingefügt werden: 
```json
{
    "java.configuration.runtimes": [
  {
    "name": "JavaSE-23",
    "path": "/opt/homebrew/Cellar/openjdk/23.0.1/libexec/openjdk.jdk/Contents/Home",
    "default": true
  },
],
    "workbench.colorTheme": "Quiet Light",
    "jdk.jdkhome": "/Users/antonia/Library/Java/JavaVirtualMachines/openjdk-23.0.1/Contents/Home",
    "redhat.telemetry.enabled": false, 
    "latex-workshop.formatting.latexindent.path": "/Library/TeX/texbin/latexindent",
    "latex-workshop.kpsewhich.path": "/Library/TeX/texbin/kpsewhich",
    "latex-workshop.synctex.path": "/Library/TeX/texbin/synctex",
    "latex-workshop.linting.chktex.exec.path": "/Library/TeX/texbin/chktex",
    "editor.wordWrapColumn": 1,
    "editor.wordWrap": "on",
    "diffEditor.ignoreTrimWhitespace": false,
    "explorer.confirmDelete": false,
    "latex-workshop.latex.autoClean.run": "onBuilt",
    "latex-workshop.latex.clean.method": "glob",
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
    "*.bbl",
    "*.blg",
    "*.idx",
    "*.ind",
    "*.lof",
    "*.lot",
    "*.out",
    "*.toc",
    "*.acn",
    "*.acr",
    "*.alg",
    "*.glg",
    "*.glo",
    "*.gls",
    "*.glsdefs",
    "*.fls",
    "*.log",
    "*.fdb_latexmk",
    "*.snm",
    "*.synctex(busy)",
    "*.synctex.gz(busy)",
    "*.nav",
    "*.vrb",
    "*.xdv",
    "*.nls",
    "*.ilg",
    "*.ist",
    "*.bcf",
    "*.run.xml",
    "*.lol",
    "*.synctex.gz(busy)",
    "*.synctex.gz"
    ],
    "files.exclude": {
        "**/*.aux": true,
        "**/*.log": true,
        "**/*.toc": true,
        "**/*.out": true,
        "**/*.bbl": true,
        "**/*.blg": true,
        "**/*.synctex.gz": true,
        "**/*.fdb_latexmk": true,
        "**/*.fls": true,
        "**/*.nav": true,
        "**/*.snm": true,
        "**/*.vrb": true
    },
    "latex-workshop.latex.autoBuild.run": "onSave",
    "docker.extension.enableComposeLanguageServer": false,
    
    "github.copilot.enable": {
        "*": false,
        "plaintext": false,
        "markdown": false,
        "scminput": false,
        "latex": false,
        "text": false
    },
    
    "github.copilot.inlineSuggest.enable": false,
    "github.copilot.suggestionActions.enabled": true,
    "github.copilot.experimentalFeatures.enabled": true,
    "github.copilot.advancedInlineSuggestions.enabled": true,

    "latex-workshop.latex.recipes": [    
        {
            "name": "pdflatex 📄 ➞ biber 🐿️ ➞ pdflatex × 2 📄📄",
            "tools": [
                "pdflatex",
                "biber",
                "pdflatex",
                "pdflatex"
            ]
        },
        {
            "name": "Compile Rnw files",
            "tools": [
                "rnw2tex",
                "latexmk"
            ]
        },
        {
            "name": "Compile Jnw files",
            "tools": [
                "jnw2tex",
                "latexmk"
            ]
        }
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "biber",
            "command": "biber",
            "args": [
                "--output-directory=%OUTDIR%",
                "%DOCFILE%"
            ],
            "env": {}
        },
        {
            "name": "lualatexmk",
            "command": "latexmk",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-lualatex",
                "-outdir=%OUTDIR%",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "latexmk_rconly",
            "command": "latexmk",
            "args": [
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-output-directory=%OUTDIR%",
                "%DOC%"
            ],
            "env": {}
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ],
            "env": {}
        },
        {
            "name": "rnw2tex",
            "command": "Rscript",
            "args": [
                "-e",
                "knitr::opts_knit$set(concordance = TRUE); knitr::knit('%DOCFILE_EXT%')"
            ],
            "env": {}
        },
        {
            "name": "jnw2tex",
            "command": "julia",
            "args": [
                "-e",
                "using Weave; weave(\"%DOC_EXT%\", doctype=\"tex\")"
            ],
            "env": {}
        },
        {
            "name": "jnw2texmintex",
            "command": "julia",
            "args": [
                "-e",
                "using Weave; weave(\"%DOC_EXT%\", doctype=\"texminted\")"
            ],
            "env": {}
        },
        {
            "name": "tectonic",
            "command": "tectonic",
            "args": [
                "--synctex",
                "--keep-logs",
                "%DOC%.tex"
            ],
            "env": {}
        }
    ]

}
```

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
\textbf{Cloud Computing}        % Fett
\textit{Algorithmus}             % Kursiv
\underline[Erklärung]{Algorithmus}  % Mit Glossar
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

Die Zitation erfolgt in LaTeX mithilfe von Bibtex Dateien. Mithilfe von Better Bibtex kann der Prozess noch vereinfacht werden. Die Verwendung im Text erfolgt durch die folgenden Befehle. Diese Befehle dienen der Inline Zitation. In der ersten Klammer wird der Bibtexkey genutzt, um das Buch zu referenzieren. In der zweiten Klammer die Seitenzahl. 
!!! Wichtig, in dieser Vorlage wird biber von biblatex genutzt, es muss also auch mit dem entsprechenden bibeer Build Recipe gebaut werden !!!

```latex
% Zitate im Text
\Autor{mustermann2023}
\Zitat{mustermann2023}{42} % direktes Zitat
\VglZitat{mustermann2023}{15} % indirektes Zitat
\NarrativZitat{mustermann2023}{13} % Narratives Zitat

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
- `glqq`für " und `grqq`für „

---

**Viel Erfolg bei deiner Arbeit!** 🎓  
Für Fragen oder Erweiterungen – gerne Issues oder Pull Requests öffnen.
