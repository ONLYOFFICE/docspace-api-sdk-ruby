# DocspaceApiSdk::AiAgentsGet200ResponseAllOfResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI profile bound to this agent, added by this service on top of what the internal service returns. Absent when the agent has no profile assigned. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAgentsGet200ResponseAllOfResponse.new(
  profile_id: 00000000-0000-0000-0000-000000000000
)
```
