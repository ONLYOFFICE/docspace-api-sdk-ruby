# DocspaceApiSdk::SsoIdpCertificateActionTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification** | **String** | The certificate verifies the signatures on what the provider sends, and nothing else - the counterpart of  the service provider's signing action. | [optional][readonly] |
| **decrypt** | **String** | The certificate is used to decrypt what the provider sends, but verifies no signature. | [optional][readonly] |
| **verification_and_decrypt** | **String** | The certificate does both, which is what a single provider certificate has to be set to. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoIdpCertificateActionTypeDto.new(
  verification: verification,
  decrypt: decrypt,
  verification_and_decrypt: verification and decrypt
)
```
