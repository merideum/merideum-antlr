// Code generated from Merit.g4 by ANTLR 4.10.1. DO NOT EDIT.

package parser

import (
	"fmt"
	"sync"
	"unicode"

	"github.com/antlr/antlr4/runtime/Go/antlr"
)

// Suppress unused import error
var _ = fmt.Printf
var _ = sync.Once{}
var _ = unicode.IsLetter

type MeritLexer struct {
	*antlr.BaseLexer
	channelNames []string
	modeNames    []string
	// TODO: EOF string
}

var meritlexerLexerStaticData struct {
	once                   sync.Once
	serializedATN          []int32
	channelNames           []string
	modeNames              []string
	literalNames           []string
	symbolicNames          []string
	ruleNames              []string
	predictionContextCache *antlr.PredictionContextCache
	atn                    *antlr.ATN
	decisionToDFA          []*antlr.DFA
}

func meritlexerLexerInit() {
	staticData := &meritlexerLexerStaticData
	staticData.channelNames = []string{
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN",
	}
	staticData.modeNames = []string{
		"DEFAULT_MODE",
	}
	staticData.literalNames = []string{
		"", "'='", "'output'", "'const'", "'var'",
	}
	staticData.symbolicNames = []string{
		"", "ASSIGN", "OUTPUT", "CONST", "VAR", "IDENTIFIER", "LETTER", "INTEGER",
		"WS",
	}
	staticData.ruleNames = []string{
		"ASSIGN", "OUTPUT", "CONST", "VAR", "IDENTIFIER", "LETTER", "INTEGER",
		"DIGIT", "WS",
	}
	staticData.predictionContextCache = antlr.NewPredictionContextCache()
	staticData.serializedATN = []int32{
		4, 0, 8, 71, 6, -1, 2, 0, 7, 0, 2, 1, 7, 1, 2, 2, 7, 2, 2, 3, 7, 3, 2,
		4, 7, 4, 2, 5, 7, 5, 2, 6, 7, 6, 2, 7, 7, 7, 2, 8, 7, 8, 1, 0, 1, 0, 1,
		1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1,
		2, 1, 3, 1, 3, 1, 3, 1, 3, 1, 4, 1, 4, 3, 4, 41, 8, 4, 1, 4, 1, 4, 1, 4,
		5, 4, 46, 8, 4, 10, 4, 12, 4, 49, 9, 4, 1, 5, 1, 5, 1, 6, 1, 6, 5, 6, 55,
		8, 6, 10, 6, 12, 6, 58, 9, 6, 1, 6, 3, 6, 61, 8, 6, 1, 7, 1, 7, 1, 8, 4,
		8, 66, 8, 8, 11, 8, 12, 8, 67, 1, 8, 1, 8, 0, 0, 9, 1, 1, 3, 2, 5, 3, 7,
		4, 9, 5, 11, 6, 13, 7, 15, 0, 17, 8, 1, 0, 4, 2, 0, 65, 90, 97, 122, 1,
		0, 49, 57, 1, 0, 48, 57, 3, 0, 9, 10, 13, 13, 32, 32, 76, 0, 1, 1, 0, 0,
		0, 0, 3, 1, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, 7, 1, 0, 0, 0, 0, 9, 1, 0, 0,
		0, 0, 11, 1, 0, 0, 0, 0, 13, 1, 0, 0, 0, 0, 17, 1, 0, 0, 0, 1, 19, 1, 0,
		0, 0, 3, 21, 1, 0, 0, 0, 5, 28, 1, 0, 0, 0, 7, 34, 1, 0, 0, 0, 9, 40, 1,
		0, 0, 0, 11, 50, 1, 0, 0, 0, 13, 60, 1, 0, 0, 0, 15, 62, 1, 0, 0, 0, 17,
		65, 1, 0, 0, 0, 19, 20, 5, 61, 0, 0, 20, 2, 1, 0, 0, 0, 21, 22, 5, 111,
		0, 0, 22, 23, 5, 117, 0, 0, 23, 24, 5, 116, 0, 0, 24, 25, 5, 112, 0, 0,
		25, 26, 5, 117, 0, 0, 26, 27, 5, 116, 0, 0, 27, 4, 1, 0, 0, 0, 28, 29,
		5, 99, 0, 0, 29, 30, 5, 111, 0, 0, 30, 31, 5, 110, 0, 0, 31, 32, 5, 115,
		0, 0, 32, 33, 5, 116, 0, 0, 33, 6, 1, 0, 0, 0, 34, 35, 5, 118, 0, 0, 35,
		36, 5, 97, 0, 0, 36, 37, 5, 114, 0, 0, 37, 8, 1, 0, 0, 0, 38, 41, 3, 11,
		5, 0, 39, 41, 5, 95, 0, 0, 40, 38, 1, 0, 0, 0, 40, 39, 1, 0, 0, 0, 41,
		47, 1, 0, 0, 0, 42, 46, 3, 11, 5, 0, 43, 46, 5, 95, 0, 0, 44, 46, 3, 15,
		7, 0, 45, 42, 1, 0, 0, 0, 45, 43, 1, 0, 0, 0, 45, 44, 1, 0, 0, 0, 46, 49,
		1, 0, 0, 0, 47, 45, 1, 0, 0, 0, 47, 48, 1, 0, 0, 0, 48, 10, 1, 0, 0, 0,
		49, 47, 1, 0, 0, 0, 50, 51, 7, 0, 0, 0, 51, 12, 1, 0, 0, 0, 52, 56, 7,
		1, 0, 0, 53, 55, 3, 15, 7, 0, 54, 53, 1, 0, 0, 0, 55, 58, 1, 0, 0, 0, 56,
		54, 1, 0, 0, 0, 56, 57, 1, 0, 0, 0, 57, 61, 1, 0, 0, 0, 58, 56, 1, 0, 0,
		0, 59, 61, 5, 48, 0, 0, 60, 52, 1, 0, 0, 0, 60, 59, 1, 0, 0, 0, 61, 14,
		1, 0, 0, 0, 62, 63, 7, 2, 0, 0, 63, 16, 1, 0, 0, 0, 64, 66, 7, 3, 0, 0,
		65, 64, 1, 0, 0, 0, 66, 67, 1, 0, 0, 0, 67, 65, 1, 0, 0, 0, 67, 68, 1,
		0, 0, 0, 68, 69, 1, 0, 0, 0, 69, 70, 6, 8, 0, 0, 70, 18, 1, 0, 0, 0, 7,
		0, 40, 45, 47, 56, 60, 67, 1, 6, 0, 0,
	}
	deserializer := antlr.NewATNDeserializer(nil)
	staticData.atn = deserializer.Deserialize(staticData.serializedATN)
	atn := staticData.atn
	staticData.decisionToDFA = make([]*antlr.DFA, len(atn.DecisionToState))
	decisionToDFA := staticData.decisionToDFA
	for index, state := range atn.DecisionToState {
		decisionToDFA[index] = antlr.NewDFA(state, index)
	}
}

