# DocspaceApiSdk::OAuth20Token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The token sent to the provider with every request made on behalf of the account. | [optional] |
| **refresh_token** | **String** | The token used to obtain a new access token when the current one expires. A provider that issues no refresh  token leaves it empty, and the account then has to be connected again to keep working. | [optional] |
| **expires_in** | **Integer** | How long the access token stays usable, in seconds counted from `timestamp`. Zero means the provider did not  say, and the token is then treated as expired. | [optional] |
| **client_id** | **String** | The OAuth 2.0 client ID of the application the token was issued to. | [optional] |
| **client_secret** | **String** | The client secret of the application the token was issued to, needed when the token is refreshed. | [optional] |
| **redirect_uri** | **String** | The redirect URL the authorization code behind this token was obtained with; providers require the same value  again when the token is refreshed. | [optional] |
| **timestamp** | **Time** | When the token was issued, in UTC. This is the point `expires_in` is counted from. | [optional] |
| **is_expired** | **Boolean** | Whether the access token can no longer be used and has to be refreshed. It is also true when the provider did  not say how long the token lives. | [optional][readonly] |

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
