# DocspaceApiSdk::CreateApiKeyRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The label that tells this key apart in the key list. It is required, may be up to 30 characters long, and does  not have to be unique. |  |
| **permissions** | **Array&lt;String&gt;** | The scopes the key may use. Every value has to come from `GET api/2.0/keys/permissions`, an unknown value or  an empty array is rejected, and passing `*` or omitting the field records a key without scope restrictions. | [optional] |
| **expires_in_days** | **Integer** | The lifetime of the key in days, counted from the moment it is created, from 1 to 365. Omit it to create a key  that never expires. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateApiKeyRequestDto.new(
  name: My API Key,
  permissions: [rooms:read, files:write],
  expires_in_days: 30
)
```
