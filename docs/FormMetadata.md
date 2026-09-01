# DocspaceApiSdk::FormMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The form field key. | [optional] |
| **type** | **String** | The form field type. | [optional] |
| **format** | **String** | The form field format. | [optional] |
| **possible_values** | **Array&lt;String&gt;** | The list of possible values for the form field. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormMetadata.new(
  key: name,
  type: text,
  format: date,
  possible_values: []
)
```
