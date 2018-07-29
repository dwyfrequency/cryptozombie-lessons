pragma solidity ^0.4.19;

// Chapter 11 - https://cryptozombies.io/en/lesson/1/chapter/11

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
    Ethereum has the hash function keccak256 built in, which is a version of SHA3. A hash function basically maps an input string into a random 256-bit hexidecimal number. A slight change in the string will cause a large change in the hash.

    Sometimes you need to convert between data types. Take the following example:
    ----
    uint8 a = 5;
    uint b = 6;
    // throws an error because a * b returns a uint, not uint8:
    uint8 c = a * b; 
    // we have to typecast b as a uint8 to make it work:
    uint8 c = a * uint8(b);
    ----
    In the above, a * b returns a uint, but we were trying to store it as a uint8, which could cause potential problems. By casting it as a uint8, it works and the compiler won't throw an error.
    */

    function _generateRandomDna(string _str) private view returns (uint) {
        // convert hexadecimal to unsigned int
        uint rand = uint(keccak256(_str));
        return rand % dnaModulus;
    }
}
