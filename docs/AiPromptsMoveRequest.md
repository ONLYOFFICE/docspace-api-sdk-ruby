# DocspaceApiSdk::AiPromptsMoveRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Prompt id to move. |  |
| **folder_id** | **String** | Target folder id, or `null` for root. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPromptsMoveRequest.new(
  id: null,
  folder_id: null
)
```
