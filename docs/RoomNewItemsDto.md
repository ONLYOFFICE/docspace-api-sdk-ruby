# DocspaceApiSdk::RoomNewItemsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room** | [**FileEntryBaseDto**](FileEntryBaseDto.md) |  | [optional] |
| **items** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of file entry items. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomNewItemsDto.new(
  room: null,
  items: null
)
```
