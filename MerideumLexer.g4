lexer grammar MerideumLexer;
/* Tokens */
WS: [ \t\r\n]+ -> skip;

ASSIGN: '=';
BRACE_L: '{';
BRACE_R: '}';
BRACKET_L: '[';
BRACKET_R: ']';
COLON: ':';
COMMA: ',';
CONST: 'const';
CONTRACT: 'contract';
DOT: '.';
DOUBLE_QUOTE: '"' -> pushMode(IN_STRING);
MINUS: '-';
PAREN_L: '(';
PAREN_R: ')';
REQUEST: 'request';
RETURN: 'return';
USE: 'use';
VAR: 'var';

IDENTIFIER: [a-zA-Z] [a-zA-Z0-9]+;
INT: [1-9][0-9]*;
/**
 *   Example: com.merideum.Foo
 */
RESOURCE_NAME: [A-Z][a-z0-9]+;
TYPE: [a-zA-Z] | TYPE_LIST;
TYPE_LIST: BRACKET_L [a-zA-Z] BRACKET_R;
/**
 *   Example: com.merideum
 */
USE_PATH: [a-z] [a-z0-9]+ (DOT [a-z][a-z0-9]+)+;

mode IN_STRING;

TEXT: ~[\\$"]+;
S_EMBEDDED: '${' -> pushMode(EMBEDDED);
S_DOUBLE_QUOTE: '"' -> type(DOUBLE_QUOTE), popMode;

/**
 *  To avoid errorprone and complicated code, embedded expressions are intentially simple.
 *  The only embeddable expression is an identifier:
 *  const name = "Merideum"
 *  const a = "Hello ${name}"
 */
mode EMBEDDED;

E_IDENTIFIER: [a-z][a-zA-Z0-9]+ -> type(IDENTIFIER);
E_BRACE_R: '}' -> type(BRACE_R), popMode;