# DocspaceApiSdk::ActiveServiceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The stable key of the service, which is what `POST api/2.0/portal/payment/servicestate` takes to switch  it off again. | [optional] |
| **service_unit** | **String** | What `limit` and `used` count, in the portal language - gigabytes, editor seats, credits. | [optional] |
| **subscription** | **Boolean** | Whether the service is billed as a standing subscription rather than per unit consumed. Only a  subscription can carry `limit` and `used`. | [optional] |
| **title** | **String** | The service name in the portal language, for printing rather than matching. | [optional] |
| **limit** | **Integer** | How much of the service the portal is entitled to. It is empty for a service whose consumption is not  counted this way, which is not the same as a service without a limit. | [optional] |
| **used** | **Integer** | How much of that allowance is in use - the editors currently active for the cloud editors, the units  already consumed for disk storage. Empty under the same conditions as `limit`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActiveServiceDto.new(
  service: disk-storage,
  service_unit: GB,
  subscription: true,
  title: Additional disk storage,
  limit: 500,
  used: 320
)
```
