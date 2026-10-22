# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Kaimana Furniss & Halil Ibrahim Marmara

## Summary
In this lab, we learned how subtraction works in binary numbers and how a half subtractor uses logic gates to calculate the difference and borrow. We also learned about One’s Complement and Two’s Complement, which are methods used to represent negative numbers and perform subtraction in binary.
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Both circuits use XOR gates to calculate the output. However, a Half Adder is used for addition, while a Half Subtractor is used for subtraction. In a Half Adder, the carry output is calculated using A AND B. In a Half Subtractor, the borrow output is calculated using NOT A AND B. The main difference is that an adder produces a carry when both inputs are 1, while a subtractor produces a borrow when A is smaller than B.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
In One’s Complement, negative numbers are represented by inverting all the bits of a positive number. When performing subtraction, an end-around carry may occur. This means that if there is a carry out of the most significant bit, we must add it back to the least significant bit. This extra step makes the circuit more complicated and harder to implement.
### 3 - What is the edge case and problem with Two’s Complement number representation?
The main edge case in Two’s Complement is the most negative number that can be represented with a fixed number of bits. This number has no positive equivalent using the same number of bits. For example, in 4-bit Two’s Complement, the range is from -8 to +7. Therefore, we cannot represent +8 using only 4 bits. Trying to change -8 into +8 causes an overflow.


