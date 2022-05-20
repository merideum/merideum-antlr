grammar Merit;

parse: block EOF;

block: (importDependency)* WS* (statement)*;

importDependency: IMPORT WS* IDENTIFIER WS* COLON WS* (dependencyPathIdentifier)? (DEPENDENCY_NAME);

statement
    : variableAssignment | outputAssignment
    ;

outputAssignment
    : OUTPUT WS* simpleIdentifier WS* assignment?
    ;

variableAssignment
    : variableModifier? WS* simpleIdentifier WS* assignment?
    ;

assignment
    : (ASSIGN WS* expression)
    ;

expression
    : INTEGER # integerExpression
    ;

variableModifier
    : CONST | VAR
    ;

dependencyPathIdentifier
    : simpleIdentifier (WS* DOT simpleIdentifier)* DOT
    ;

simpleIdentifier
    : IDENTIFIER
    ;

IMPORT: 'import';

ASSIGN: '=';

DOT: '.';

OUTPUT: 'output';

CONST: 'const';

VAR: 'var';

DEPENDENCY_NAME: (CAPITAL_LETTER) (LETTER | '_' | DIGIT)*;

IDENTIFIER: (LETTER | '_') (LETTER | '_' | DIGIT)*;

COLON: ':';

CAPITAL_LETTER: [A-Z];

LETTER: [a-zA-Z];

INTEGER: [1-9] DIGIT* | '0';

fragment DIGIT: [0-9];

WS: [ \t\r\n]+ -> skip;
