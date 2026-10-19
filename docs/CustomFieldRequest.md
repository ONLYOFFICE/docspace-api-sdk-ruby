# DocspaceApiSdk::CustomFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The field name. The names are matched without regard to case. |  |
| **value** | **String** | The field value. Null or empty removes the field from the entry. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomFieldRequest.new(
  name: Project code,
  value: A-42
)
```
