# DocspaceApiSdk::CustomFieldValueDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The field name. | [optional] |
| **value** | **String** | The field value on the entry. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomFieldValueDto.new(
  name: Project code,
  value: A-42
)
```
