# DocspaceApiSdk::MigratingApiUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **should_import** | **Boolean** | Specifies whether the API entity should be imported. | [optional] |
| **key** | **String** | The user key. | [optional] |
| **email** | **String** | The user email. | [optional] |
| **display_name** | **String** | The user display name. | [optional] |
| **first_name** | **String** | The user first name. | [optional] |
| **last_name** | **String** | The user last name. | [optional] |
| **user_type** | [**EmployeeType**](EmployeeType.md) | The user type. | [optional] |
| **migrating_files** | [**MigratingApiFiles**](MigratingApiFiles.md) | The user's migrating files. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigratingApiUser.new(
  should_import: true,
  key: abcd1234,
  email: john.doe@example.com,
  display_name: John Doe,
  first_name: John,
  last_name: Doe,
  user_type: null,
  migrating_files: null
)
```
