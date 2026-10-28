# DocspaceApiSdk::ActiveConnectionsItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the sign-in this connection was opened by. Pass it as `loginEventId` to  `PUT api/2.0/security/activeconnections/logout/{loginEventId}` to end this one connection; the item whose  value equals `loginEvent` is the connection the current request uses. |  |
| **tenant_id** | **Integer** | The portal the sign-in was made on. The operation never crosses portals, so it is the current one on every  item. |  |
| **user_id** | **String** | The user the connection belongs to, which is the calling user on every item - the operation cannot report  anyone else's connections. |  |
| **mobile** | **Boolean** | Whether the sign-in came from a mobile client. No mobile marker is stored with a connection, so the value  is `false` on every item and tells a caller nothing about the device. | [optional] |
| **ip** | **String** | The IP address the sign-in came from, with the port stripped off. On the item that matches `loginEvent` it  is taken from the address the current request arrives from instead of the one stored at sign-in. | [optional] |
| **country** | **String** | The English name of the country the IP address is located in. It is empty when the address cannot be  located, which is the normal outcome for private and loopback addresses. | [optional] |
| **city** | **String** | The city the IP address is located in, empty under the same conditions as `country`. | [optional] |
| **browser** | **String** | The browser and its version as parsed from the user agent of the sign-in, empty when the client sent no  recognisable one. It is refreshed from the current request on the item that matches `loginEvent`. | [optional] |
| **platform** | **String** | The operating system as parsed from the user agent of the sign-in, refreshed and left empty under the same  conditions as `browser`. | [optional] |
| **date** | [**ApiDateTime**](ApiDateTime.md) | When the sign-in happened, in the portal time zone rather than in UTC. | [optional] |
| **page** | **String** | Where in the portal the sign-in was made from: the referrer of the request that created it, or that  request's own path when it carried no referrer. Long values are cut off at 512 characters. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActiveConnectionsItemDto.new(
  id: 1,
  tenant_id: 1,
  user_id: 00000000-0000-0000-0000-000000000000,
  mobile: true,
  ip: 192.0.2.1,
  country: United States,
  city: New York,
  browser: Chrome 120.0,
  platform: Windows,
  date: null,
  page: /rooms/shared
)
```
