// Code generated from Merit.g4 by ANTLR 4.10.1. DO NOT EDIT.

package parser // Merit
import "github.com/antlr/antlr4/runtime/Go/antlr"

// BaseMeritListener is a complete listener for a parse tree produced by MeritParser.
type BaseMeritListener struct{}

var _ MeritListener = &BaseMeritListener{}

// VisitTerminal is called when a terminal node is visited.
func (s *BaseMeritListener) VisitTerminal(node antlr.TerminalNode) {}

// VisitErrorNode is called when an error node is visited.
func (s *BaseMeritListener) VisitErrorNode(node antlr.ErrorNode) {}

// EnterEveryRule is called when any rule is entered.
func (s *BaseMeritListener) EnterEveryRule(ctx antlr.ParserRuleContext) {}

// ExitEveryRule is called when any rule is exited.
func (s *BaseMeritListener) ExitEveryRule(ctx antlr.ParserRuleContext) {}

// EnterParse is called when production parse is entered.
func (s *BaseMeritListener) EnterParse(ctx *ParseContext) {}

// ExitParse is called when production parse is exited.
func (s *BaseMeritListener) ExitParse(ctx *ParseContext) {}

// EnterBlock is called when production block is entered.
func (s *BaseMeritListener) EnterBlock(ctx *BlockContext) {}

// ExitBlock is called when production block is exited.
func (s *BaseMeritListener) ExitBlock(ctx *BlockContext) {}

// EnterStatement is called when production statement is entered.
func (s *BaseMeritListener) EnterStatement(ctx *StatementContext) {}

// ExitStatement is called when production statement is exited.
func (s *BaseMeritListener) ExitStatement(ctx *StatementContext) {}

// EnterOutputAssignment is called when production outputAssignment is entered.
func (s *BaseMeritListener) EnterOutputAssignment(ctx *OutputAssignmentContext) {}

// ExitOutputAssignment is called when production outputAssignment is exited.
func (s *BaseMeritListener) ExitOutputAssignment(ctx *OutputAssignmentContext) {}

// EnterVariableAssignment is called when production variableAssignment is entered.
func (s *BaseMeritListener) EnterVariableAssignment(ctx *VariableAssignmentContext) {}

// ExitVariableAssignment is called when production variableAssignment is exited.
func (s *BaseMeritListener) ExitVariableAssignment(ctx *VariableAssignmentContext) {}

// EnterAssignment is called when production assignment is entered.
func (s *BaseMeritListener) EnterAssignment(ctx *AssignmentContext) {}

// ExitAssignment is called when production assignment is exited.
func (s *BaseMeritListener) ExitAssignment(ctx *AssignmentContext) {}

// EnterIntegerExpression is called when production integerExpression is entered.
func (s *BaseMeritListener) EnterIntegerExpression(ctx *IntegerExpressionContext) {}

// ExitIntegerExpression is called when production integerExpression is exited.
func (s *BaseMeritListener) ExitIntegerExpression(ctx *IntegerExpressionContext) {}

// EnterVariableModifier is called when production variableModifier is entered.
func (s *BaseMeritListener) EnterVariableModifier(ctx *VariableModifierContext) {}

// ExitVariableModifier is called when production variableModifier is exited.
func (s *BaseMeritListener) ExitVariableModifier(ctx *VariableModifierContext) {}
