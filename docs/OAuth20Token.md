# DocspaceApiSdk::OAuth20Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | Access token | [optional] |
| **refresh_token** | **String** | Refresh token | [optional] |
| **expires_in** | **Integer** | Expires in | [optional] |
| **client_id** | **String** | Client id | [optional] |
| **client_secret** | **String** | Client secret | [optional] |
| **redirect_uri** | **String** | Redirect uri | [optional] |
| **timestamp** | **Time** | Timestamp | [optional] |
| **is_expired** | **Boolean** | Is expired | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::OAuth20Token.new(
  access_token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...,
  refresh_token: def50200a1b2c3d4e5f6...,
  expires_in: 3600,
  client_id: my-client-id,
  client_secret: my-client-secret,
  redirect_uri: https://app.example.com/callback,
  timestamp: 2026-01-01T00:00:00Z,
  is_expired: false
)
```
