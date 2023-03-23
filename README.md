# Smart-Contracts-Airdrop-Faucet-pesale-
 don't forget to like 
## Airdrop
This smart contract takes in two parameters: the IERC20 token that will be airdropped and the limit of tokens that can be claimed by each wallet address.
The claim function can be called by anyone to claim the airdropped tokens. It first checks if the caller has already received tokens by checking the hasReceived mapping. If the caller has already received tokens, the function will revert with an error message.
Then it checks if the contract has sufficient balance to fulfill the request. If the balance is less than the limit, the function will revert with an error message.
If the checks are passed, the function will transfer the specified limit of tokens from the contract.
## Faucet
The TokenFaucet contract takes two arguments in the constructor: the address of the token and the limit of tokens that can be claimed per day.
The claim function can be called by any address to claim one token. If the caller has already claimed a token within the last 24 hours, the function will revert. If the transfer of tokens fails, the function will also revert. Otherwise, the function will transfer one token to the caller and update the timestamp of their last claim.
## presale 
tokenAddress: the address of the ERC20 token being sold in the presale
owner: the address of the contract owner
price: the fixed price of the token being sold
minPurchase: the minimum amount of ether (in wei) that can be used to buy tokens
maxCap: the maximum amount of ether (in wei) that can be used to buy tokens
balances: a mapping that tracks the ether balances of buyers
buyTokens(): the function that allows buyers to purchase tokens using ether, subject to the minimum and maximum purchase limits
withdraw(): the function that allows the contract owner to withdraw any ether in the contract
getTokenBalance(): a function that returns the current balance of the token in the contract
getContractBalance(): a function that returns the current balance of ether in the contract