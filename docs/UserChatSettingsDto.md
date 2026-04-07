# DocspaceApiSdk::UserChatSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_search_enabled** | **Boolean** | Indicates whether the AI assistant is allowed to perform web searches when generating responses in this room. | [optional] |
| **reasoning_effort** | [**ChatReasoningEffort**](ChatReasoningEffort.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UserChatSettingsDto.new(
  web_search_enabled: true,
  reasoning_effort: null
)
```
