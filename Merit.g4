grammar Merit;

parse: block EOF;

block: (importResource)* WS* (statement)*;

importResource: IMPORT WS* IDENTIFIER WS* COLON WS* (resourcePathIdentifier)? (RESOURCE_NAME);

statement
    : standaloneFunctionCall
    | variableAssignment
    | outputAssignment
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
    : expression functionCall # functionCallExpression
    | INTEGER # integerExpression
    | simpleIdentifier # simpleIdentifierExpression
    ;

// A function call not used in an expression.
standaloneFunctionCall
    : expression functionCall
    ;

functionCall
    : DOT simpleIdentifier PAREN_L functionParameters? PAREN_R
    ;

functionParameters
    : expression (COMMA WS* expression)*?
    ;

variableModifier
    : CONST | VAR
    ;

resourcePathIdentifier
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

RESOURCE_NAME: (CAPITAL_LETTER) (LETTER | '_' | DIGIT)*;

IDENTIFIER: (LETTER | '_') (LETTER | '_' | DIGIT)*;

COLON: ':';

COMMA: ',';

PAREN_L: '(';

PAREN_R: ')';

CAPITAL_LETTER: [A-Z];

LETTER: [a-zA-Z];

INTEGER: [1-9] DIGIT* | '0';

fragment DIGIT: [0-9];

WS: [ \t\r\n]+ -> skip;
