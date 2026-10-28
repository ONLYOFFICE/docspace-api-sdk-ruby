# DocspaceApiSdk::SocketSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The base address of the Socket.IO hub that pushes file changes, presence and quota alerts, always with a  trailing slash. It is empty when the installation runs no hub, and a client must then fall back to  polling rather than guessing an address. The value comes from the installation's configuration and cannot  be changed through this API. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SocketSettingsDto.new(
  url: https://example.com/socket.io/
)
```
