.text
.global main
main:
    # push the ctsck record
    SUB sp, sp, #4
    STR lr, [sp, #0]

    # Prompt the user to enter an integer
    LDR r0, =prompt1
    BL printf

    # Read the user integer
    LDR r0, =format1
    LDR r1, =num1
    BL scanf 

    # Print the user input
    LDR r0, =output1
    LDR r1, =num1
    LDR r1, [r1, #0]
    BL printf

    # pop the stack record
    LDR lr, [sp, #0]
    ADD sp, sp, #4
    MOV pc, lr
.data
    prompt1: .asciz "Enter an interger namber: "
    format1: .asciz "%d"
    num1:    .word  0
    output1: .asciz "You enter the number %d\n"
