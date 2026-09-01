# DocspaceApiSdk::ExchangeToken200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** | The access token issued by the authorization server. | [optional] |
| **token_type** | **String** | The type of token issued, typically 'Bearer'. | [optional] |
| **expires_in** | **Integer** | The number of seconds until the access token expires. | [optional] |
| **refresh_token** | **String** | The token used to obtain a new access token when the current one expires. | [optional] |

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
