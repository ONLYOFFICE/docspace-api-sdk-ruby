# DocspaceApiSdk::AgentNewItemsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**FileEntryBaseDto**](FileEntryBaseDto.md) |  |  |
| **items** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of file entry items. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AgentNewItemsDto.new(
  agent: null,
  items: null
)
```
