# DocspaceApiSdk::NewItemsDtoFileEntryBaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | [**ApiDateTime**](ApiDateTime.md) | The day the grouped entries were last changed, written with the offset of the portal time zone. The time part  is the moment of the newest entry of the group. |  |
| **items** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | What changed on that day, the most recent first. Folders are left out of it, so an entry here is always a file  or a room that holds them. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NewItemsDtoFileEntryBaseDto.new(
  date: null,
  items: null
)
```
