# DocspaceApiSdk::DefaultTemplateSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_file** | [**DefaultTemplateSettingsRequestDtoSelectedFile**](DefaultTemplateSettingsRequestDtoSelectedFile.md) |  |  |
| **file_extension** | **String** | File extension of a template to replace |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultTemplateSettingsRequestDto.new(
  selected_file: null,
  file_extension: .docx
)
```
