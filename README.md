# 4Bit_1x3_Router
This mini project include files to simulate a 4 Bit 1x3 router written in Verilog HDL.

This project was simulated using Icarus Verilog in VS Code as well as EDA Playground.

The following results were observed based on the code:

<img width="1396" alt="Screenshot 2025-04-25 at 1 26 07 PM" src="https://github.com/user-attachments/assets/91230d87-7649-4e5b-9426-3ccafc260f6f" />

Post simulation on Icarus Verilog, the module was loaded onto Quartus II in order to enable FPGA implementation.
The module code was synthesized in to the following RTL View layout:

<img width="483" alt="image" src="https://github.com/user-attachments/assets/c0f63956-8587-4300-a45f-6d1091bc526b" />

For physical verification of working, the same program was implemented on an Altera DE1 Board (Cyclone II - EP2C20F484C7 FPGA) with the input & output assignments given below:

<img width="784" alt="Screenshot 2025-04-25 at 1 40 05 PM" src="https://github.com/user-attachments/assets/6f31ba5b-b6af-4a68-b095-a88554c3526e" />

For each 4 bit input and select line combination the output was observed at 1 of three destinations (single bit high/low indicated by a LED)

output fig1:
<img width="553" alt="Screenshot 2025-04-25 at 1 43 14 PM" src="https://github.com/user-attachments/assets/a04f0e47-8ed5-4d0b-a9d8-b0ca7fca8873" />

output fig2:
<img width="405" alt="Screenshot 2025-04-25 at 1 43 39 PM" src="https://github.com/user-attachments/assets/3510d404-e453-4913-ad1b-80c59e7a3d14" />


Altera DE1 board User manual: https://cs.colby.edu/courses/F22/cs232-labs/DE1_User_Manual.pdf
