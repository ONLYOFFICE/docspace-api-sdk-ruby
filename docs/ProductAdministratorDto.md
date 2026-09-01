# DocspaceApiSdk::ProductAdministratorDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | The product ID. |  |
| **user_id** | **String** | The user unique identifier. |  |
| **administrator** | **Boolean** | Indicates whether the user has administrator privileges for the product. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ProductAdministratorDto.new(
  product_id: 00000000-0000-0000-0000-000000000000,
  user_id: 00000000-0000-0000-0000-000000000000,
  administrator: true
)
```
