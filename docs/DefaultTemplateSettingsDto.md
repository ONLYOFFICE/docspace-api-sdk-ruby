# DocspaceApiSdk::DefaultTemplateSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;DefaultTemplateItemDto&gt;**](DefaultTemplateItemDto.md) | Default templates list. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DefaultTemplateSettingsDto.new(
  items: [{extension=.docx, title=Blank Document}]
)
```
