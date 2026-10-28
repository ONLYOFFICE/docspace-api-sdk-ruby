# DocspaceApiSdk::AiAttachmentsSaveFileRequestInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** | Storage path/key of the file. |  |
| **content** | **String** | File contents. |  |
| **type** | **Float** | File type discriminator. |  |
| **title** | **String** | Optional display title. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAttachmentsSaveFileRequestInput.new(
  path: null,
  content: null,
  type: null,
  title: null
)
```
