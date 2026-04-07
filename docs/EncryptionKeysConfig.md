# DocspaceApiSdk::EncryptionKeysConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **crypto_engine_id** | **String** | The crypto engine ID of the encryption key. | [optional][readonly] |
| **private_key_enc** | **String** | The private key. | [optional] |
| **public_key** | **String** | The public key. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionKeysConfig.new(
  crypto_engine_id: {FFF0E1EB-13DB-4678-B67D-FF0A41DBBCEF},
  private_key_enc: MIIEvQIBADANBgkqhkiG9w0BAQEFAASC...,
  public_key: MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A...
)
```
