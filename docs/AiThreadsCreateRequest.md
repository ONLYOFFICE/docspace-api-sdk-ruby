# DocspaceApiSdk::AiThreadsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Thread title. |  |
| **profile_id** | **String** | Optional profile to bind. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadsCreateRequest.new(
  title: null,
  profile_id: null,
  entity_id: null
)
```
