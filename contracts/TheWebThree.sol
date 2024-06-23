// contracts/MyTokenV1.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract TheWebThree is Initializable, ERC20Upgradeable {
     address payable public owner;

//    constructor() {
//        _disableInitializers();
//    }

    function initialize(uint256 initialSupply) external initializer {
        __ERC20_init("TheWebThree", "TWT");
        _mint(msg.sender, initialSupply);

        owner = payable(msg.sender);
    }
}