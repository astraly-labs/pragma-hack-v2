// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@pragmaoracle/solidity-sdk/src/interfaces/IPragma.sol";
import "@pragmaoracle/solidity-sdk/src/interfaces/PragmaStructs.sol";

contract PragmaV2Template {
    IPragma oracle;

    /**
     * @param pragmaContract The address of the Pragma contract
     */
    constructor(address pragmaContract) {
        // The IPragam interface from the sdk provides the methods to interact with the Pragma contract.
        oracle = IPragma(pragmaContract);
    }

    /**
     * This method is an example of how to interact with the Pragma contract to fetch Spot Median updates. You can check the documentation to
     * find the available feeds.
     * @param priceUpdate The encoded data to update the contract with the latest price
     */
    function yourFunction(bytes[] calldata priceUpdate) public payable {
        // Submit a priceUpdate to the Pragma contract to update the on-chain price.
        // Updating the price requires paying the fee returned by getUpdateFee.
        uint256 fee = oracle.getUpdateFee(priceUpdate);
        oracle.updateDataFeeds{value: fee}(priceUpdate);

        // Read the current price from a price feed if it is less than 60 seconds old.
        // Each price feed (e.g., Spot Median ETH/USD) is identified by a unique identifier id.
        bytes32 id = bytes32(abi.encodePacked(bytes7(0x4554482f555344))); // ETH/USD
        SpotMedian memory data_feed = oracle.getSpotMedianNoOlderThan(id, 60);
    }
}
