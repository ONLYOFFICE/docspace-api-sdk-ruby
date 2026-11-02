# DocspaceApiSdk::AiProjectModelProfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The profile id. |  |
| **name** | **String** | The profile name; empty when the profile is gone. |  |
| **provider** | **String** | The provider type of the profile; `null` when the profile is gone. |  |
| **available** | **Boolean** | `false` when the profile is gone or cannot chat: the project's rounds are refused. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProjectModelProfile.new(
  id: null,
  name: null,
  provider: null,
  available: null
)
```
