# DocspaceApiSdk::ThirdPartyParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_data** | [**AuthData**](AuthData.md) | The authentication data. | [optional] |
| **corporate** | **Boolean** | Specifies if this is a corporate account or not. | [optional] |
| **rooms_storage** | **Boolean** | Specifies if this is a room storage or not. | [optional] |
| **customer_title** | **String** | The customer title. | [optional] |
| **provider_id** | **Integer** | The provider ID. | [optional] |
| **provider_key** | **String** | The provider key. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyParams.new(
  auth_data: null,
  corporate: false,
  rooms_storage: false,
  customer_title: My Storage,
  provider_id: 1,
  provider_key: GoogleDrive
)
```
