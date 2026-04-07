# DocspaceApiSdk::ActiveConnectionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_event** | **Integer** | The login event. |  |
| **items** | [**Array&lt;ActiveConnectionsItemDto&gt;**](ActiveConnectionsItemDto.md) | The list of active connection items. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActiveConnectionsDto.new(
  login_event: 1,
  items: [{"id":"conn1","ip":"192.168.1.1"}]
)
```
