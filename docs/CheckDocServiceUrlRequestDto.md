# DocspaceApiSdk::CheckDocServiceUrlRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **doc_service_url** | **String** | The ONLYOFFICE Docs URL address. |  |
| **doc_service_url_internal** | **String** | The ONLYOFFICE Docs URL address in the local private network. | [optional] |
| **doc_service_url_portal** | **String** | The ONLYOFFICE Docs URL address. | [optional] |
| **doc_service_signature_secret** | **String** | The signature secret of the ONLYOFFICE Docs. | [optional] |
| **doc_service_signature_header** | **String** | The signature header of the ONLYOFFICE Docs. | [optional] |
| **doc_service_ssl_verification** | **Boolean** | Specifies if the SSL verification of the ONLYOFFICE Docs is enabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckDocServiceUrlRequestDto.new(
  doc_service_url: https://documentserver.example.com,
  doc_service_url_internal: https://documentserver-internal.example.com,
  doc_service_url_portal: https://documentserver-portal.example.com,
  doc_service_signature_secret: secret-key-123,
  doc_service_signature_header: Authorization,
  doc_service_ssl_verification: true
)
```
