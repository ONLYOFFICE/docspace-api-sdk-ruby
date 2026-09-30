# DocspaceApiSdk::OrdersRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;OrdersItemRequestDto&gt;**](OrdersItemRequestDto.md) | The entries to move, applied one after another in the order they are sent, so each of them shifts the  neighbours the ones before it left behind. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrdersRequestDto.new(
  items: [{entryId=1, entryType=2, order=1}, {entryId=4, entryType=1, order=2}]
)
```
