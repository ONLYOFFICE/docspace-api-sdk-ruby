# DocspaceApiSdk::ActiveConnectionsItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The active connection ID. |  |
| **tenant_id** | **Integer** | The tenant ID. |  |
| **user_id** | **String** | The user ID. |  |
| **mobile** | **Boolean** | Specifies if the active connection has a mobile phone or not. | [optional] |
| **ip** | **String** | The IP address of the active connection. | [optional] |
| **country** | **String** | The active connection country. | [optional] |
| **city** | **String** | The active connection city. | [optional] |
| **browser** | **String** | The active connection browser. | [optional] |
| **platform** | **String** | The active connection platform. | [optional] |
| **date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **page** | **String** | The active connection page. | [optional] |

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
