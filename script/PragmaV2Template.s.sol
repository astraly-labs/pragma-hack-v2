// SPDX-License-Identifier: MIT License
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {PragmaV2Template} from "../src/PragmaV2Template.sol";

contract TemplateScript is Script {
    PragmaV2Template public v2template;

    function setUp() public {}

    function run() public {
        // Set the pragma contract address associated to the deployment chain.
        // Available chains are specified at https://docs.pragmaoracle.com/v2/Price%20Feeds/Deployments

        address pragma_address = 0x43fc3d0cD26CDDc1B26E6290B85EdC59e0CE1747; // Replace this address with the Pragma.sol associated with the chain
        vm.startBroadcast();

        v2template = new PragmaV2Template(pragma_address);

        vm.stopBroadcast();
    }
}
