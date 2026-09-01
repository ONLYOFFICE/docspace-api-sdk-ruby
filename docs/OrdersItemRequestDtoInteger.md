# DocspaceApiSdk::OrdersItemRequestDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **Integer** | The entry unique identifier (file or folder). |  |
| **entry_type** | [**FileEntryType**](FileEntryType.md) | The entry type (file or folder). |  |
| **order** | **Integer** | The order value. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrdersItemRequestDtoInteger.new(
  entry_id: 1,
  entry_type: null,
  order: 1
)
```
