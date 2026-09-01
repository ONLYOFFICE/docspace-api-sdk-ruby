# DocspaceApiSdk::StartReassignRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_user_id** | **String** | The user ID whose data will be reassigned to another user. |  |
| **to_user_id** | **String** | The user ID to whom all the data will be reassigned. |  |
| **delete_profile** | **Boolean** | Specifies whether to delete a profile when the data reassignment will be finished or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartReassignRequestDto.new(
  from_user_id: 00000000-0000-0000-0000-000000000000,
  to_user_id: 11111111-1111-1111-1111-111111111111,
  delete_profile: false
)
```
