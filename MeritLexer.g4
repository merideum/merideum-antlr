lexer grammar MeritLexer;

WS: [ \t\r\n]+ -> skip;

REQUEST: 'request';

CONTRACT: 'contract';

TYPE_INT: 'int';

TYPE_STRING: 'string';

TYPE_OBJECT: 'object';

IDENTIFIER: (LETTER | '_') (LETTER | '_' | DIGIT)*;

COLON: ':';

COMMA: ',';

PAREN_L: '(';

PAREN_R: ')';

CURLY_L: '{' -> pushMode(SCRIPT);

mode SCRIPT;

SC_WS: [ \t\r\n]+ -> skip;

IMPORT: 'import';

ASSIGN: '=';

MINUS: '-';

DOT: '.';

RETURN: 'return';

CONST: 'const';

VAR: 'var';

SC_TYPE_INT: 'int' -> type(TYPE_INT);

SC_TYPE_STRING: 'string' -> type(TYPE_STRING);

SC_TYPE_OBJECT: 'object' -> type(TYPE_OBJECT);

RESOURCE_NAME: (CAPITAL_LETTER) (LETTER | '_' | DIGIT)*;

SC_IDENTIFIER: (LETTER | '_') (LETTER | '_' | DIGIT)* -> type(IDENTIFIER);

SC_COLON: ':' -> type(COLON);

SC_COMMA: ',' -> type(COMMA);

SC_PAREN_L: '(' -> type(PAREN_L);

SC_PAREN_R: ')' -> type(PAREN_R);

SC_CURLY_L: '{' -> pushMode(SCRIPT);

CURLY_R: '}' -> popMode, type(CURLY_R);

CAPITAL_LETTER: [A-Z];

LETTER: [a-zA-Z];

INTEGER: [1-9] DIGIT* | '0';

QUOTE_DOUBLE: '"' -> pushMode(IN_STRING);

fragment DIGIT: [0-9];

mode IN_STRING;

DOLLAR_CURLY_L: '${' -> pushMode(INTERPOLATED);

ESCAPE_SEQUENCE: '\\' . ;

TEXT: ~[\\$"]+ ;

QUOTE_DOUBLE_IN_STRING: '"' -> type(QUOTE_DOUBLE), popMode;

mode INTERPOLATED;

E_DOT: '.' -> type(DOT);

E_RESOURCE_NAME: (CAPITAL_LETTER) (LETTER | '_' | DIGIT)* -> type(RESOURCE_NAME);

E_IDENTIFIER: (LETTER | '_') (LETTER | '_' | DIGIT)* -> type(IDENTIFIER);

E_MINUS: '-' -> type(MINUS);

E_COLON: ':' -> type(COLON);

E_COMMA: ',' -> type(COMMA);

E_PAREN_L: '(' -> type(PAREN_L);

E_PAREN_R: ')' -> type(PAREN_R);

E_CURLY_R: '}' -> type(CURLY_R), popMode;

E_CAPITAL_LETTER: [A-Z] -> type(CAPITAL_LETTER);

E_LETTER: [a-zA-Z] -> type(LETTER);

E_INTEGER: ([1-9] DIGIT* | '0') -> type(INTEGER);

E_QUOTE_DOUBLE: '"' -> type(QUOTE_DOUBLE), pushMode(IN_STRING);
