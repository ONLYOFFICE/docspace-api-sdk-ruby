# DocspaceApiSdk::AiProjectModelDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | ID of the AI model profile selected for the project, as listed by `GET api/2.0/ai/profiles/list`. Null when no model has been selected for the project, or the selected profile no longer exists. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProjectModelDto.new(
  profile_id: 0198c3f4-6a2e-7c41-9b8d-2f5e7a1c3d90
)
```
