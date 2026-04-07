# DocspaceApiSdk::SsoSpCertificateAdvanced

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signing_algorithm** | **String** | The certificate signing algorithm. | [optional] |
| **sign_auth_requests** | **Boolean** | Specifies if SP will sign the SAML authentication requests sent to IdP or not. | [optional] |
| **sign_logout_requests** | **Boolean** | Specifies if SP will sign the SAML logout requests sent to IdP or not. | [optional] |
| **sign_logout_responses** | **Boolean** | Specifies if SP will sign the SAML logout responses sent to IdP or not. | [optional] |
| **encrypt_algorithm** | **String** | The certificate encryption algorithm. | [optional] |
| **decrypt_algorithm** | **String** | The certificate decryption algorithm. | [optional] |
| **encrypt_assertions** | **Boolean** | Specifies if the assertions will be encrypted or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSpCertificateAdvanced.new(
  signing_algorithm: rsa-sha256,
  sign_auth_requests: true,
  sign_logout_requests: true,
  sign_logout_responses: true,
  encrypt_algorithm: aes256-cbc,
  decrypt_algorithm: aes256-cbc,
  encrypt_assertions: true
)
```
