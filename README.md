# LaTeX Vorlage für wissenschaftliche Arbeiten

Diese Vorlage ist für wissenschaftliche Arbeiten (Bachelor-, Master-, Diplomarbeiten) konzipiert. Zur Anwendung muss vorher LaTeX auf dem PC installiert werden und die Extension LaTeX Workshop installiert werden. 

## Wichtige LaTeX-Befehle und ihre Verwendung

### Textformatierung und Typographie

```latex
% Schriftart temporär ändern
\changefont{cmss}{sbc}{n}  % Font-Familie, Serie, Form

% Neue Begriffe hervorheben
\NeuerBegriff{Cloud Computing}  % Fettdruck

% Fachbegriffe mit optionaler Erklärung
\Fachbegriff{Algorithmus}  % Kursiv
\Fachbegriff[Systematische Handlungsvorschrift]{Algorithmus}  % Mit Fußnote + Glossareintrag
```

### Abkürzungen mit korrektem Leerraum
```latex
\zB     % z. B. 
\ua     % u. a. 
\dahe   % d. h. 
\Vgl    % Vgl. 
\bzw    % bzw. 
\evtl   % evtl. 
```

### Zitationen und Quellenangaben
```latex
% Autor im Text nennen
\Autor{mustermann2023}  % → "MUSTERMANN"

% Standardzitat mit Seitenzahl
\ZitatSeite{mustermann2023}{42}  % → [Mustermann 2023, 42]

% Vergleichszitat
\VglZitatSeite{mustermann2023}{15}  % → [Vgl. Mustermann 2023, S. 15]

% BibTeX-Eintrag Beispiel
@book{mustermann2023,
    author    = {Mustermann, Max},
    title     = {Titel des Buchs},
    year      = {2023},
    publisher = {Verlag},
    address   = {Stadt}
}
```

### Abbildungen und Referenzen
```latex
% Abbildung einfügen
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{Bilder/beispiel.png}
    \caption{Beschreibung der Abbildung}
    \label{fig:beispiel}
\end{figure}

% Auf Abbildung verweisen
\Abbildung{beispiel}  % → "Abbildung 1"
```

### Code und technische Elemente
```latex
% Code-Elemente
\Code{for i in range(10)}  % Monospace-Schrift
\Eingabe{ls -l}           % Konsolenbefehle
\Datei{main.py}          % Dateinamen

% Technische Begriffe
\Datentyp{Integer}       % Sans-Serif
\XMLElement{body}        % XML-Elemente
\Webservice{REST-API}    % Webservice-Namen
```

### Währungen und Beträge
```latex
\Betrag[euro]{42}    % → 42 €
\Betrag[dollar]{99}  % → 99 $
\Betrag[pound]{50}   % → 50 £
```

### Tabellen
```latex
% Rechtsbündige Spalte mit definierter Breite
\begin{tabular}{w{5cm}}
    Rechtsbündig
\end{tabular}

% Linksbündige Spalte mit automatischer Breite
\begin{tabularx}{\textwidth}{y{1.0}}
    Linksbündig mit Umbruch
\end{tabularx}
```

## Zusätzliche nützliche Befehle (nicht in der Vorlage enthalten)

### Mathematische Formeln
```latex
% Inline-Mathematik
$x = y^2$

% Abgesetzte Formel mit Nummerierung
\begin{equation}
    E = mc^2
    \label{eq:einstein}
\end{equation}

% Mehrzeilige Formeln
\begin{align}
    y &= mx + b \\
    m &= \frac{\Delta y}{\Delta x}
\end{align}
```

### Listen und Aufzählungen
```latex
% Verschachtelte Liste
\begin{itemize}
    \item Hauptpunkt
    \begin{enumerate}
        \item Unterpunkt 1
        \item Unterpunkt 2
    \end{enumerate}
\end{itemize}

% Beschreibungsliste
\begin{description}
    \item[Begriff] Erklärung
    \item[Konzept] Definition
\end{description}
```

### Fußnoten und Querverweise
```latex
% Fußnote
Ein wichtiger Punkt\footnote{Weitere Details hier.}

% Querverweis auf Kapitel
Siehe Kapitel~\ref{sec:methodik}

% Seitenverweis
Siehe Seite~\pageref{sec:methodik}
```

### Textboxen und Hervorhebungen
```latex
% Wichtige Information
\begin{important}
    Kritische Information
\end{important}

% Randnotiz
\marginpar{Notiz am Rand}
```

## Kompilierung

Um die Arbeit mit allen Referenzen und dem Literaturverzeichnis zu erstellen, sind folgende Schritte nötig:

1. `pdflatex Main.tex`
2. `bibtex Main`
3. `pdflatex Main.tex`
4. `pdflatex Main.tex`

## Tipps

- Verwenden Sie `%` für Kommentare
- Nutzen Sie `~` für geschützte Leerzeichen (z.B. bei Referenzen)
- Setzen Sie Anführungszeichen mit \`\` und '' (öffnend/schließend)
- Verwenden Sie `\label` und `\ref` für Querverweise
- Nutzen Sie `\index{Stichwort}` für den Index
- Setzen Sie `\clearpage` für erzwungene Seitenumbrüche