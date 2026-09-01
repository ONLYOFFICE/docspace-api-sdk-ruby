# DocspaceApiSdk::EncryptionKeyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the key pair. | [optional] |
| **user_id** | **String** | The identifier of the user the key pair belongs to. | [optional] |
| **date** | **Time** | The date and time when the key pair was created. | [optional] |
| **public_key** | **String** | The public key of the pair, used to encrypt the file keys. | [optional] |
| **private_key_enc** | **String** | The private key of the pair, encrypted with the user password. | [optional] |
| **crypto_engine_id** | **String** | The identifier of the crypto engine the key pair was issued for. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionKeyDto.new(
  id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  user_id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  date: 2025-01-01T00:00:00,
  public_key: MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A...,
  private_key_enc: U2FsdGVkX1+Lm3s...,
  crypto_engine_id: {DC522726-5E0E-43E5-AA02-8EA156BECBC5}
)
```
