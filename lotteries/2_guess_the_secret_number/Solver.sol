pragma solidity ^0.8.0;

contract Solver {
  bytes32 public answerHash = 0xdb81b4d58595fbbbb592d3661a34cdca14d7ab379441400cbfa1b78bc447c365;

  event SecretNumberFound(uint8 secretNumber);

  /**
   * @dev This function computes the hashes and compare with the answerHash.
   * When an answer is found, it emits SecretNumberFound event to log the answer.
   */
  function findSecretNumber() public {
    for(uint8 i = 0; i < 256; i++) {
      if (keccak256(abi.encodePacked(i)) == answerHash) {
        emit SecretNumberFound(i);
        return;
      }
    }
  }
}