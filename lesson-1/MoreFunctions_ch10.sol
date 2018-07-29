pragma solidity ^0.4.19;

// Chapter 10 - https://cryptozombies.io/en/lesson/1/chapter/10

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }
    
    Zombie[] public zombies;

    function _createZombie(string _name, uint _dna) private {
      zombies.push(Zombie(_name, _dna)); 
    }

    /* 
    To return a value from a function, the declaration looks like this:

    string greeting = "What's up dog";

    function sayHello() public returns (string) {
    return greeting;
    }

    The above function doesn't actually change state in Solidity — e.g. it doesn't change any values or write anything.

    So in this case we could declare it as a view function, meaning it's only viewing the data but not modifying it:

    function sayHello() public view returns (string) {} 

    Solidity also contains pure functions, which means you're not even accessing any data in the app. Consider the following:

    function _multiply(uint a, uint b) private pure returns (uint) {
    return a * b;
    }
    */
    function _generateRandomDna(string _str) private view returns (uint) {
        
    }
}
