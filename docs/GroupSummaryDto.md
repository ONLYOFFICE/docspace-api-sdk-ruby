# DocspaceApiSdk::GroupSummaryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **name** | **String** | The group name. |  |
| **manager** | **String** | The group manager. | [optional] |
| **is_system** | **Boolean** | Indicates whether the group is a system group. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GroupSummaryDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: Group Name,
  manager: Jake.Zazhitski,
  is_system: false
)
```
