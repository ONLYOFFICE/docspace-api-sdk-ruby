# DocspaceApiSdk::OrdersItemRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **Integer** | The file or folder to move. |  |
| **entry_type** | [**FileEntryType**](FileEntryType.md) | Which of the two the identifier names, because a file and a folder may carry the same number. |  |
| **order** | **Integer** | The position the entry is to take, counting from 1. The entry that held it, and everything after it, is  shifted to make room. A dotted path such as 1.2.3 is accepted as well, of which only the last segment is  read. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OrdersItemRequestDto.new(
  entry_id: 1,
  entry_type: null,
  order: 1
)
```
