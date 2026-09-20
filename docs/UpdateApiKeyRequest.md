# DocspaceApiSdk::UpdateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new label of the key, up to 30 characters. Omit it to keep the current name. | [optional] |
| **permissions** | **Array&lt;String&gt;** | The scopes that replace the current ones. Every value has to come from `GET api/2.0/keys/permissions`, an  unknown value or an empty array is rejected, and omitting the field keeps the current scopes. | [optional] |
| **is_active** | **Boolean** | Whether the key may authenticate requests. Set it to false to stop the key without deleting it and to true to  let it work again; omit it to keep the current state. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateApiKeyRequest.new(
  name: Updated API Key,
  permissions: [rooms:read, files:write],
  is_active: true
)
```
