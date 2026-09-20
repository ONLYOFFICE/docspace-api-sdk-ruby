# DocspaceApiSdk::StartUpdateUserTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EmployeeType**](EmployeeType.md) | The type to convert the account to. Only `Guest` and `User` are accepted, because they are the types that  cannot own rooms; `RoomAdmin`, `DocSpaceAdmin` and `All` are rejected here and belong to  `PUT api/2.0/people/type/{type}`. | [optional] |
| **user_id** | **String** | The ID of the account being converted. It has to be an active account other than the caller, and only the  portal owner may pass the ID of a DocSpace administrator. | [optional] |
| **reassign_user_id** | **String** | The ID of the administrator who receives the rooms and the shared files of the converted account. It has to be  an active room admin or DocSpace admin other than the converted account, and when it is omitted the data goes  to the caller. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartUpdateUserTypeDto.new(
  type: null,
  user_id: 00000000-0000-0000-0000-000000000000,
  reassign_user_id: 11111111-1111-1111-1111-111111111111
)
```
