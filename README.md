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

```html
<statement-list> ::= <statement> | <statement> <statement-list>

<statement> ::= <assignment> | <if-statement> | <while-statement> | <function-declaration> | <run-function>

<assignment> ::= <variableid> = <expression>

<if-statement> ::= ‘if’ ‘(’ <testing-expression> ‘)’ <statement> ‘else’ <statement>

<while-statement> ::= ‘while’ ‘(’ <testing-expression> ‘)’ <statement>

<function-declaration> ::= ‘fun’ <variableid> <fun-params> ‘(’ <statement-list> ‘)’

<fun-params> ::= <variableid> | <variableid> ‘,’ <fun-params>

<run-function> ::= ‘run’ <variableid> ‘(’ ’ | <fun-params>)’

<testing-expression> ::= ‘(’<expression>’)’ ‘(’<conditionaloperator>’)’ ‘(’<expression>’)’

<expression> ::= <expression> ‘+’ <term> | <expression> ‘-’ <term> | <term>

<term> ::= <term> ‘*’ <factor> | <term> ‘/’ <factor> | <factor>

<factor> ::= <primary> ‘^’ <factor> | <primary>

<primary> ::= <primary> | <element>

<element> ::= ‘(’ <expression> ‘)’ | <variableid> | <number>

<variableid> ::= <letter> <letter> | <letter> <digit> | <letter> <variableid> | <variableid> <letter> | <variableid> <digit>

<number> ::= <number> | <number> <digit>
<digit> ::= {0,1,2,3,4,5,6,7,8,9}
<letter> ::= {a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}
<operator> ::= {+,-,/,*,=}
<conditionaloperator> ::= {==,!=,>,<,&&,<=,>=,||}
<tokens> := {if,else,while,fun}
```