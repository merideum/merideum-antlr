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
    : assignment;

assignment
    : IDENTIFIER ASSIGN expression
    ;

expression
    : INTEGER #integerExpression
    ;

ASSIGN
    : '='
    ;

IDENTIFIER
    : [a-zA-Z_] [a-zA-Z0-9]*
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
