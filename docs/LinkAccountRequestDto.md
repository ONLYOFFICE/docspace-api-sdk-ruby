# DocspaceApiSdk::LinkAccountRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **serialized_profile** | **String** | The third-party profile in the serialized format. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LinkAccountRequestDto.new(
  serialized_profile: {"provider":"Google","id":"123456"}
)
```
