# Semesterarbeit FAC - TC
## Teil 1: Sprachentwurf

* Spezifizieren Sie Ihre Sprache durch eine kontextfreie Grammatik.
* Spezifizieren Sie ferner die Wörter (Tokens) der Sprache durch reguläre Grammatiken oder durch reguläre Ausdrücke.
* Die Sprache sollte mindestens folgende Elemente enthalten:
    * Arithmetische Ausdrücke,
    * Variable,
    * Bedingte Anweisungen.
    * Schleifen,
    * Aufruf von Funktionen,
    * Definition von eigenen Funktionen.
* Die Spezifikation soll als pdf abgegeben werden
* Umfang 2-4 Seiten

Definition kontextfreie Grammatik: In der Theorie der formalen Sprachen ist eine kontextfreie Grammatik eine formale Grammatik, die nur solche Ersetzungsregeln enthält, bei denen immer genau ein Nichtterminalsymbol auf eine beliebig lange Folge von Nichtterminal- und Terminalsymbolen abgeleitet wird.
G = (V,T,S,P)
V = Endliches Vokabular V
T = Terminalsymbole mit der zugehörigen Differenzmenge von Nichtterminalsymbol
T c V
N := V \ T
S = Startsymbol
P = Produktionsregeln

S = < start > = < statements >
< statements > = < statement > || < statement > < statements >

< statement > = < def > || < math > || < cond > < statement > < statement > || < for > || < fun > < chars > || 

< def > = < chars > < nums >

< math > =
< add > < num > < num > ||
< sub > < num > < num > ||
< mul > < num > < num > ||
< mod > < num > < num >

< cond > = 
< eq > ||
< neq >


< fun >

### Token-Definition 

< nums > = < num > || < num > < nums >
< num > = 0 || 1 || 2 || 3 || 4 || 5 || 6 || 7 || 8 || 9

< chars > = < char > || < char > < chars >
< char > = a || b || c || d || e || f || g || h || i || j || k || l || m || n || o || p || q || r || s || t || u || v || w || x || y || z