# DocspaceApiSdk::AiMetadataValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **string_value** | **String** |  | [optional] |
| **number_value** | **Float** |  | [optional] |
| **date_value** | **String** | ISO 8601 date-time, UTC midnight of the date. | [optional] |
| **option_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMetadataValue.new(
  string_value: null,
  number_value: null,
  date_value: null,
  option_ids: null
)
```
