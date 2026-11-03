# DocspaceApiSdk::AiRoomSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The skill's ID, as `GET api/2.0/ai/context/get-room-skill` takes it. |  |
| **name** | **String** | The skill's name, from its frontmatter. |  |
| **description** | **String** | What the skill is for, from its frontmatter; empty when it declares none. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiRoomSkill.new(
  id: 5678,
  name: contract-review,
  description: How to review a supply contract.
)
```
