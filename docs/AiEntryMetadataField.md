# DocspaceApiSdk::AiEntryMetadataField

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** |  |  |
| **name** | **String** |  |  |
| **type** | **Float** | `MetadataFieldType`: 0 String, 1 Date, 2 Number, 3 SingleChoice, 4 MultiChoice. |  |
| **options** | [**Array&lt;AiEntryMetadataFieldOptionsInner&gt;**](AiEntryMetadataFieldOptionsInner.md) |  |  |
| **value** | [**AiMetadataValue**](AiMetadataValue.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEntryMetadataField.new(
  id: null,
  name: null,
  type: null,
  options: null,
  value: null
)
```
