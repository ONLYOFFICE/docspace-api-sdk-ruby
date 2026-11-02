# DocspaceApiSdk::AiSkillsRoomDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the room. |  |
| **title** | **String** | Room title. |  |
| **logo** | [**LogoDto**](LogoDto.md) | Room logo. |  |
| **skills** | [**Array&lt;AiSkillDto&gt;**](AiSkillDto.md) | Skills of the room, sorted by file title. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSkillsRoomDto.new(
  id: 17001,
  title: Brand voice,
  logo: null,
  skills: [{id=9911, name=brand-voice, description=Writes marketing texts in the brand voice.}]
)
```
