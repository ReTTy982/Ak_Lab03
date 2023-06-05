.data
format: .ascii "%u\n"
format_char_test: .ascii "%u\n%s"
as_short: .word 10
as_pointer: .ascii "String z as"

.text
.global function_from_as, as_short, as_pointer



function_from_as:
push %ebp
movl %esp, %ebp

# push $as_pointer
push c_pointer
push c_short
push $format_char_test
call printf

movl %ebp, %esp
pop %ebp
ret


    