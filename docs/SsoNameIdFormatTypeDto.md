# DocspaceApiSdk::SsoNameIdFormatTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saml11_unspecified** | **String** | The SAML 1.1 unspecified name ID format. | [optional][readonly] |
| **saml11_email_address** | **String** | The SAML 1.1 email address name ID format. | [optional][readonly] |
| **saml20_entity** | **String** | The SAML 2.0 entity name ID format. | [optional][readonly] |
| **saml20_transient** | **String** | The SAML 2.0 transient name ID format, whose identifier differs from one session to the next. It is what  the built-in configuration uses. | [optional][readonly] |
| **saml20_persistent** | **String** | The SAML 2.0 persistent name ID format, whose identifier stays the same for one person across sessions. | [optional][readonly] |
| **saml20_encrypted** | **String** | The SAML 2.0 encrypted name ID format. | [optional][readonly] |
| **saml20_unspecified** | **String** | The SAML 2.0 unspecified name ID format. | [optional][readonly] |
| **saml11_x509_subject_name** | **String** | The SAML 1.1 X.509 subject name name ID format. | [optional][readonly] |
| **saml11_windows_domain_qualified_name** | **String** | The SAML 1.1 Windows domain qualified name name ID format. | [optional][readonly] |
| **saml20_kerberos** | **String** | The SAML 2.0 Kerberos name ID format. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoNameIdFormatTypeDto.new(
  saml11_unspecified: urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified,
  saml11_email_address: urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress,
  saml20_entity: urn:oasis:names:tc:SAML:2.0:nameid-format:entity,
  saml20_transient: urn:oasis:names:tc:SAML:2.0:nameid-format:transient,
  saml20_persistent: urn:oasis:names:tc:SAML:2.0:nameid-format:persistent,
  saml20_encrypted: urn:oasis:names:tc:SAML:2.0:nameid-format:encrypted,
  saml20_unspecified: urn:oasis:names:tc:SAML:2.0:nameid-format:unspecified,
  saml11_x509_subject_name: urn:oasis:names:tc:SAML:1.1:nameid-format:X509SubjectName,
  saml11_windows_domain_qualified_name: urn:oasis:names:tc:SAML:1.1:nameid-format:WindowsDomainQualifiedName,
  saml20_kerberos: urn:oasis:names:tc:SAML:2.0:nameid-format:kerberos
)
```
