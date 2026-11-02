# DocspaceApiSdk::AiSkillsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms** | [**Array&lt;AiSkillsRoomDto&gt;**](AiSkillsRoomDto.md) | The rooms, sorted by title. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSkillsDto.new(
  rooms: [{id=17001, title=Brand voice, skills=[]}]
)
```
