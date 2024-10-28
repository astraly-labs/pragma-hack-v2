// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {PragmaV2Template} from "../src/PragmaV2Template.sol";

contract TemplateScript is Script {
    PragmaV2Template public v2template;

    function setUp() public {}

    function run() public {
        address hyperlane_address = 0x052A5D0c50baCc1B0Ae00C13b586DCA08133d86b;
        vm.startBroadcast();

        v2template = new PragmaV2Template(hyperlane_address);

        vm.stopBroadcast();
    }
}
