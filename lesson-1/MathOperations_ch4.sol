/*
Math in Solidity is pretty straightforward. The following operations are the same as in most programming languages:

Addition: x + y
Subtraction: x - y,
Multiplication: x * y
Division: x / y
Modulus / remainder: x % y (for example, 13 % 5 is 3, because if you divide 5 into 13, 3 is the remainder)
Solidity also supports an exponential operator (i.e. "x to the power of y", x^y): uint x = 5 ** 2; // equal to 5^2 = 25
*/

pragma solidity ^0.4.19;

contract ZombieFactory {

    uint dnaDigits = 16;
    // To make sure our Zombie's DNA is only 16 characters, let's make another uint equal to 10^16. 
    // That way we can later use the modulus operator % to shorten an integer to 16 digits.
    uint dnaModulus = 10 ** dnaDigits;
}