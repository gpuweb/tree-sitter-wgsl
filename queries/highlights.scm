((ident) @variable
  (#set! priority 99))

(bool_literal) @boolean

(int_literal) @number

(float_literal) @number.float

(line_comment) @comment

(block_comment) @comment

(type_specifier) @type

(struct_decl
  (ident) @type)

(type_alias_decl
  (ident) @type)

(template_arg_expression) @type

(enable_extension_name) @module

(language_extension_name) @module

(severity_control_name) @constant

(diagnostic_rule_name) @module

(member_ident) @variable.member

(component_or_swizzle_specifier) @variable.member

(function_header
  (ident) @function)

(param
  (ident)) @variable.parameter

(call_expression
  (call_phrase
    (template_elaborated_ident
      (ident) @function.call)))

(func_call_statement
  (call_phrase
    (template_elaborated_ident
      (ident) @function.call)))

(attribute) @attribute

[
  "const"
  "const_assert"
  "let"
  "override"
  "var"
] @keyword

[
  "alias"
  "struct"
] @keyword.type

[
  "discard"
  "return"
] @keyword.return

"fn" @keyword.function

[
  "diagnostic"
  "enable"
  "requires"
] @keyword.directive

[
  "loop"
  "for"
  "while"
  "continuing"
  (break_statement)
  (continue_statement)
] @keyword.repeat

[
  "if"
  "else"
  "switch"
  "case"
  "default"
] @keyword.conditional

[
  "+"
  "-"
  "*"
  "/"
  "%"
  "="
  "&&"
  "||"
  "&"
  "|"
  "^"
  "~"
  "++"
  "--"
  "!"
  (compound_assignment_operator)
  (comparison_operator)
  (shift_operator)
] @operator

[
  "."
  ","
  ";"
  ":"
  "->"
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  (template_args_start)
  (template_args_end)
] @punctuation.special

((ident) @keyword.modifier
  (#match? @keyword.modifier
    "^(function|private|workgroup|uniform|storage|read|write|read_write)$"))
