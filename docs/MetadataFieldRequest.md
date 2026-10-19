# DocspaceApiSdk::MetadataFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The field name. | [optional] |
| **type** | [**MetadataFieldType**](MetadataFieldType.md) | The field type. | [optional] |
| **options** | [**Array&lt;MetadataFieldOptionRequest&gt;**](MetadataFieldOptionRequest.md) | The choice options of the field. | [optional] |
| **order** | **Integer** | The display position of the field inside the template: the fields are shown by it ascending, and equal positions  keep the order of creation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataFieldRequest.new(
  name: Contract number,
  type: null,
  options: [{value=Red}, {value=Green}],
  order: 1
)
```
