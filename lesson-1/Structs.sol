pragma solidity ^0.4.19;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;
    
    // Structs allow you to create more complicated data types that have multiple properties.
    // start here
    struct Zombie {
      string name; // Strings are used for arbitrary-length UTF-8 data
      uint dna;
    }
}
