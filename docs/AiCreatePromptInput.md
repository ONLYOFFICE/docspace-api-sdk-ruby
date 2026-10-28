# DocspaceApiSdk::AiCreatePromptInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The prompt name. |  |
| **text** | **String** | The prompt body. |  |
| **folder_id** | **String** | The folder to file the prompt under. Omit or send null to leave it outside any folder. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiCreatePromptInput.new(
  name: Contract summary,
  text: Summarise the key obligations and dates in the attached contract.,
  folder_id: 44444444-4444-4444-4444-444444444444
)
```
