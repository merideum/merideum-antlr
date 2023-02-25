grammar Merideum;

options {
    tokenVocab = 'MerideumLexer';
}

request: script EOF;

/**
 *   A request to the server to evaluate some logic.
 */
script: scriptDefinition BRACE_L WS* useStatement* WS* statement* WS* BRACE_R EOF;

scriptDefinition: requestDefinition | contractDefinition;

requestDefinition: REQUEST IDENTIFIER;

contractDefinition: CONTRACT IDENTIFIER contractParameters?;

contractParameters: PAREN_L WS* parameterDeclaration (COMMA parameterDeclaration)* WS* PAREN_R;

parameterDeclaration: IDENTIFIER COLON TYPE;

/* Statements */

statement: variableDeclarationAssignment
         | variableAssignment
         | objectFieldAssignment
         | returnStatement
         | expression
         ;

returnStatement: RETURN expression;

/**
 *  Example:
 *  use foo: com.merideum.Foo
 */
useStatement: USE IDENTIFIER COLON USE_PATH DOT RESOURCE_NAME;

variableDeclarationAssignment: modifier IDENTIFIER typeDeclaration? ASSIGN expression;

variableAssignment: IDENTIFIER ASSIGN expression;

objectFieldAssignment: expression DOT IDENTIFIER objectFieldValueAssignment;

/* Expressions */

expression: expression functionCall                   #function
          | expression DOT IDENTIFIER                 #objectFieldCall
          | objectDeclaration                         #object
          | listDeclaration                           #list
          | INT                                       #int
          | IDENTIFIER                                #identifier
          | DOUBLE_QUOTE stringContents* DOUBLE_QUOTE #string
          ;

stringContents: S_EMBEDDED IDENTIFIER BRACE_R #embeddedIdentifier
              | TEXT #text
              ;

modifier: CONST
        | VAR
        ;

typeDeclaration: COLON TYPE;

/* Function */

functionCall: DOT IDENTIFIER PAREN_L functionParameters? PAREN_R;

functionParameters: functionParameter (COMMA functionParameter)*;

functionParameter: functionVariableParameter
                 | functionNamedParameter
                 ;

functionVariableParameter: IDENTIFIER;

functionNamedParameter: IDENTIFIER ASSIGN expression;

/* Object */

objectDeclaration: BRACE_L objectFields? BRACE_R;

objectFields: objectField (COMMA objectField)*;

objectField: IDENTIFIER
           | objectFieldValueAssignment
           ;

objectFieldValueAssignment: typeDeclaration? ASSIGN expression;

/* List */
listDeclaration: BRACKET_L listElements? BRACKET_R;

listElements: listElement (COMMA listElement)*;

listElement: expression;
