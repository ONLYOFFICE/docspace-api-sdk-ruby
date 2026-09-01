# DocspaceApiSdk::ThirdPartyRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The connection URL for the sharepoint. | [optional] |
| **login** | **String** | The third-party request login. | [optional] |
| **password** | **String** | The third-party request password. | [optional] |
| **token** | **String** | The authentication token. | [optional] |
| **customer_title** | **String** | The customer title. |  |
| **provider_key** | **String** | The provider key. |  |
| **provider_id** | **Integer** | The provider ID. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyRequestDto.new(
  url: https://example.com,
  login: admin,
  password: password123,
  token: abc123,
  customer_title: My Document,
  provider_key: abc123,
  provider_id: 1
)
```
