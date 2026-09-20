# DocspaceApiSdk::SsoSpCertificateActionTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing** | **String** | The key pair signs the requests the portal sends and nothing else. | [optional][readonly] |
| **encrypt** | **String** | The key pair encrypts what the portal sends and decrypts what comes back, but signs nothing. | [optional][readonly] |
| **signing_and_encrypt** | **String** | The key pair does both, which is what one pair configured on its own has to be set to. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSpCertificateActionTypeDto.new(
  signing: signing,
  encrypt: encrypt,
  signing_and_encrypt: signing and encrypt
)
```
