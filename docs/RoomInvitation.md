# DocspaceApiSdk::RoomInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address. | [optional] |
| **id** | **String** | The ID of the user to share a room with. | [optional] |
| **access** | [**FileShare**](FileShare.md) | The room sharing rights. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomInvitation.new(
  email: user@example.com,
  id: 00000000-0000-0000-0000-000000000000,
  access: null
)
```
