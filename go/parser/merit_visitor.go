// Code generated from Merit.g4 by ANTLR 4.10.1. DO NOT EDIT.

package parser // Merit
import "github.com/antlr/antlr4/runtime/Go/antlr"

// A complete Visitor for a parse tree produced by MeritParser.
type MeritVisitor interface {
	antlr.ParseTreeVisitor

	// Visit a parse tree produced by MeritParser#parse.
	VisitParse(ctx *ParseContext) interface{}

	// Visit a parse tree produced by MeritParser#block.
	VisitBlock(ctx *BlockContext) interface{}

	// Visit a parse tree produced by MeritParser#statement.
	VisitStatement(ctx *StatementContext) interface{}

	// Visit a parse tree produced by MeritParser#outputAssignment.
	VisitOutputAssignment(ctx *OutputAssignmentContext) interface{}

	// Visit a parse tree produced by MeritParser#variableAssignment.
	VisitVariableAssignment(ctx *VariableAssignmentContext) interface{}

	// Visit a parse tree produced by MeritParser#assignment.
	VisitAssignment(ctx *AssignmentContext) interface{}

	// Visit a parse tree produced by MeritParser#integerExpression.
	VisitIntegerExpression(ctx *IntegerExpressionContext) interface{}

	// Visit a parse tree produced by MeritParser#variableModifier.
	VisitVariableModifier(ctx *VariableModifierContext) interface{}
}
