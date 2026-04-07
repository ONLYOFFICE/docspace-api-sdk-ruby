# DocspaceApiSdk::FormsItemData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The form data key. | [optional] |
| **tag** | **String** | The form data tag. | [optional] |
| **value** | **String** | The form data value. | [optional] |
| **type** | **String** | The form data type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FormsItemData.new(
  key: first_name,
  tag: personal_info,
  value: John,
  type: text
)
```
