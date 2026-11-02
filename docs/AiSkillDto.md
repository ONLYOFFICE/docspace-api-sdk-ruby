# DocspaceApiSdk::AiSkillDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the skill file. |  |
| **name** | **String** | Skill name from the frontmatter. |  |
| **description** | **String** | Skill description from the frontmatter. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSkillDto.new(
  id: 9911,
  name: brand-voice,
  description: Writes marketing texts in the brand voice.
)
```
