# DocspaceApiSdk::DocServiceUrlDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The version of the document service. |  |
| **doc_service_url_api** | **String** | The document service URL API. |  |
| **doc_service_url** | **String** | The document service URL. |  |
| **doc_service_preload_url** | **String** | The URL used to preload the document service scripts. |  |
| **doc_service_url_internal** | **String** | The internal document service URL. |  |
| **doc_service_portal_url** | **String** | The document service portal URL. |  |
| **doc_service_signature_header** | **String** | The document service signature header. |  |
| **doc_service_ssl_verification** | **Boolean** | Specifies if the document service SSL verification is enabled. |  |
| **is_default** | **Boolean** | Specifies if the document service is default. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocServiceUrlDto.new(
  version: 8.0.1,
  doc_service_url_api: http://localhost/api,
  doc_service_url: http://localhost/docservice,
  doc_service_preload_url: http://localhost/preload,
  doc_service_url_internal: http://localhost/internal,
  doc_service_portal_url: http://localhost/portal,
  doc_service_signature_header: Authorization,
  doc_service_ssl_verification: true,
  is_default: true
)
```
