section .data
    hello db "Im here"
    len_hello equ $-hello
    question_1 db 10,'Does Sun Rise in East?',10
    len_q1 equ $-question_1
    question_2 db 10,"Is Ubuntu a Compiler?",10
    len_q2 equ $-question_2
    question_3 db 10,"Is Earth Flat? ",10
    len_q3 equ $-question_3
    question_4 db 10,"Can Sound Travel through Vacuum?",10
    len_q4 equ $-question_4
    question_5 db 10,"Is Sun White?",10
    len_q5 equ $-question_5
    p1 db 10,"Player 1: "
    len_p1 equ $-p1
    p2 db "Player 2: "
    len_p2 equ $-p2
    ans1 db 10,10,"Player 1 is "
    len_ans1 equ $-ans1
    ans2 db "Player 2 is "
    len_ans2 equ $-ans2
    right db "Right ",10
    len_right equ $-right
    wrong db "Wrong ",10
    len_wrong equ $-wrong
    outof db " Out of "
    len_outof equ $-outof
    p1s db 10,"Player 1 Score is:: "
    len_p1s equ $-p1s
    p2s db 10,"Player 2 Score is:: "
    len_p2s equ $-p2s
    p1_Score dd 48
    p2_Score dd 48
    iteration dd 49
section .bss    
    input2 resb 5
    input1 resb 5
    

section .text
    global _start

_start:
    ; write "First Question" to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, question_1    ; address of string to write
    mov edx,len_q1      ; number of bytes to write
    int 0x80
    call prompts ;write the prompt for player_1
     
    ;The Response of the system for player 1 and question 1
    call response_1
;printing the response to answer
    mov al,[input1]
    cmp al,"T"
    je equal1
    call wrong_answer
    jmp escape1
equal1:
    call right_answer
    mov eax,[p1_Score]
    inc eax
    mov [p1_Score],eax
escape1:
    call response_2
;printing the response to answer
    mov al,[input2]
    cmp al,"T"
    je equal2
    call wrong_answer
    jmp escape2
equal2:
    call right_answer
    mov eax,[p2_Score]
    inc eax
    mov [p2_Score],eax
escape2:
   call show_Score1
   call show_Score2




    

;==============================================================    
  ;write "Second Question" to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, question_2    ; address of string to write
    mov edx,len_q2      ; number of bytes to write
    int 0x80          ; make kernel call to perform write operation

    call prompts 
    call response_1
;printing the response to answer
    mov al,[input1]
    cmp al,"F"
    je equal3
    call wrong_answer
    jmp escape3
equal3:
    call right_answer
    mov eax,[p1_Score]
    inc eax
    mov [p1_Score],eax
escape3:
    call response_2
;printing the response to answer
    mov al,[input2]
    cmp al,"F"
    je equal4
    call wrong_answer
    jmp escape4
equal4:
    call right_answer
    mov eax,[p2_Score]
    inc eax
    mov [p2_Score],eax
escape4:
   call show_Score1
   call show_Score2



;==============================================================

    ; write "Third Question!" to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, question_3    ; address of string to write
    mov edx,len_q3      ; number of bytes to write
    
    int 0x80          ; make kernel call to perform write operation


call prompts 
    call response_1
;printing the response to answer
    mov al,[input1]
    cmp al,"F"
    je equal5
    call wrong_answer
    jmp escape5
equal5:
    call right_answer
    mov eax,[p1_Score]
    inc eax
    mov [p1_Score],eax
escape5:
    call response_2
;printing the response to answer
    mov al,[input2]
    cmp al,"F"
    je equal6
    call wrong_answer
    jmp escape6
equal6:
    call right_answer
    mov eax,[p2_Score]
    inc eax
    mov [p2_Score],eax
escape6:
   call show_Score1
   call show_Score2



;===============================================================
    ; write "Fourth Question!" to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, question_4    ; address of string to write
    mov edx,len_q4      ; number of bytes to write
    int 0x80          ; make kernel call to perform write operation
    
    
    
    call prompts 
    call response_1
;printing the response to answer
    mov al,[input1]
    cmp al,"F"
    je equal7
    call wrong_answer
    jmp escape7
