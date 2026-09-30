# DocspaceApiSdk::EncryptionKeyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Names the pair inside its owner's key set. Pass it back to rotate the pair or to delete it; the all-zero value  belongs to a client that stores its keys without sending an identifier. | [optional] |
| **user_id** | **String** | The member the pair belongs to. In the key set of a room or of a file this is how the caller tells its own  entries, the ones carrying a private half, from those of the other members. | [optional] |
| **date** | **Time** | When this key material was written. Rotating the pair refreshes it, so it dates the material that is being  reported rather than the first appearance of the identifier. | [optional] |
| **public_key** | **String** | The public half of the pair, the half a client encrypts file keys with. A pair whose public half is missing  is treated as no access and left out of a room's or a file's key set. | [optional] |
| **private_key_enc** | **String** | The private half, encrypted with its owner's password. It is filled in only when the pair belongs to the  calling user; on another member's entry it comes back empty, because the private half is not handed out. | [optional] |
| **crypto_engine_id** | **String** | The crypto engine this material was issued for, as a braced GUID. The engine is portal-wide, so the same value  comes back for every key of every member. | [optional] |

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
