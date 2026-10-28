# DocspaceApiSdk::LinkAccountRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **serialized_profile** | **String** | The profile a completed provider authorization produced, in the serialized form the login flow hands back.  Pass that value unchanged; it carries the provider, the third-party account ID and the authorization result,  and a hand-written object is not accepted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LinkAccountRequestDto.new(
  serialized_profile: {"provider":"google","id":"123456"}
)
```
