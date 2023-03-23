# -Smart-Contracts-Airdrop-Faucet-pesale-
 Smart Contracts Airdrop Faucet pesale 
## Airdrop
### This smart contract takes in two parameters: the IERC20 token that will be airdropped and the limit of tokens that can be claimed by each wallet address.
### The claim function can be called by anyone to claim the airdropped tokens. It first checks if the caller has already received tokens by checking the hasReceived mapping. If the caller has already received tokens, the function will revert with an error message.
### Then it checks if the contract has sufficient balance to fulfill the request. If the balance is less than the limit, the function will revert with an error message.
### If the checks are passed, the function will transfer the specified limit of tokens from the contract.
## Faucet
### The TokenFaucet contract takes two arguments in the constructor: the address of the token and the limit of tokens that can be claimed per day.
The claim function can be called by any address to claim one token. If the caller has already claimed a token within the last 24 hours, the function will revert. If the transfer of tokens fails, the function will also revert. Otherwise, the function will transfer one token to the caller and update the timestamp of their last claim.
