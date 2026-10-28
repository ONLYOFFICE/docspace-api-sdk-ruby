# DocspaceApiSdk::SignupAccountRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_type** | [**EmployeeType**](EmployeeType.md) | The type the invitation link is looked up as, defaulting to `RoomAdmin`. It does not decide the resulting  type: the link itself does, and this value only has to match the kind of link that was issued. | [optional] |
| **key** | **String** | The key of the invitation link being accepted, taken from the link the invitation email or the room  invitation contains. An expired or already used key is rejected with 403. |  |
| **culture** | **String** | The culture to set on the new profile, as a culture code. It is applied only when the portal has that culture  enabled, and otherwise the portal default is kept. | [optional] |
| **serialized_profile** | **String** | The profile a completed provider authorization produced, in the serialized form the login flow hands back.  Pass that value unchanged; the first name, the last name, the email and the avatar of the new profile are  taken from it. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SignupAccountRequestDto.new(
  employee_type: null,
  key: invite_key_123456,
  culture: en-US,
  serialized_profile: {"provider":"google","id":"123456"}
)
```
