# DocspaceApiSdk::SecurityDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_item_id** | **String** | The module ID. | [optional] |
| **users** | [**Array&lt;EmployeeDto&gt;**](EmployeeDto.md) | The list of users with the access to the module. | [optional] |
| **groups** | [**Array&lt;GroupSummaryDto&gt;**](GroupSummaryDto.md) | The list of groups with the access to the module. | [optional] |
| **enabled** | **Boolean** | Specifies if the security settings are enabled or not. | [optional] |
| **is_sub_item** | **Boolean** | Specifies if the module is a subitem or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SecurityDto.new(
  web_item_id: 00000000-0000-0000-0000-000000000000,
  users: [{displayName=John Doe}],
  groups: [{id=00000000-0000-0000-0000-000000000000, name=Administrators}],
  enabled: true,
  is_sub_item: true
)
```
