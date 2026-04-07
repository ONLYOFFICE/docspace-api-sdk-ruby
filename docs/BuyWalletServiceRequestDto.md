# DocspaceApiSdk::BuyWalletServiceRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | Number of services provided. | [optional] |
| **service_name** | **String** | The service name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BuyWalletServiceRequestDto.new(
  quantity: 1,
  service_name: backup
)
```
