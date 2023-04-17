section .data
    ; Questions and answers data
    ; ...

    ; Predefined messages
    instructions db "Welcome to the True or False game!", 10, "Player 1 and Player 2 will take turns answering true or false questions.", 10, "Good luck!", 10, 0
    winner_msg db "The winner is Player ", 0
    tie_msg db "It's a tie!", 10, 0
    newline db 10

section .bss
    ; Game variables
    current_question resb 1   ; Current question number (1 byte)
    player1_score resb 1      ; Player 1 score (1 byte)
    player2_score resb 1      ; Player 2 score (1 byte)
    player1_answer resb 1     ; Player 1 answer (1 byte)
    player2_answer resb 1     ; Player 2 answer (1 byte)

section .text
    global _start

_start:
    ; Initialize game variables
    ; ...

    ; Display game instructions
    call display_instructions

    ; Main game loop
    mov byte [current_question], 1 ; Set the current question to 1

    game_loop:
        ; Display the current question
        movzx r8, byte [current_question]
        call display_question

        ; Get input from Player 1 and Player 2
        call get_player_input

        ; Check answers and update scores
        call update_scores

        ; Increment the current question and loop
        inc byte [current_question]
        cmp byte [current_question], byte [num_questions]
        jle game_loop

    ; Determine the winner
    call determine_winner

    ; Cleanup and exit
    call exit_game

; Display game instructions subroutine
display_instructions:
    ; Write the instructions to STDOUT
    mov rax, 1               ; Syscall number for write
    mov rdi, 1               ; File descriptor STDOUT
    lea rsi, [rel instructions] ; Address of the instructions string
    mov rdx, instructions_end - instructions ; Length of the instructions string
    syscall

    ; Add an extra newline character
    mov rax, 1
    mov rdi, 1
    lea rsi, [rel newline]
    mov rdx, 1
    syscall

    ret

; Data labels for the string length calculation
instructions_end:

; Determine the winner subroutine
determine_winner:
    ; Compare player scores
    movzx rax, byte [player1_score]
    cmp rax, byte [player2_score]

    ; Announce winner or tie
    je announce_tie
    jg announce_player1_winner
    jmp announce_player2_winner

announce_tie:
    ; Print the tie message
    lea rsi, [rel tie_msg]
    call print_string
    jmp exit_game

announce_player1_winner:
    ; Print the winner message and player number
    lea rsi, [rel winner_msg]
    call print_string
    mov rdi, 1
    call print_int
    jmp exit_game

announce_player2_winner:
    ; Print the winner message and player number
    lea rsi, [rel winner_msg]
    call print_string
    mov rdi, 2
    call print_int

; Exit game subroutine
exit_game:
    ; Add a newline character before exiting
    mov rax, 1
    mov rdi, 1
    lea rsi
