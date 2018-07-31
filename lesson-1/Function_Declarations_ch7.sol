pragma solidity ^0.4.19;

// Chapter 7

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

    /*
    function declaration in solidity looks like the following:

    function eatHamburgers(string _name, uint _amount) {

    }
    
    This is a function named eatHamburgers that takes 2 parameters: a string and a uint. For now the body of the function is empty.

    Note: It's convention (but not required) to start function parameter variable names with an underscore (_) 
    in order to differentiate them from global variables. 
    We'll use that convention throughout our tutorial.

    You would call this function like so:

    eatHamburgers("vitalik", 100);
    
    */
    // start here
    function createZombie(string _name, uint _dna) {
      // start here
    }
}
