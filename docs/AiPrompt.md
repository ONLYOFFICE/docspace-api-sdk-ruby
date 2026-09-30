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
  id: 33333333-3333-3333-3333-333333333333,
  name: Contract summary,
  text: Summarise the key obligations and dates in the attached contract.,
  folder_id: 44444444-4444-4444-4444-444444444444,
  created_at: 1767225600000,
  updated_at: 1767225600000
)
```
