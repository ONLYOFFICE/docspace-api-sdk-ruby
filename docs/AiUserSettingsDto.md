# DocspaceApiSdk::AiUserSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_recommended_model_visible** | **Boolean** | Indicates whether the recommended model banner is visible in the AI chat for the current user. | [optional] |
| **tool_permission_mode** | [**AiToolPermissionMode**](AiToolPermissionMode.md) | How tool calls made by the model are approved for the current user. The default applies while the user has stored nothing. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiUserSettingsDto.new(
  chat_recommended_model_visible: true,
  tool_permission_mode: null
)
```
