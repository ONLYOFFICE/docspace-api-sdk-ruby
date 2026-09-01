# DocspaceApiSdk::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **Integer** | The account number. | [optional] |
| **sub_account_number** | **Integer** | The sub-account number. | [optional] |
| **account_name** | **String** | The account name. | [optional] |
| **account_currency** | **String** | The account currency. | [optional] |
| **sub_accounts** | [**Array&lt;SubAccount&gt;**](SubAccount.md) | A list of sub-accounts. | [optional] |
| **last_credit** | [**TransactionInfo**](TransactionInfo.md) | The most recent credit transaction applied to the account. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Balance.new(
  account_number: 12345,
  sub_account_number: 12345,
  account_name: account name,
  account_currency: "USD",
  sub_accounts: [{currency=USD, amount=1500.75}],
  last_credit: null
)
```
