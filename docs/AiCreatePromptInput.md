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
  name: null,
  text: null,
  folder_id: null
)
```
