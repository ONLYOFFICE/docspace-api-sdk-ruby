# DocspaceApiSdk::ChatSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **String** | The instruction put in front of every conversation held in the room, which sets the role the assistant takes  and the way it answers. Empty when the room was left on the behaviour the portal provides by default. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChatSettingsDto.new(
  prompt: You are a helpful assistant for project documentation.
)
```
