# DocspaceApiSdk::AiPromptBundle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Float** | The bundle format version, so an import can migrate an older export. |  |
| **folders** | [**Array&lt;AiPromptFolder&gt;**](AiPromptFolder.md) | Every exported prompt folder. |  |
| **prompts** | [**Array&lt;AiPrompt&gt;**](AiPrompt.md) | Every exported prompt. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPromptBundle.new(
  version: null,
  folders: null,
  prompts: null
)
```
