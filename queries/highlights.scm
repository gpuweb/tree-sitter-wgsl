; Types
(type_specifier) @type
(template_elaborated_ident) @type

; Functions
(function_decl
  name: (ident) @function)
(call_expression
  function: (template_elaborated_ident) @function)

; Variables and parameters
(param
  name: (ident) @variable.parameter)
(variable_decl
  name: (optionally_typed_ident (ident) @variable))
(const_assert_statement) @variable

; Struct and struct members
(struct_decl
  name: (ident) @type)
(struct_member
  name: (member_ident) @property)

; Attributes
(attribute) @attribute

; Literals
(bool_literal) @constant.builtin
(int_literal) @number
(float_literal) @float

; Comments
(_comment) @comment

; Keywords and storage classes
(global_variable_decl
  (variable_decl
    (ident_pattern_token) @keyword.storage))

; Control flow
"if" @keyword.control
"else" @keyword.control
"loop" @keyword.control
"for" @keyword.control
"while" @keyword.control
"switch" @keyword.control
"case" @keyword.control
"default" @keyword.control
"break" @keyword.control
"continue" @keyword.control
"return" @keyword.control
"discard" @keyword.control

; Declarations
(global_variable_decl) @keyword
(global_value_decl) @keyword
(variable_decl) @keyword

; Expressions
(unary_expression
  operator: _ @operator)
(multiplicative_expression
  operator: _ @operator)
(additive_expression
  operator: _ @operator)
(relational_expression
  operator: _ @operator)
(assignment_statement
  operator: _ @operator.assignment)

; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"," @punctuation.delimiter
"." @punctuation.delimiter
":" @punctuation.delimiter
";" @punctuation.delimiter

; Builtin functions and types
(builtin_value_name) @function.builtin

; Additional keywords
"var" @keyword
"let" @keyword
"const" @keyword
"fn" @keyword
"struct" @keyword
