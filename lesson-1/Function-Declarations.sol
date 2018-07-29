pragma solidity ^0.4.19;

contract ZombieFactory {

    uint dnaDigits = 16; // unsigned integer for dna values
    uint dnaModulus = 10 ** dnaDigits;

    // Structs allow you to create more complicated data types that have multiple properties.
    struct Zombie {
        string name;
        uint dna;
    }
    
    /* 
    There are two types of arrays in Solidity: fixed arrays and dynamic arrays
    below, is a dynamic public array; for fixed add num in brackets
    Other contracts would then be able to read (but not write) to this array. So this is a useful pattern for storing public data in your contract.
    */
    Zombie[] public zombies;

    // start here
    function createZombie(string _name, uint _dna) {
      // start here
    }
}
