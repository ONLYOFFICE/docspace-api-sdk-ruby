# DocspaceApiSdk::AiProjectSourcesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instructions_rooms** | [**Array&lt;AiProjectSourceDto&gt;**](AiProjectSourceDto.md) | Linked Instructions rooms, sorted by title. |  |
| **knowledge_rooms** | [**Array&lt;AiProjectSourceDto&gt;**](AiProjectSourceDto.md) | Linked Knowledge rooms, sorted by title. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProjectSourcesDto.new(
  instructions_rooms: [{id=17001, title=Brand voice}],
  knowledge_rooms: [{id=17020, title=Product catalogue}]
)
```
