# DocspaceApiSdk::SsoSettingsV2ConstantsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sso_name_id_format_type** | [**SsoNameIdFormatTypeDto**](SsoNameIdFormatTypeDto.md) | The values the `nameIdFormat` of the identity provider settings accepts. The built-in configuration uses  the SAML 2.0 transient format. | [optional] |
| **sso_binding_type** | [**SsoBindingTypeDto**](SsoBindingTypeDto.md) | The values the `ssoBinding` and `sloBinding` of the identity provider settings accept - how the portal  sends its sign-in and sign-out requests. The built-in configuration uses HTTP POST for both. | [optional] |
| **sso_signing_algorithm_type** | [**SsoSigningAlgorithmTypeDto**](SsoSigningAlgorithmTypeDto.md) | The values the `signingAlgorithm` of the service provider certificate and the `verifyAlgorithm` of the  identity provider certificate accept. The built-in configuration uses RSA-SHA1 for both. | [optional] |
| **sso_encrypt_algorithm_type** | [**SsoEncryptAlgorithmTypeDto**](SsoEncryptAlgorithmTypeDto.md) | The values the `encryptAlgorithm` and `decryptAlgorithm` of the certificate settings accept. The built-in  configuration uses AES-128 everywhere. | [optional] |
| **sso_sp_certificate_action_type** | [**SsoSpCertificateActionTypeDto**](SsoSpCertificateActionTypeDto.md) | The values the `action` of a service provider certificate accepts, which is what the portal's own key  pair may be used for. | [optional] |
| **sso_idp_certificate_action_type** | [**SsoIdpCertificateActionTypeDto**](SsoIdpCertificateActionTypeDto.md) | The values the `action` of an identity provider certificate accepts, which is what the provider's  certificate may be used for - the mirror image of the service provider actions. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSettingsV2ConstantsDto.new(
  sso_name_id_format_type: null,
  sso_binding_type: null,
  sso_signing_algorithm_type: null,
  sso_encrypt_algorithm_type: null,
  sso_sp_certificate_action_type: null,
  sso_idp_certificate_action_type: null
)
```
