package tree_sitter_wgsl_test

import (
	"testing"

	tree_sitter "github.com/smacker/go-tree-sitter"
	"github.com/tree-sitter/tree-sitter-wgsl"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_wgsl.Language())
	if language == nil {
		t.Errorf("Error loading Wgsl grammar")
	}
}
