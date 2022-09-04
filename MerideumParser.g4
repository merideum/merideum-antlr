parser grammar MerideumParser;

options {
    tokenVocab = 'Lexer';
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

block: (importResource)* WS* (statement WS*)*;

importResource: IMPORT WS* IDENTIFIER WS* COLON WS* (resourcePathIdentifier)? (RESOURCE_NAME);

statement
    : expression
    | variableDeclaration
    | variableDeclarationAssignment
    | variableReassignment
    | objectFieldAssignment
    | elementIndexAssignment
    | returnStatement
    ;

returnStatement
    : RETURN WS* expression
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

objectFieldAssignment
    : variableName=simpleIdentifier WS* DOT fieldName=simpleIdentifier WS* typeDeclaration? WS* assignment
    ;

elementIndexAssignment
    : simpleIdentifier WS* elementIndex WS* assignment
    ;

assignment
    : ASSIGN WS* expression WS*
    ;

expression
    // Ex: person.name
    : expression WS* DOT simpleIdentifier                   # objectFieldReferenceExpression
    // Ex: "asdf".length()
    | expression functionCall                               # functionCallExpression
    // Ex: person
    | simpleIdentifier                                      # simpleIdentifierExpression
    // Ex: { name: string = "Foo" }
    | SC_CURLY_L WS* objectFields? WS* CURLY_R              # objectExpression
    | BRACKET_L WS* listElementAssignments? WS* BRACKET_R   # listExpression
    // Ex: 1337
    | MINUS? INTEGER                                        # integerExpression
    // Ex: "Hello World!"
    | QUOTE_DOUBLE stringContent* QUOTE_DOUBLE              # stringExpression
    // Index for a list element or an object field
    | simpleIdentifier WS* elementIndex WS*                 # elementIndexExpression
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
    : COLON WS* type
    ;

type
    : basicType
    | listType
    ;

listType
    : BRACKET_L WS* innerType WS* BRACKET_R
    ;

innerType
    : basicType
    | listType
    ;

basicType
    : TYPE_INT | TYPE_STRING | TYPE_OBJECT
    ;

objectFields
    : objectField WS* (COMMA WS* objectField WS*)*?
    ;

objectField
    : simpleIdentifier WS* typeDeclaration? WS* assignment
    ;

listElementAssignments
    : listElementAssignment WS* (COMMA WS* listElementAssignment WS*)*?
    ;

listElementAssignment
    : expression
    ;

elementIndex
    : BRACKET_L WS* expression WS* BRACKET_R
    ;

stringContent
    : DOLLAR_CURLY_L expression CURLY_R # embeddedExpression
    | TEXT # text
    | ESCAPE_SEQUENCE # escapeSequence
    ;
