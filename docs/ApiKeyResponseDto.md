# DocspaceApiSdk::ApiKeyResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The API key unique identifier. |  |
| **name** | **String** | The API key name. |  |
| **key** | **String** | The full API key value (only returned when creating a new key). |  |
| **key_postfix** | **String** | The API key postfix (used for identification). | [optional] |
| **permissions** | **Array&lt;String&gt;** | The list of permissions granted to the API key. |  |
| **last_used** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **create_on** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **create_by** | [**EmployeeDto**](EmployeeDto.md) |  | [optional] |
| **expires_at** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **is_active** | **Boolean** | Indicates whether the API key is active or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ApiKeyResponseDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: My API Key,
  key: api_key_1234567890abcdef,
  key_postfix: ...cdef,
  permissions: ["read","write","delete"],
  last_used: null,
  create_on: null,
  create_by: null,
  expires_at: null,
  is_active: true
)
```
