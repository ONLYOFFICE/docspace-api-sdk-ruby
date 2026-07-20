# DocspaceApiSdk::UpdateMemberRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID. | [optional] |
| **disable** | **Boolean** | Specifies whether to disable a user or not. | [optional] |
| **email** | **String** | The user email address. | [optional] |
| **is_user** | **Boolean** | Specifies if this is a guest or a user. | [optional] |
| **first_name** | **String** | The user first name. | [optional] |
| **last_name** | **String** | The user last name. | [optional] |
| **department** | **Array&lt;String&gt;** | The list of the user departments. | [optional] |
| **location** | **String** | The user location. | [optional] |
| **comment** | **String** | The user comment. | [optional] |
| **contacts** | [**Array&lt;Contact&gt;**](Contact.md) | The list of the user contacts. | [optional] |
| **files** | **String** | The user avatar photo URL. | [optional] |
| **spam** | **Boolean** | Specifies if tips, updates and offers are allowed to be sent to the user or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMemberRequestDto.new(
  user_id: 00000000-0000-0000-0000-000000000000,
  disable: false,
  email: john.doe@example.com,
  is_user: true,
  first_name: John,
  last_name: Doe,
  department: ["00000000-0000-0000-0000-000000000000"],
  location: New York,
  comment: User comment,
  contacts: [{"type":"email","value":"john.doe@example.com"}],
  files: https://example.com/avatar.jpg,
  spam: false
)
```
