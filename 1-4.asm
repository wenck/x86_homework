CODE SEGMENT
ASSUME CS:CODE,DS:CODE

ORG 1000H
START:
MOV SI,1000 ;
MOV DI,2000
MOV CX,0FH
LOP: MOV AL,[SI]
MOV [DI],AL
INC SI
INC DI
LOOP LOP
INT 20

LOP: 
MOVSB ;move string byte from DS:SI to ES:DI
LOOP LOP
INT 20H

CODE ENDS
END START