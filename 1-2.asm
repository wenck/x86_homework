CODE SEGMENT
ORG 100H
ASSUME CS:CODE,DS:CODE 
START:                  
MOV DI,1234H
MOV CX,8H
MOV SI,2234H
CLC
Again:
MOV AL,[SI]
ADC [DI],AL
INC SI
INC DI
LOOP Again  
CODE ENDS
END START 