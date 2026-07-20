# DocspaceApiSdk::MemberRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The user password. | [optional] |
| **password_hash** | **String** | The user password hash. | [optional] |
| **email** | **String** | The user email address. | [optional] |
| **type** | [**EmployeeType**](EmployeeType.md) |  | [optional] |
| **is_user** | **Boolean** | Specifies if this is a guest or a user. | [optional] |
| **first_name** | **String** | The user first name. | [optional] |
| **last_name** | **String** | The user last name. | [optional] |
| **department** | **Array&lt;String&gt;** | The list of the user departments IDs. | [optional] |
| **location** | **String** | The user location. | [optional] |
| **comment** | **String** | The user comment. | [optional] |
| **contacts** | [**Array&lt;Contact&gt;**](Contact.md) | The list of the user contacts. | [optional] |
| **files** | **String** | The avatar photo URL. | [optional] |
| **from_invite_link** | **Boolean** | Specifies if the user is added via the invitation link or not. | [optional] |
| **key** | **String** | The user key. | [optional] |
| **culture_name** | **String** | The user culture code. | [optional] |
| **target** | **String** | The user target ID. | [optional] |
| **spam** | **Boolean** | Specifies if tips, updates and offers are allowed to be sent to the user or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MemberRequestDto.new(
  password: P@ssw0rd,
  password_hash: 5f4dcc3b5aa765d61d8327deb882cf99,
  email: john.doe@example.com,
  type: null,
  is_user: true,
  first_name: John,
  last_name: Doe,
  department: ["00000000-0000-0000-0000-000000000000"],
  location: New York,
  comment: User comment,
  contacts: [{"type":"email","value":"john.doe@example.com"}],
  files: https://example.com/avatar.jpg,
  from_invite_link: false,
  key: user_key_string,
  culture_name: en-US,
  target: 00000000-0000-0000-0000-000000000000,
  spam: false
)
```
