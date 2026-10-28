# DocspaceApiSdk::EntryMetadataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates** | [**Array&lt;EntryTemplateDto&gt;**](EntryTemplateDto.md) | The assigned metadata templates, each field carrying its value on the entry. | [optional] |
| **custom_fields** | [**Array&lt;CustomFieldValueDto&gt;**](CustomFieldValueDto.md) | The custom fields with their values. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EntryMetadataDto.new(
  templates: [{id=3, name=Contracts, visible=true, fields=[]}],
  custom_fields: [{name=Project code, value=A-42}]
)
```
