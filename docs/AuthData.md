# DocspaceApiSdk::AuthData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** | The authentication login. | [optional] |
| **password** | **String** | The authentication password. | [optional] |
| **raw_token** | **String** | The authentication raw token. | [optional] |
| **url** | **String** | The authentication URL. | [optional] |
| **provider** | **String** | The authentication provider. | [optional] |
| **token** | [**OAuth20Token**](OAuth20Token.md) | The authentication token. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthData.new(
  login: user@example.com,
  password: p@ssw0rd!,
  raw_token: {"access_token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...","expires_in":3600},
  url: https://auth.example.com,
  provider: OAuth2,
  token: null
)
```
