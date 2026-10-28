# DocspaceApiSdk::SecurityDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_item_id** | **String** | The module this entry is about, echoed from the identifier that was asked about. When several identifiers  are asked about at once, entries come back one per identifier and in the order they were sent, so they can  also be matched by position. | [optional] |
| **users** | [**Array&lt;EmployeeDto&gt;**](EmployeeDto.md) | The individual members the rule was stored for. Members the caller is not allowed to see are left out, so  the same module can come back with different lists for different callers and an empty list does not prove  that nobody was granted access. | [optional] |
| **groups** | [**Array&lt;GroupSummaryDto&gt;**](GroupSummaryDto.md) | The groups the rule was stored for, listed in full - unlike `users`, nothing is filtered out of it. | [optional] |
| **enabled** | **Boolean** | Whether access to the module is restricted to the subjects listed here. It is `false` for a module nobody  has ever configured, in which case the two lists say nothing about who may open it. | [optional] |
| **is_sub_item** | **Boolean** | Whether the module hangs under another one rather than standing on its own. A sub-module is never returned  by `GET api/2.0/settings/security/modules`, which lists top-level modules only. | [optional] |

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
