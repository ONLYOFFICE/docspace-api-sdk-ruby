# DocspaceApiSdk::OAuth20Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **client_id** | **String** |  | [optional] |
| **client_secret** | **String** |  | [optional] |
| **redirect_uri** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **is_expired** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OAuth20Token.new(
  access_token: null,
  refresh_token: null,
  expires_in: null,
  client_id: null,
  client_secret: null,
  redirect_uri: null,
  timestamp: null,
  is_expired: null
)
```
