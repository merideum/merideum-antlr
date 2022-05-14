// Code generated from Merit.g4 by ANTLR 4.10.1. DO NOT EDIT.

package parser // Merit
import "github.com/antlr/antlr4/runtime/Go/antlr"

type BaseMeritVisitor struct {
	*antlr.BaseParseTreeVisitor
}

func (v *BaseMeritVisitor) VisitParse(ctx *ParseContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitBlock(ctx *BlockContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitStatement(ctx *StatementContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitOutputAssignment(ctx *OutputAssignmentContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitVariableAssignment(ctx *VariableAssignmentContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitAssignment(ctx *AssignmentContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitIntegerExpression(ctx *IntegerExpressionContext) interface{} {
	return v.VisitChildren(ctx)
}

func (v *BaseMeritVisitor) VisitVariableModifier(ctx *VariableModifierContext) interface{} {
	return v.VisitChildren(ctx)
}
