pragma solidity ^0.4.19;

// Chapter 9 - https://cryptozombies.io/en/lesson/1/chapter/9

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }
    
    Zombie[] public zombies;

    /*
    as functs are public by default, it's good practice to mark your functions as private by default.
    only make public the functions you want to expose to the world.
    As with function parameters, it's convention to start private function names with an underscore (_).
     */

    function _createZombie(string _name, uint _dna) private {
      zombies.push(Zombie(_name, _dna)); 
    }
}
