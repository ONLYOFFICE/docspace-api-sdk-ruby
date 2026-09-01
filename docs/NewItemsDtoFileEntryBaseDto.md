# DocspaceApiSdk::NewItemsDtoFileEntryBaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The date and time when the new item was created. |  |
| **items** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of items. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NewItemsDtoFileEntryBaseDto.new(
  date: 2025-01-01T00:00:00Z,
  items: null
)
```
