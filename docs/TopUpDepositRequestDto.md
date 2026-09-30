# DocspaceApiSdk::TopUpDepositRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The sum to charge, as a whole number of units of `currency` - 10 means ten dollars and not ten cents. The  bounds are what one call may move, not what the wallet may hold, so a larger top-up is made of several calls. | [optional] |
| **currency** | **String** | The currency the charge is made in, as an ISO 4217 code in upper case. It has to be one of the accounting  currencies this installation supports, which `GET api/2.0/portal/payment/accounting/currencies` lists; any  other code is refused with 400. The money lands on the wallet sub-account of that currency, so topping up in  a second currency does not add to the first one. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TopUpDepositRequestDto.new(
  amount: 1,
  currency: USD
)
```
