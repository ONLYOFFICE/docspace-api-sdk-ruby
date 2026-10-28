# DocspaceApiSdk::AiAgentNewItemsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | [**AiFileEntryBaseDto**](AiFileEntryBaseDto.md) | The agent file entry. |  |
| **items** | [**Array&lt;AiFileEntryBaseDto&gt;**](AiFileEntryBaseDto.md) | The list of file entry items. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAgentNewItemsDto.new(
  agent: null,
  items: null
)
```
