# DocspaceApiSdk::AccessRequestKeyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The account that is to open the file with this key; it has to have read access to the file. | [optional] |
| **public_key_id** | **String** | The public key the file key was encrypted with, as reported for that account by  `GET api/2.0/files/file/{fileId}/publickeys`. | [optional] |
| **private_key_enc** | **String** | The key of the file itself, encrypted by the client with that public key, so that the plain key never reaches  the portal. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AccessRequestKeyDto.new(
  user_id: 00000000-0000-0000-0000-000000000000,
  public_key_id: 00000000-0000-0000-0000-000000000000,
  private_key_enc: encrypted_key_string
)
```
