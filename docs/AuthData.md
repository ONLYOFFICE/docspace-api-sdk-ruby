# DocspaceApiSdk::AuthData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** | The account name at the storage service. | [optional] |
| **password** | **String** | The password of the account at the storage service. | [optional] |
| **raw_token** | **String** | The token of the account, kept as the raw JSON document the storage service issued it in. | [optional] |
| **url** | **String** | The address of the storage server the account lives on. | [optional] |
| **provider** | **String** | The storage service the credentials belong to, as the provider key the account was connected with. | [optional] |
| **token** | [**OAuth20Token**](OAuth20Token.md) | The same token as in `rawToken`, parsed into its OAuth 2.0 fields. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthData.new(
  login: user@example.com,
  password: p@ssw0rd!,
  raw_token: {"access_token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...","expires_in":3600},
  url: https://cloud.example.com/remote.php/dav/files/admin/,
  provider: WebDav,
  token: null
)
```
