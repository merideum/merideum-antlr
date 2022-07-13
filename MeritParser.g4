parser grammar MeritParser;

options {
    tokenVocab = 'MeritLexer';
}

parse: scriptDefinition EOF;

scriptDefinition: scriptType WS* simpleIdentifier WS* scriptParameterBlock? CURLY_L WS* block WS* CURLY_R;

scriptType: REQUEST | CONTRACT;

scriptParameterBlock
    : PAREN_L WS* scriptParameters? WS* PAREN_R
    ;

scriptParameters
    : simpleIdentifier WS* typeDeclaration WS* (COMMA WS* simpleIdentifier WS* typeDeclaration)*?
    ;

block: (importResource)* WS* (statement)*;

importResource: IMPORT WS* IDENTIFIER WS* COLON WS* (resourcePathIdentifier)? (RESOURCE_NAME);

statement
    : expression
    | variableDeclaration
    | variableDeclarationAssignment
    | variableReassignment
    | outputAssignment
    ;

outputAssignment
    : OUTPUT WS* simpleIdentifier WS* assignment?
    ;

variableDeclaration
    : VAR WS* simpleIdentifier WS* typeDeclaration
    ;

variableDeclarationAssignment
    : variableModifier WS* simpleIdentifier WS* typeDeclaration? WS* assignment
    ;

variableReassignment
    : simpleIdentifier WS* assignment
    ;

assignment
    : (ASSIGN WS* expression)
    ;

expression
    : expression functionCall                   # functionCallExpression
    | simpleIdentifier                          # simpleIdentifierExpression
    | MINUS? INTEGER                            # integerExpression
    | QUOTE_DOUBLE stringContent* QUOTE_DOUBLE  # stringExpression
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

typeDeclaration
    : COLON WS* type=(TYPE_INT | TYPE_STRING);

stringContent
    : DOLLAR_CURLY_L expression CURLY_R # embeddedExpression
    | TEXT # text
    | ESCAPE_SEQUENCE # escapeSequence
    ;
