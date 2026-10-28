# DocspaceApiSdk::AuthKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The key name, as `GET api/2.0/settings/authservice` lists it in `props`. |  |
| **value** | **String** | The value to store. An empty string clears the key. |  |
| **title** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **type** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **options** | **Array&lt;String&gt;** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **depends_on** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **depends_on_value** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthKeyRequest.new(
  name: googleClientId,
  value: 1234567890-abc.apps.googleusercontent.com,
  title: Client ID,
  type: text,
  options: [s3, gcs],
  depends_on: storageType,
  depends_on_value: s3
)
```
