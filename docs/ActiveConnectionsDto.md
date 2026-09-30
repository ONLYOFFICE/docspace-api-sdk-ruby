# DocspaceApiSdk::ActiveConnectionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_event** | **Integer** | The `id` of the item in `items` that the current request is authenticated by. It is `0` when the request  carried a token in the `Authorization` header instead of the portal cookie, and in that case none of the  items is the current connection. |  |
| **items** | [**Array&lt;ActiveConnectionsItemDto&gt;**](ActiveConnectionsItemDto.md) | One item per sign-in of the caller that is still active, ordered newest sign-in first, with the connection  the request itself uses moved to the front. Sign-ins older than a year are left out, and a caller with no  stored connection gets a single item describing the current request rather than an empty list. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActiveConnectionsDto.new(
  login_event: 1,
  items: [{id=1234, ip=192.0.2.1}]
)
```
