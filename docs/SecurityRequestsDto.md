# DocspaceApiSdk::SecurityRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The product ID for which permissions are being set. |  |
| **user_id** | **String** | The ID of the user whose permissions are being configured. |  |
| **administrator** | **Boolean** | Specifies whether the user has administrative privileges. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityRequestsDto.new(
  product_id: 00000000-0000-0000-0000-000000000000,
  user_id: 00000000-0000-0000-0000-000000000000,
  administrator: true
)
```
