// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MythToken
 * @author Thomas
 *
 * @dev Standard ERC20 token with burning and optional functions implemented.
 * For full specification of ERC-20 standard see:
 * https://github.com/ethereum/EIPs/blob/master/EIPS/eip-20.md
 */
 contract MythToken is ERC20 {

     // address private owner;
     // mapping (address => uint256) pendingWithdrawals;

     // Initialises smart contract with supply of tokens going to the address that
     // deployed the contract.
     constructor(uint256 _initialSupply) ERC20("MythToken", "MYTH") {
         _mint(msg.sender, _initialSupply * (10 ** decimals()));
         // owner = msg.sender;
     }

     // // A wallet sends Eth and receives MYTH in return
     // function buyToken(uint256 _amount) external payable {
     //     // Ensures that correct amount of Eth sent for PCT
     //     // 1 ETH is set equal to 1 PCT
     //     require(_amount == ((msg.value / 1 ether)), "Incorrect amount of Eth.");
     //     transferFrom(owner, msg.sender, _amount);
     //     emit Transfer(owner, msg.sender, _amount);
     // }
     //
     // // A wallet sends PCT and receives Eth in return
     // function sellToken(uint256 _amount) public {
     //     pendingWithdrawals[msg.sender] = _amount;
     //     transfer(owner, _amount);
     //     withdrawEth();
     //     emit Transfer(msg.sender, owner, _amount);
     // }
     //
     // // Using the Withdraw Pattern to remove Eth from contract account when user
     // // wants to return PCT
     // // https://solidity.readthedocs.io/en/latest/common-patterns.html#withdrawal-from-contracts
     //  function withdrawEth() public {
     //     uint256 amount = pendingWithdrawals[msg.sender];
     //     // Pending refund zerod before to prevent re-entrancy attacks
     //     pendingWithdrawals[msg.sender] = 0;
     //     msg.sender.transfer(amount * 1 ether);
     // }
 }