equal7:
    call right_answer
    mov eax,[p1_Score]
    inc eax
    mov [p1_Score],eax
escape7:
    call response_2
;printing the response to answer
    mov al,[input2]
    cmp al,"F"
    je equal8
    call wrong_answer
    jmp escape8
equal8:
    call right_answer
    mov eax,[p2_Score]
    inc eax
    mov [p2_Score],eax
escape8:
   call show_Score1
   call show_Score2

    
    
    
    
    
    
    
    
    
    
    
    
;==================================================================
   ; write "Fifth Question!" to stdout
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, question_5    ; address of string to write
    mov edx,len_q5      ; number of bytes to write
    
    int 0x80          ; make kernel call to perform write operation

    call prompts 
    call response_1
;printing the response to answer
    mov al,[input1]
    cmp al,"F"
    je equal9
    call wrong_answer
    jmp escape9
equal9:
    call right_answer
    mov eax,[p1_Score]
    inc eax
    mov [p1_Score],eax
escape9:
    call response_2
;printing the response to answer
    mov al,[input2]
    cmp al,"F"
    je equal10
    call wrong_answer
    jmp escape10
equal10:
    call right_answer
    mov eax,[p2_Score]
    inc eax
    mov [p2_Score],eax
escape10:
   call show_Score1
   call show_Score2

   



   

    ; exit with status code 0
    mov eax, 1        ; sys_exit
    xor ebx, ebx      ; exit status code (0)
    int 0x80          ; make kernel call to exit
   
   
   
   
   



 
show_Score1:
;Showing the score of the player1
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, p1s    ; address of string to write
    mov edx,len_p1s      ; number of bytes to write
    int 0x80
    ;printing int score
    mov eax,4
    mov ebx,1
    mov ecx,p1_Score
    mov edx,1
    int 0x80
    ;printing out of
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, outof    ; address of string to write
    mov edx,len_outof      ; number of bytes to write
    int 0x80
;printing number of iteration
    mov eax,4
    mov ebx,1
    mov ecx,iteration
    mov edx,1
    int 0x80
    ret
    
show_Score2:
;showing score of the second player
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, p2s    ; address of string to write
    mov edx,len_p2s      ; number of bytes to write
    int 0x80
    ;printing int score
    mov eax,4
    mov ebx,1
    mov ecx,p2_Score
    mov edx,1
    int 0x80
    ;printing out of
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, outof    ; address of string to write
    mov edx,len_outof      ; number of bytes to write
    int 0x80
;printing number of iteration
    mov eax,4
    mov ebx,1
    mov ecx,iteration
    mov edx,1
    int 0x80
    mov eax,[iteration]
    inc eax
    mov [iteration],eax
    ret
    
    
right_answer:
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, right   ; address of string to write
    mov edx,len_right      ; number of bytes to write
    int 0x80
ret

wrong_answer:
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, wrong    ; address of string to write
    mov edx,len_wrong      ; number of bytes to write
    int 0x80
ret


prompts:
mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, p1    ; address of string to write
    mov edx,len_p1      ; number of bytes to write
    int 0x80
; Read input from player 1
mov eax, 3      ; system call for read
mov ebx, 2      ; file descriptor for stdin
mov ecx, input1 ; address of input buffer
mov edx, 1      ; number of bytes to read
int 0x80        ; invoke the system call



    ;write the prompt for player_2

    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, p2    ; address of string to write
    mov edx,len_p2      ; number of bytes to write
    int 0x80

    ;Reading the response from Second player
    mov eax, 3      ; system call for read
    mov ebx, 2      ; file descriptor for stdin
    mov ecx, input2  ; address of input buffer
    mov edx, 1      ; number of bytes to read
    int 0x80        ; invoke the system callT


ret


response_1:
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, ans1    ; address of string to write
    mov edx,len_ans1      ; number of bytes to write
    int 0x80
ret


response_2:
;The Response of the system for player 2 and question 1

    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, ans2    ; address of string to write
    mov edx,len_ans2      ; number of bytes to write
    int 0x80
ret



debug:
    mov eax, 4        ; sys_write
    mov ebx, 1        ; file descriptor for stdout
    mov ecx, hello    ; address of string to write
    mov edx,len_hello      ; number of bytes to write
    int 0x80
ret