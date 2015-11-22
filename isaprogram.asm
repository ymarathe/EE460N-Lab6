
.ORIG x3000
LEA R0, L1
LDW R0, R0, #0; R0=x4004
LDW R1, R0, #0; R1=shuffle mask
ADD R2, R0, #1; R2=x4005
ADD R0, R0, #-4; R0=x4000

AND R3, R1, x3; R3=first two bits of mask
ADD R4, R0, R3; R4=location of new element to be stored in 0th location
LDB R5, R4, #0; R5=element to be stored in 1st location
STB R5, R2, #0; store element in R5 into 1st location
ADD R2, R2, #1; R2=x4006, location to store new next new element into

AND R3, R3, #0; R3=0
AND R4, R4, #0; R4=0
ADD R3, R2, #0; R3 = shuffle mask
RSHFL R3, R3, #2; R3= second two bits
AND R3, R3, #3; clear out other bits
ADD R4, R0, R3; R4= location of new element to be stored
LDB R5, R4, #0; R5= new element to be stored
STB R5, R2, #0; store element in R5 into 2nd location
ADD R2, R2, #1; R2=x4007, location to store next new element into

AND R3, R3, #0; R3=0
AND R4, R4, #0; R4=0
ADD R3, R2, #0; R3 = shuffle mask
RSHFL R3, R3, #4; R3= second two bits
AND R3, R3, #3; clear out other bits
ADD R4, R0, R3; R4= location of new element to be stored
LDB R5, R4, #0; R5= new element to be stored
STB R5, R2, #0; store element in R5 into 3rd location
ADD R2, R2, #1; R2=x4008, location to store next new element into

AND R3, R3, #0; R3=0
AND R4, R4, #0; R4=0
ADD R3, R2, #0; R3 = shuffle mask
RSHFL R3, R3, #6; R3= second two bits
AND R3, R3, #3; clear out other bits
ADD R4, R0, R3; R4= location of new element to be stored
LDB R5, R4, #0; R5= new element to be stored
STB R5, R2, #0; store element in R5 into 4th location

TRAP x25
L1 .FILL x4004
.END
