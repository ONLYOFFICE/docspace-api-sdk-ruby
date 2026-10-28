# DocspaceApiSdk::UpdateMetadataFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new field name. | [optional] |
| **type** | [**MetadataFieldType**](MetadataFieldType.md) | The new field type. The type can be changed only while the field has no values. | [optional] |
| **options** | [**Array&lt;MetadataFieldOptionRequest&gt;**](MetadataFieldOptionRequest.md) | The new choice options of the field. The options in use cannot be removed. | [optional] |
| **order** | **Integer** | The new display position of the field inside the template: the fields are shown by it ascending. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateMetadataFieldRequest.new(
  name: Contract number,
  type: null,
  options: [{id=4f1e2d3c-5b6a-4788-99aa-0c1d2e3f4a55, value=Red}, {value=Green}],
  order: 1
)
```
