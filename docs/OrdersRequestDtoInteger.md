# DocspaceApiSdk::OrdersRequestDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;OrdersItemRequestDtoInteger&gt;**](OrdersItemRequestDtoInteger.md) | The list of items with their ordering information. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrdersRequestDtoInteger.new(
  items: [{"entryId":1,"order":1}]
)
```
