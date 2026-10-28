# DocspaceApiSdk::CustomerServiceUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The stable key of the service, which is what the `serviceName` filter of this operation matches on and  what `GET api/2.0/portal/payment/walletservice` looks a service up by. | [optional] |
| **title** | **String** | The service name in the portal language, for printing rather than matching. | [optional] |
| **service_unit** | **String** | What `totalQuantity` counts, in the portal language. AI consumption is reported in tokens here rather  than in the AI credits the service is sold in, so it does not line up with the price list. | [optional] |
| **currency** | **String** | The currency `totalAmount` and `price` are expressed in, as a three-letter ISO 4217 code. | [optional] |
| **total_quantity** | **Integer** | How many units of the service were consumed over the period, in the unit named by `serviceUnit`. | [optional] |
| **total_amount** | **Float** | What that consumption cost over the period. It is what was actually charged, so it can differ from  `price` times `totalQuantity` when the price changed inside the period. | [optional] |
| **operation_count** | **Integer** | How many separate charges the total was added up from. The charges themselves are in  `GET api/2.0/portal/payment/customer/operations`. | [optional] |
| **price** | **Float** | What one unit of the service costs today, not what it cost during the period. It is `0` when the service  is no longer on the installation's price list. | [optional] |
| **subscription** | **Boolean** | Whether the service is billed as a standing subscription rather than per unit consumed. It is derived  from today's price list, so it describes the service as it is sold now. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerServiceUsageDto.new(
  service: disk-storage,
  title: Additional disk storage,
  service_unit: GB,
  currency: USD,
  total_quantity: 100,
  total_amount: 49.99,
  operation_count: 2,
  price: 0.14,
  subscription: true
)
```
