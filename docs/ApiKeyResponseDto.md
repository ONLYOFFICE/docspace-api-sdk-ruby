# DocspaceApiSdk::ApiKeyResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the key. This is the value to pass to `PUT api/2.0/keys/{keyId}` and  `DELETE api/2.0/keys/{keyId}`. |  |
| **name** | **String** | The label given to the key when it was created or last updated. |  |
| **key** | **String** | The secret to send in the `Authorization` header as `Bearer sk-...`. It is filled in only by the answer of  `POST api/2.0/keys` and cannot be read again afterwards, so it has to be stored at that moment. |  |
| **key_postfix** | **String** | The last four characters of the secret. It is the only part of the secret that later reads expose, and it is  meant for telling keys apart in a list. | [optional] |
| **permissions** | **Array&lt;String&gt;** | The scopes the key may use, as accepted by `GET api/2.0/keys/permissions`. An empty list means the key has no  scope restrictions. |  |
| **last_used** | [**ApiDateTime**](ApiDateTime.md) | The UTC moment the key was last used to authenticate a request. It is empty for a key that has never been  used. | [optional] |
| **create_on** | [**ApiDateTime**](ApiDateTime.md) | The UTC moment the key was created. | [optional] |
| **create_by** | [**EmployeeDto**](EmployeeDto.md) | The portal member who created the key, and whose access the key acts with. | [optional] |
| **expires_at** | [**ApiDateTime**](ApiDateTime.md) | The UTC moment the key stops working. It is empty for a key created without `expiresInDays`, which never  expires. | [optional] |
| **is_active** | **Boolean** | Whether the key may authenticate requests. A key deactivated through `PUT api/2.0/keys/{keyId}` stays in the  list with this field set to false. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ApiKeyResponseDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: My API Key,
  key: sk-0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef,
  key_postfix: cdef,
  permissions: [rooms:read, files:write],
  last_used: null,
  create_on: null,
  create_by: null,
  expires_at: null,
  is_active: true
)
```
