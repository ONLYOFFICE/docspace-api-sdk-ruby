# DocspaceApiSdk::FileEncryptionInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_keys** | [**Array&lt;EncryptionKeyDto&gt;**](EncryptionKeyDto.md) | The key pairs of the calling account, never those of the other people in the room. The private half of each  pair is stored encrypted with that person's own password and has to be decrypted on the client. An empty list  means the account has generated no key pair yet, and until it does no file key can be issued to it. | [optional] |
| **file_keys** | [**Array&lt;FileKeys&gt;**](FileKeys.md) | The keys of this file that were issued to the calling account, each naming the public key it was encrypted for  so that the client can pick the matching private half. An empty list means the file has not been shared with  this account rather than that the file is unencrypted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileEncryptionInfoDto.new(
  user_keys: [{id=9924256B-447C-4F19-9dbd-8ad8c39e8ff5, userId=9924256B-447C-4F19-9dbd-8ad8c39e8ff5, date=2025-01-01T00:00:00, publicKey=-----BEGIN PUBLIC KEY-----
MIIBIjANBg..., privateKeyEnc=U2FsdGVkX1+Lm3s..., cryptoEngineId=defaultCryptoEngine}],
  file_keys: [{userId=9924256B-447C-4F19-9dbd-8ad8c39e8ff5, publicKeyId=9924256B-447C-4F19-9dbd-8ad8c39e8ff5, privateKeyEnc=U2FsdGVkX1+Lm3s..., tenantId=1, fileId=9846, createOn=2025-01-01T00:00:00}]
)
```
