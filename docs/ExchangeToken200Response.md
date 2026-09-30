# DocspaceApiSdk::ExchangeToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The token to send as a Bearer credential when calling the portal on the user behalf. | [optional] |
| **token_type** | **String** | How the access token is to be presented. It is always Bearer. | [optional] |
| **expires_in** | **Integer** | How many seconds the access token stays valid, counted from the moment it was issued. | [optional] |
| **refresh_token** | **String** | The token that buys a new access token once the current one expires. It is present only when the client is registered for the refresh token grant. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExchangeToken200Response.new(
  access_token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...,
  token_type: Bearer,
  expires_in: 3600,
  refresh_token: def502...
)
```
