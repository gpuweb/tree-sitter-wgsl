; Indent blocks
(compound_statement) @indent.begin

(compound_statement
  "}" @indent.end)

(continuing_compound_statement) @indent.begin

(continuing_compound_statement
  "}" @indent.end)

(switch_body) @indent.begin

(switch_body
  "}" @indent.end)

(struct_body_decl) @indent.begin

(struct_body_decl
  "}" @indent.end)

(function_header) @indent.begin

(function_header
  ")" @indent.end)

(argument_expression_list) @indent.begin

(argument_expression_list
  ")" @indent.end)

[
  "}"
  ")"
] @indent.branch
