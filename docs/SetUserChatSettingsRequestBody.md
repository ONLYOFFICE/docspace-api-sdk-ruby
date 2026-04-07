# DocspaceApiSdk::SetUserChatSettingsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_search_enabled** | **Boolean** | Indicates whether the AI assistant is allowed to perform web searches when generating responses. | [optional] |
| **reasoning_effort** | [**ChatReasoningEffort**](ChatReasoningEffort.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetUserChatSettingsRequestBody.new(
  web_search_enabled: true,
  reasoning_effort: null
)
```
