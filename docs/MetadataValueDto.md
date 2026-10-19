# DocspaceApiSdk::MetadataValueDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **string_value** | **String** | The string value. | [optional] |
| **number_value** | **Integer** | The number value. | [optional] |
| **date_value** | [**ApiDateTime**](ApiDateTime.md) | The date value. | [optional] |
| **option_ids** | **Array&lt;String&gt;** | The selected choice option IDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::MetadataValueDto.new(
  string_value: ACME Corp,
  number_value: 150000,
  date_value: null,
  option_ids: [4f1e2d3c-5b6a-4788-99aa-0c1d2e3f4a55]
)
```
