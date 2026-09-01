# DocspaceApiSdk::RoomSecurityDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **members** | [**Array&lt;FileShareDto&gt;**](FileShareDto.md) | The list of room members. | [optional] |
| **warning** | **String** | The warning message. | [optional] |
| **error** | [**RoomSecurityError**](RoomSecurityError.md) | The error type. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomSecurityDto.new(
  members: [{access=1, isOwner=false}],
  warning: Warning message,
  error: null
)
```
