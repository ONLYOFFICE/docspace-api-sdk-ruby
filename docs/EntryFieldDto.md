# DocspaceApiSdk::EntryFieldDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The field ID. | [optional] |
| **name** | **String** | The field name. | [optional] |
| **type** | [**MetadataFieldType**](MetadataFieldType.md) | The field type. | [optional] |
| **options** | [**Array&lt;MetadataFieldOptionDto&gt;**](MetadataFieldOptionDto.md) | The choice options of the field. | [optional] |
| **order** | **Integer** | The field display order inside the template. | [optional] |
| **value** | [**MetadataValueDto**](MetadataValueDto.md) | The value of the field on the entry, or `null` when the entry holds no value for it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EntryFieldDto.new(
  id: 9,
  name: Customer,
  type: null,
  options: [{id=4f1e2d3c-5b6a-4788-99aa-0c1d2e3f4a55, value=Red}],
  order: 0,
  value: null
)
```
