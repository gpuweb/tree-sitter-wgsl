; Types
(type_specifier) @type
(template_elaborated_ident) @type

; Functions
(function_decl
  (function_header
    (ident) @function))
(call_expression
  (call_phrase
    (template_elaborated_ident) @function))

; Variables and parameters
(param
  (ident) @variable.parameter)
(variable_decl
  (optionally_typed_ident (ident) @variable))
(const_assert_statement) @variable

; Struct and struct members
(struct_decl
  (ident) @type)
(struct_member
  (member_ident) @property)

; Attributes
(attribute) @attribute

; Literals
(bool_literal) @constant.builtin
(int_literal) @number
(float_literal) @float

; Keywords and storage classes
(global_variable_decl
  (variable_decl
    (optionally_typed_ident
      (ident) @variable)))

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
"return" @keyword.control
"discard" @keyword.control

; Declarations
(global_variable_decl) @keyword
(global_value_decl) @keyword
(variable_decl) @keyword

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