// MeritLexerInit initializes any static state used to implement MeritLexer. By default the
// static state used to implement the lexer is lazily initialized during the first call to
// NewMeritLexer(). You can call this function if you wish to initialize the static state ahead
// of time.
func MeritLexerInit() {
	staticData := &meritlexerLexerStaticData
	staticData.once.Do(meritlexerLexerInit)
}

// NewMeritLexer produces a new lexer instance for the optional input antlr.CharStream.
func NewMeritLexer(input antlr.CharStream) *MeritLexer {
	MeritLexerInit()
	l := new(MeritLexer)
	l.BaseLexer = antlr.NewBaseLexer(input)
	staticData := &meritlexerLexerStaticData
	l.Interpreter = antlr.NewLexerATNSimulator(l, staticData.atn, staticData.decisionToDFA, staticData.predictionContextCache)
	l.channelNames = staticData.channelNames
	l.modeNames = staticData.modeNames
	l.RuleNames = staticData.ruleNames
	l.LiteralNames = staticData.literalNames
	l.SymbolicNames = staticData.symbolicNames
	l.GrammarFileName = "Merit.g4"
	// TODO: l.EOF = antlr.TokenEOF

	return l
}

// MeritLexer tokens.
const (
	MeritLexerASSIGN     = 1
	MeritLexerOUTPUT     = 2
	MeritLexerCONST      = 3
	MeritLexerVAR        = 4
	MeritLexerIDENTIFIER = 5
	MeritLexerLETTER     = 6
	MeritLexerINTEGER    = 7
	MeritLexerWS         = 8
)
