# Pragma Hackathon Template V2 🧪

Welcome to the Pragma V2 Hackathon Template repository! This serves as a base for building projects with Pragma V2.

> Before deploying the contract, you’ll need to specify the Pragma contract associated with the chain you’re deploying to. You can find information on deployed contracts and supported chains[here](https://docs.pragmaoracle.com/v2/Price%20Feeds/Deployments)

## Getting Started 🚀

To find the feed ID for a specific data feed, based on asset class, feed type, and pair ID, please refer to the [documentation here](https://docs.pragmaoracle.com/v2/Price%20Feeds/How%20to/build-your-feed-id).

To provide update data, you’ll first need to fetch the calldata using our tool, Theoros. Detailed instructions on querying the get_calldata endpoint through the Theoros SDK are available [here]((https://docs.pragmaoracle.com/)). Once you have the calldata, you can pass it as an argument to the `getSpotMedian` function in the `PragmaV2Template.sol` contract. Ensure that the required fee amount is included for the update to proceed successfully.

### Deploy 🪛

This repository includes a simple script to deploy PragmaV2Template on any chain. You only need to provide an RPC URL and the private key for the deployment account, ensuring that it has sufficient funds.
```shell
$ forge script script/PragmaV2Template.s.sol:TemplateScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

## Feedback 📝

Any bug or feedback ? Please reach out to <matthias@pragmaoracle.com>