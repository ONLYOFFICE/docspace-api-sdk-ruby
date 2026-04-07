# DocspaceApiSdk::SsoIdpCertificateAdvanced

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verify_algorithm** | **String** | The certificate verification algorithm. | [optional] |
| **verify_auth_responses_sign** | **Boolean** | Specifies if the signatures of the SAML authentication responses sent to SP will be verified or not. | [optional] |
| **verify_logout_requests_sign** | **Boolean** | Specifies if the signatures of the SAML logout requests sent to SP will be verified or not. | [optional] |
| **verify_logout_responses_sign** | **Boolean** | Specifies if the signatures of the SAML logout responses sent to SP will be verified or not. | [optional] |
| **decrypt_algorithm** | **String** | The certificate decryption algorithm. | [optional] |
| **decrypt_assertions** | **Boolean** | Specifies if the assertions will be decrypted or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoIdpCertificateAdvanced.new(
  verify_algorithm: rsa-sha256,
  verify_auth_responses_sign: true,
  verify_logout_requests_sign: true,
  verify_logout_responses_sign: true,
  decrypt_algorithm: aes256-cbc,
  decrypt_assertions: true
)
```
