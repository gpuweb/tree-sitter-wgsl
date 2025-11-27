((ident) @variable
  (#set! priority 99))

(bool_literal) @boolean

(int_literal) @number

(float_literal) @number

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

(member_ident) @property

(component_or_swizzle_specifier) @property

(function_header
  (ident) @function)

(param
  (ident)) @parameter

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
  "alias"
  "const"
  "const_assert"
  "diagnostic"
  "discard"
  "enable"
  "fn"
  "let"
  "override"
  "requires"
  "return"
  "struct"
  "var"
] @keyword

; Loop constructs
[
  "loop"
  "for"
  "while"
  "continuing"
  (break_statement)
  (continue_statement)
] @repeat

; Conditionals
[
  "if"
  "else"
  "switch"
  "case"
  "default"
] @conditional

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
  (template_args_start)
  (template_args_end)
] @punctuation.bracket

((ident) @storageclass
  (#match? @storageclass "^(function|private|workgroup|uniform|storage|handle)$"))

((ident) @type.qualifier
  (#match? @type.qualifier "^(read|write|read_write)$"))
