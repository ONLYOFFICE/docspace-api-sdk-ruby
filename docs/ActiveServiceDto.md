# DocspaceApiSdk::ActiveServiceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The name of the service. | [optional] |
| **service_unit** | **String** | The unit of measurement for the service. | [optional] |
| **subscription** | **Boolean** | Indicates whether the service is subscription-based. | [optional] |
| **title** | **String** | The title of the service. | [optional] |
| **limit** | **Integer** | The service limit. Populated only for the subscription-based services. | [optional] |
| **used** | **Integer** | The current service usage. Populated only for the subscription-based services. | [optional] |

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
