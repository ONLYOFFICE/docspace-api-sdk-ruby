# DocspaceApiSdk::ProviderDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The provider name. | [optional] |
| **key** | **String** | The provider key. | [optional] |
| **connected** | **Boolean** | Specifies whether the provider is connected. | [optional] |
| **oauth** | **Boolean** | Specifies if the provider is OAuth. | [optional] |
| **redirect_url** | **String** | The provider redirect URL. | [optional] |
| **required_connection_url** | **Boolean** | The required connection URL flag. | [optional] |
| **client_id** | **String** | The provider OAuth client ID. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ProviderDto.new(
  name: GoogleDrive,
  key: google-drive,
  connected: true,
  oauth: true,
  redirect_url: http://localhost/redirect,
  required_connection_url: false,
  client_id: client-id-123
)
```
