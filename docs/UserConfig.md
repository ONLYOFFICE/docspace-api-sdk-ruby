# DocspaceApiSdk::UserConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user ID. | [optional] |
| **name** | **String** | The full name of the user. | [optional] |
| **image** | **String** | The path to the user's avatar. | [optional] |
| **roles** | **Array&lt;String&gt;** | Roles | [optional] |
| **customer_id** | **String** | Customer identifier associated with the user. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserConfig.new(
  id: user_0001,
  name: John Doe,
  image: https://portal.example.com/avatar/user_0001.png,
  roles: [admin, editor],
  customer_id: cust_001
)
```
