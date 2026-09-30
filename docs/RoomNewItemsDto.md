# DocspaceApiSdk::RoomNewItemsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room** | [**FileEntryBaseDto**](FileEntryBaseDto.md) | The room the entries were found in, in its short form: only the identifier, the title, the room type and the  logo are filled in. | [optional] |
| **items** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The files of that room the caller has not opened yet, the most recently changed first. Reading them here does  not clear the badges; opening the room itself does. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomNewItemsDto.new(
  room: null,
  items: null
)
```
