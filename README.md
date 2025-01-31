# StackEcoRewards Smart Contract - README

## Overview
Stack sustaina token is a Clarity smart contract designed to facilitate an eco-friendly rewards system built on the Stacks blockchain. The contract enables businesses to register for verification, receive carbon credit incentives, and allows token minting, transfers, and controlled burns to maintain supply.

## Features
- **Admin Controls:** The contract administrator can adjust supply caps, update burn rates, and manage business verifications.
- **Token Minting & Transfers:** The contract supports minting new tokens within predefined supply limits and allows token transfers with optional burning.
- **Business Verification:** Registered businesses can be verified and assigned carbon credits.
- **Emergency Functions:** Includes functions for emergency burns and transfers for security and supply management.

## Token Details
- **Token Name:** EcoRewards
- **Token Symbol:** ECO
- **Token Decimals:** 6
- **Initial Supply Cap:** 1 billion tokens (1,000,000,000.000000 ECO)
- **Burn Mechanism:** A default 0.5% burn rate applies to non-exempt transactions.

## Error Codes
- **ERR-NOT-AUTHORIZED (100):** Action requires special permissions.
- **ERR-INSUFFICIENT-BALANCE (101):** User does not have enough tokens.
- **ERR-CAP-REACHED (102):** Minting exceeds the maximum supply cap.
- **ERR-INVALID-AMOUNT (103):** Transaction amount is not valid.
- **ERR-NOT-ADMINISTRATOR (104):** Action requires administrator privileges.
- **ERR-ALREADY-REGISTERED (105):** Business is already registered.
- **ERR-INVALID-PARAMETER (106):** Incorrect parameter provided.
- **ERR-INVALID-RECIPIENT (107):** Cannot send tokens to oneself.
- **ERR-INVALID-PRINCIPAL (108):** Invalid blockchain principal.
- **ERR-EMPTY-NAME (109):** Business name must not be empty.

## Contract Constants
- **CONTRACT-OWNER:** Initially set to the transaction sender.
- **BURN-THRESHOLD-PERCENTAGE:** 10% of total supply.
- **MAX-BURN-RATE:** 10%.

## Data Variables
- **administrator:** Stores the admin principal.
- **total-supply:** Tracks the total token supply.
- **current-cap:** Maximum allowable supply.
- **burn-rate:** Current burn rate (default 0.5%).
- **paused:** Indicates if contract operations are paused.
- **burn-threshold:** Threshold for supply cap adjustments.

## Data Maps
- **balances:** Tracks user token balances.
- **burn-exemptions:** Maintains a list of exempted addresses.
- **allowances:** Stores approved transfer allowances.
- **verified-businesses:** Maps registered businesses with details.

## Read-Only Functions
- `get-name`: Returns the token name.
- `get-symbol`: Returns the token symbol.
- `get-decimals`: Returns the number of decimal places.
- `get-balance`: Retrieves a user's balance.
- `get-total-supply`: Fetches total token supply.
- `get-current-cap`: Returns current supply cap.
- `get-burn-rate`: Gets current burn rate.
- `is-exempted`: Checks if an address is burn-exempt.
- `get-business-info`: Retrieves a business's registration details.

## Administrative Functions
- `set-administrator(new-admin)`: Assigns a new administrator.
- `pause-contract()`: Pauses contract operations.
- `unpause-contract()`: Resumes contract operations.

## Business Verification
- `register-business(business, name, initial-credits)`: Registers a new business and assigns initial carbon credits.

## Supply Control
- `adjust-cap(new-cap)`: Modifies the total supply cap.
- `update-burn-rate(new-rate)`: Updates the burn rate.
- `set-burn-exemption(address, exempt)`: Grants or revokes burn exemption for an address.

## Token Operations
- `mint(amount, recipient)`: Mints new tokens for a recipient.
- `transfer(amount, recipient)`: Transfers tokens with a burn fee applied (unless exempted).

## Emergency Functions
- `emergency-burn(amount)`: Burns a specific number of tokens from supply.
- `emergency-transfer(from, to, amount)`: Transfers tokens between addresses in emergency cases.

## Deployment & Usage
1. Deploy the contract on the Stacks blockchain.
2. The initial administrator (contract deployer) can start minting and verifying businesses.
3. Businesses can be registered and granted carbon credits.
4. Users can trade tokens with automated burns applied.

## Security & Governance
- **Administrative Privileges:** Restricted to the contract administrator.
- **Emergency Controls:** Admin can burn supply and override transfers if necessary.
- **Burn Mechanism:** Encourages sustainable token supply.

## Future Enhancements
- Integration with decentralized identity verification.
- Dynamic carbon credit allocation based on sustainability metrics.
- Automated rewards distribution for verified businesses.

---
This README provides an overview of the Stack sustaina token smart contract and its functionalities. Always verify contract interactions before use.

