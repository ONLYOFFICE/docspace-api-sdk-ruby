# DocspaceApiSdk::MigratingApiUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **should_import** | **Boolean** |  | [optional] |
| **key** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **user_type** | [**EmployeeType**](EmployeeType.md) |  | [optional] |
| **migrating_files** | [**MigratingApiFiles**](MigratingApiFiles.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigratingApiUser.new(
  should_import: null,
  key: null,
  email: null,
  display_name: null,
  first_name: null,
  last_name: null,
  user_type: null,
  migrating_files: null
)
```
