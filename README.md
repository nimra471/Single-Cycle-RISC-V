# Single-Cycle-RISC-V
### INTRODUCTION:
This repository contains RISC-V Single Cycle 32 Bit Processor simulated on Logisim. This circuit contains 32 bit ALU, 32 bit Data Bus, 16KB ROM/RAM, 12 Bit Address Bus for both RAM MAR(memory address register). Register File contains 32 Registers with data width of 32 bits,and some Troubleshooting codes to verify all the circuit components.
### PRE REQ TOOL:
LOGISIM SOFTWARE VENUS ONLINE SIMULATOR FOR CODING AND GIT GITHUB.
### COMPONENTS:
1.Register file
2.Control Unit: control decoder/Type decoder
4.ALU
5.Immediate Generation
6.Program counter/Instruction Pointer-Memory
7.Instruction Memory(ROM)
8.Data Memory(RAM)
### UNDER THE GUIDENCE:
ZEESHAN RAFIQUE
### PROCEDURE/DESIGNING:
The procedure of designing Single Cycle Risc-V on logisim ,this procedure contains 4 steps which are following:
1.Fetch
2.Decoder
3.Exeution
4.Memory
5.Write back
first is Fetch which is PC Program counter that connects to the Instruction Memory and counts the instruction with 4 after.Second is the control unit with the combination of  Type Decoder and control decoder.There are 27 instruction type ,Type decoder determine the type of the instruction and then control decoder control the further processes of sending to execution process.Execution process are proceed in 32-bit ALU.ALU performs  arithmetic logic operation like ADD ,SUB ,OR,XOR,SLT,SLTU,SRL,SRA,SLL according to the instruction coming from instruction memory.Then there is a memory in which the result of ALU store ,we connect  a mux to select whether the data to store the data in memory or to write back the data from the memory to 32 bit register.Other than we design a separate module for jalr and branch instruction.for interference between them we connected it through wires and tunnel. we used clock to enable the register file or also connected to PC and Data Memory(RAM).
### CIRCUIT DIAGRAM:
![image](https://user-images.githubusercontent.com/81620928/113627119-78b26380-967c-11eb-9837-d5ee46b76095.png)
### INSTRUCTION USING IN RISC-V(RV32I):
1.ADD
2.ADDI
3.SUB
4.XOR
5.AND
6.SLT
7.SLTU
8.SLL
9.SRL
10.SRA
11.LW
12.JALR
13.SLLI
14.SRLI
15.SRAI
16.SLTI
17.SLTIU
18.SW
19.AUIPC
20.LUI
21.LI
22.BEQ
23.BNE
24.BLT
25.BLTU
26.BGEU
### REFERENCE:
https://www.amazon.com/dp/0128122757
https://riscv.org/technical/specifications/
