pragma solidity >0.4.24;

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {

  // Define 2 events, one for Adding, and other for Removing
  event add(address account);
  event remove(address account);
  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  struct consumers  {
    address account;
    mapping (address => Roles) role;
  }

  mapping (uint => consumers) consumer;
  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
    consumer[0] = consumers(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyConsumer() {
  //  require(consumers(msg.sender) == consumers.role[msg.sender], "You have an inappropriate role.");
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isConsumer(address account) public view returns (bool) {
    
  }

  // Define a function 'addConsumer' that adds this role
  function addConsumer(address account) public onlyConsumer {
    
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceConsumer() public {
    
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addConsumer(address account) internal {
    
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeConsumer(address account) internal {
    
  }
}