# DocspaceApiSdk::EncryptionKeyRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the key pair. | [optional] |
| **public_key** | **String** | The public key of the pair, used to encrypt the file keys. | [optional] |
| **private_key_enc** | **String** | The private key of the pair, encrypted with the user password. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionKeyRequestDto.new(
  id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  public_key: MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A...,
  private_key_enc: U2FsdGVkX1+Lm3s...
)
```
