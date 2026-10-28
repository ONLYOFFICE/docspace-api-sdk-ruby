# DocspaceApiSdk::AiPreferencesSetToolPermissionModeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**AiChatToolPermissionMode**](AiChatToolPermissionMode.md) | New tool permission mode. |  |
| **entity_id** | **String** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPreferencesSetToolPermissionModeRequest.new(
  value: null,
  entity_id: null
)
```
