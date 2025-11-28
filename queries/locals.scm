; Function bodies
(function_decl
  (compound_statement) @local.scope)

; All compound statements (if, while, for, blocks, etc.)
(compound_statement) @local.scope

; For loops init/update
(for_statement) @local.scope

; Switch bodies
(switch_body) @local.scope

; Case clauses
(case_clause
  (compound_statement) @local.scope)

(default_alone_clause
  (compound_statement) @local.scope)

; Function definitions
(function_decl
  (function_header
    (ident) @local.definition.function))

; Function parameters
(param
  (ident) @local.definition.parameter)

; Variable declarations (var/let/const inside functions)
(variable_or_value_statement
  (optionally_typed_ident
    (ident) @local.definition.variable))

; Global variables
(global_variable_decl
  (variable_decl
    (optionally_typed_ident
      (ident) @local.definition.variable)))

; Global constants and overrides
(global_value_decl
  (optionally_typed_ident
    (ident) @local.definition.constant))

; Struct definitions
(struct_decl
  (ident) @local.definition.type)

; Struct members
(struct_member
  (member_ident) @local.definition.field)

; Type aliases
(type_alias_decl
  (ident) @local.definition.type)

; Identifiers in expressions
(template_elaborated_ident
  (ident) @local.reference)

; Member access (field references)
(member_ident) @local.reference

; Type references in type specifiers
(type_specifier
  (template_elaborated_ident
    (ident) @local.reference))

(enable_extension_name) @local.reference

(language_extension_name) @local.reference
