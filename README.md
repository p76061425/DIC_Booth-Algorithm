 # Booth Algorithm
 ## Introduction
Booth algorithm is a multiplication operation that multiplies two numbers in two’s
complement notation. The detail algorithm is described as below:</br>

1. Assume that the multiplicand m is x-bit and multiplier r is y-bit.
Initialize a register P for the final result, and the length is x+y+1 bits.
The initial value of P is 0(x bits)_r(y bits)_0(1 bit).
2. The rightmost 2 bits used for the selection of different executions.

    ![](https://i.imgur.com/H7L6lKT.png)

3. Arithmetically shift 1 bit on P.
4. Repeat the step (2) and (3) for y times.
5. The final answer is obtained by dropping the LSB from P.