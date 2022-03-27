grammar Meriad;

@header {
package org.merideum.meriad;
}

parse
    : block EOF
    ;

block
    : ( statement)*
    ;

statement
    : variableAssignment
    ;

variableAssignment
    : variableModifier? WS* IDENTIFIER WS* assignment?
    ;

assignment
    : (ASSIGN WS* expression)
    ;

expression
    : INTEGER #integerExpression
    ;

variableModifier
    : CONST
    | VAR
    ;

ASSIGN
    : '='
    ;

CONST
    : 'const'
    ;

VAR
    : 'var'
    ;

IDENTIFIER
    : (LETTER | '_') (LETTER | '_' | DIGIT)*
    ;

LETTER
    : [a-zA-Z]
    ;

INTEGER
    : [1-9] DIGIT*
    | '0'
    ;

fragment DIGIT
    : [0-9]
    ;

WS
    :   [ \t\r\n]+ -> skip
    ;
