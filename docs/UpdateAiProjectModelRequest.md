# DocspaceApiSdk::UpdateAiProjectModelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the AI model profile that answers in the project's chat; take it from the `id` of a profile that `GET api/2.0/ai/profiles/list` returns. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateAiProjectModelRequest.new(
  profile_id: 0198c3f4-6a2e-7c41-9b8d-2f5e7a1c3d90
)
```
