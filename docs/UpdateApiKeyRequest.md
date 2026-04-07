# DocspaceApiSdk::UpdateApiKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name for the API key. | [optional] |
| **permissions** | **Array&lt;String&gt;** | The new list of permissions for the API key. | [optional] |
| **is_active** | **Boolean** | Indicates whether the API key should be active or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateApiKeyRequest.new(
  name: Updated API Key,
  permissions: ["read","write","delete"],
  is_active: true
)
```
