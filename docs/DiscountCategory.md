# DocspaceApiSdk::DiscountCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The discount category unique identifier. | [optional] |
| **value_discount** | **Float** | The discount value. | [optional] |
| **description** | **String** | The discount category description. | [optional] |
| **created** | **Time** | The date and time when the discount category was created. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DiscountCategory.new(
  id: 12345,
  value_discount: 10.5,
  description: Annual subscription discount,
  created: 2024-01-15T10:30:00Z
)
```
