# DocspaceApiSdk::SetAiUserSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_recommended_model_visible** | **Boolean** | Indicates whether the recommended model banner is visible in the AI chat. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetAiUserSettingsRequestDto.new(
  chat_recommended_model_visible: true
)
```
