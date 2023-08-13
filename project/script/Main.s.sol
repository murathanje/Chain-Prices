// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Main} from "../src/Main.sol";

contract MainScript is Script {
    Main main; // Declare main as state variable

    constructor() {
        main = Main(0xfC2A87881939da0385C89B49c8c8e4C43a822232); // Initialize main with the deployed address
    }

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        main.transaction(
            3,
            10,
            0x742d35Cc6634C0532925a3b844Bc454e4438f44e,
            0x7EFd0B777026A9c42757d92A3f79361467372435
        );

        vm.stopBroadcast();
    }
}
