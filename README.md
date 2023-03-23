# -Smart-Contracts-Airdrop-Faucet-pesale-
 Smart Contracts Airdrop Faucet pesale 
## Airdrop
### This smart contract takes in two parameters: the IERC20 token that will be airdropped and the limit of tokens that can be claimed by each wallet address.
### The claim function can be called by anyone to claim the airdropped tokens. It first checks if the caller has already received tokens by checking the hasReceived mapping. If the caller has already received tokens, the function will revert with an error message.
### Then it checks if the contract has sufficient balance to fulfill the request. If the balance is less than the limit, the function will revert with an error message.
### If the checks are passed, the function will transfer the specified limit of tokens from the contract.
