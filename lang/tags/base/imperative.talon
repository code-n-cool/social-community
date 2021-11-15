tag: user.code_base_imperative
-
block: user.code_block()

#todo should we have a keyword list? type list capture? stick with "word"?
#state in: insert(" in ")
is not (none|null): user.code_is_not_null()
is (none|null): user.code_is_null()
#todo: types?
#word (dickt | dictionary): user.code_type_dictionary()
state if: user.code_state_if()
state else if: user.code_state_else_if()
state else: user.code_state_else()
state self: user.code_self()
#todo: this is valid for many languages,
# but probably not all
self dot:
    user.code_self()
    insert(".")
state while: user.code_state_while()
state for: user.code_state_for()
state for in: user.code_state_for_each()
state switch: user.code_state_switch()
state case: user.code_state_case()
state do: user.code_state_do()
state goto: user.code_state_go_to()
state return: user.code_state_return()
state import: user.code_import()
from import: user.code_from_import()
state class: user.code_type_class()
state (no | nil | null): user.code_null()
state break: user.code_break()
state next: user.code_next()
state true: user.code_true()
state false: user.code_false()

# for annotating function parameters
is type {user.code_type}: user.code_insert_type_annotation(code_type)
returns [type] {user.code_type}: user.code_insert_return_type(code_type)
# for generic reference of types
type {user.code_type}: insert("{code_type}")
