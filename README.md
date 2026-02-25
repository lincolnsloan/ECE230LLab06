# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
In this lab we practiced verilog design by implementing an XOR circuit for a 'stairway
switch'. Then we designed a half-adder, a full-adder, and connected 2 full-adders together
to create a 2-bit-adder in top.v. After modifying the constraints file, we demonstrated 
adding 2 2-bit numbers together to calculate a 3-bit output (2-bit sum and 1-bit Cout) on 
the board.

## Lab Questions

### 1 - How might you add more than two bits together?
If you conect full-adders together with the Cout of the LSB connected to the Cin of the 
next most significant bit all the way up to the MSB, you can create a ripple carry adder,
which adds as many bits as full adder modules you create.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate is what decides the output sum of the half-adder. This output is then used in 
the full-adder.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number which can be represented in 2 bits is 3. Information gets cut off if you go
over. In order to do larger numbers, you need to connect more full adders as described in question 1.
