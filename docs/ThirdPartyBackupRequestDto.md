# DocspaceApiSdk::ThirdPartyBackupRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The connection URL for the sharepoint. | [optional] |
| **login** | **String** | The login. | [optional] |
| **password** | **String** | The password. | [optional] |
| **token** | **String** | The authentication token. | [optional] |
| **customer_title** | **String** | The customer title. | [optional] |
| **provider_key** | **String** | The provider key. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyBackupRequestDto.new(
  url: https://sharepoint.example.com,
  login: admin,
  password: P@ssw0rd,
  token: abc123def456,
  customer_title: My Cloud Storage,
  provider_key: SharePoint
)
```
