package tree_sitter_wgsl_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_wgsl "github.com/gpuweb/tree-sitter-wgsl/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_wgsl.Language())
	if language == nil {
		t.Errorf("Error loading Wgsl grammar")
	}
}
