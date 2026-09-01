# DocspaceApiSdk::AiPrompt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique prompt identifier (UUID). |  |
| **name** | **String** | Prompt display name shown in the prompt picker. |  |
| **text** | **String** | Prompt template text. May contain placeholder tokens. |  |
| **folder_id** | **String** | Optional parent folder ID. `undefined` means the prompt is at the root level. | [optional] |
| **created_at** | **Float** | Timestamp (ms since epoch) when the prompt was created. |  |
| **updated_at** | **Float** | Timestamp (ms since epoch) of the last prompt modification. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPrompt.new(
  id: null,
  name: null,
  text: null,
  folder_id: null,
  created_at: null,
  updated_at: null
)
```
