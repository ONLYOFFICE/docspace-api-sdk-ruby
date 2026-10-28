# DocspaceApiSdk::MigratingApiGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **should_import** | **Boolean** | Specifies whether the API entity should be imported. | [optional] |
| **group_name** | **String** | The group name. | [optional] |
| **module_name** | **String** | The group module name. | [optional] |
| **user_uid_list** | **Array&lt;String&gt;** | The list of group user UIDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MigratingApiGroup.new(
  should_import: true,
  group_name: Marketing Team,
  module_name: Projects,
  user_uid_list: [user1-uid, user2-uid]
)
```
