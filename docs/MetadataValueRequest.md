# DocspaceApiSdk::MetadataValueRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** | The field ID. |  |
| **string_value** | **String** | The string value. | [optional] |
| **number_value** | **Integer** | The number value. | [optional] |
| **date_value** | **Time** | The date value. A value without a time zone offset is treated as UTC, the same way the metadata filters treat their date bounds. | [optional] |
| **option_ids** | **Array&lt;String&gt;** | The selected choice option IDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataValueRequest.new(
  field_id: 1,
  string_value: ACME Corp,
  number_value: 150000,
  date_value: 2026-06-01T00:00:00Z,
  option_ids: [4f1e2d3c-5b6a-4788-99aa-0c1d2e3f4a55]
)
```
