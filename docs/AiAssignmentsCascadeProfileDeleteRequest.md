# DocspaceApiSdk::AiAssignmentsCascadeProfileDeleteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile whose assignments are removed. May be sent as the `profileId` query parameter instead of in the body. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAssignmentsCascadeProfileDeleteRequest.new(
  profile_id: 00000000-0000-0000-0000-000000000000
)
```
