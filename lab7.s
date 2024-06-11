area ornek,code,readonly
	
.section .data
source_array:
    .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
source_array_end:

.section .bss
destination_array:
    .skip 40                           

.section .text
.global _start

_start:
    mov r0, #0                           
    mov r1, #0                          

loop:
    cmp r0, #40                          
    beq end_loop

    ldr r2, =source_array               
    add r2, r2, r0, lsl #2               
    ldr r3, [r2]                        

    mov r4, r3, lsr #1                   
    mul r4, r4, #2                      
    cmp r3, r4                         
    bne not_even                        

    ldr r5, =destination_array         
    add r5, r5, r1, lsl #2               
    str r3, [r5]                         
    add r1, r1, #4                       

not_even:
    add r0, r0, #4                   
    b loop                            

end_loop:
    mov r7, #1                        
    mov r0, #0                     
    svc 0                               
