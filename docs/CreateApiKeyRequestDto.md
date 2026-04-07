# DocspaceApiSdk::CreateApiKeyRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The API key name. |  |
| **permissions** | **Array&lt;String&gt;** | The list of permissions granted to the API key. | [optional] |
| **expires_in_days** | **Integer** | The number of days until the API key expires (null for no expiration). | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateApiKeyRequestDto.new(
  name: My API Key,
  permissions: ["read","write"],
  expires_in_days: 30
)
```
