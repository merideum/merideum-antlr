// Code generated from Merit.g4 by ANTLR 4.10.1. DO NOT EDIT.

package parser // Merit
import "github.com/antlr/antlr4/runtime/Go/antlr"

// MeritListener is a complete listener for a parse tree produced by MeritParser.
type MeritListener interface {
	antlr.ParseTreeListener

	// EnterParse is called when entering the parse production.
	EnterParse(c *ParseContext)

	// EnterBlock is called when entering the block production.
	EnterBlock(c *BlockContext)

	// EnterStatement is called when entering the statement production.
	EnterStatement(c *StatementContext)

	// EnterOutputAssignment is called when entering the outputAssignment production.
	EnterOutputAssignment(c *OutputAssignmentContext)

	// EnterVariableAssignment is called when entering the variableAssignment production.
	EnterVariableAssignment(c *VariableAssignmentContext)

	// EnterAssignment is called when entering the assignment production.
	EnterAssignment(c *AssignmentContext)

	// EnterIntegerExpression is called when entering the integerExpression production.
	EnterIntegerExpression(c *IntegerExpressionContext)

	// EnterVariableModifier is called when entering the variableModifier production.
	EnterVariableModifier(c *VariableModifierContext)

	// ExitParse is called when exiting the parse production.
	ExitParse(c *ParseContext)

	// ExitBlock is called when exiting the block production.
	ExitBlock(c *BlockContext)

	// ExitStatement is called when exiting the statement production.
	ExitStatement(c *StatementContext)

	// ExitOutputAssignment is called when exiting the outputAssignment production.
	ExitOutputAssignment(c *OutputAssignmentContext)

	// ExitVariableAssignment is called when exiting the variableAssignment production.
	ExitVariableAssignment(c *VariableAssignmentContext)

	// ExitAssignment is called when exiting the assignment production.
	ExitAssignment(c *AssignmentContext)

	// ExitIntegerExpression is called when exiting the integerExpression production.
	ExitIntegerExpression(c *IntegerExpressionContext)

	// ExitVariableModifier is called when exiting the variableModifier production.
	ExitVariableModifier(c *VariableModifierContext)
}
