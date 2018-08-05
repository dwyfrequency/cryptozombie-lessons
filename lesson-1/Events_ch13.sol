pragma solidity ^0.4.19;

// https://cryptozombies.io/en/lesson/1/chapter/13

contract ZombieFactory {

    /* Events are a way for your contract to communicate that something happened on the blockchain to your app front-end, 
    which can be 'listening' for certain events and take action when they happen. */
    // declare our event here
    event NewZombie(uint zombieId, string name, uint dna);

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string _name, uint _dna) private {
        /* array.push() returns a uint of the new length of the array - and since the first item in an array has index 0, array.push() - 1 will be the index of the zombie we just added.  */
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        // and fire it here
        NewZombie(id, _name, _dna);
    }

    function _generateRandomDna(string _str) private view returns (uint) {
        uint rand = uint(keccak256(_str));
        return rand % dnaModulus;
    }

    function createRandomZombie(string _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}
