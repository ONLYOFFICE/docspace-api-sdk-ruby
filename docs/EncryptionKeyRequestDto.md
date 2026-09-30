# DocspaceApiSdk::EncryptionKeyRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Names the pair inside the caller's own key set. The client generates it, and leaving it out means the all-zero  GUID, which is the pair a client that never sends an identifier keeps working with. | [optional] |
| **public_key** | **String** | The public half of the pair, as the client's crypto engine produced it and stored verbatim. This is the half  handed to the other members of a private room so that they can encrypt file keys for this user. | [optional] |
| **private_key_enc** | **String** | The private half of the pair, encrypted on the client with the user's password before it is sent. The portal  stores it as opaque text and cannot decrypt it, so material lost on the client cannot be recovered from here. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionKeyRequestDto.new(
  id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  public_key: MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A...,
  private_key_enc: U2FsdGVkX1+Lm3s...
)
```
