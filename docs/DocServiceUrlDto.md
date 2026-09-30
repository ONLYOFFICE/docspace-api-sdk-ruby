# DocspaceApiSdk::DocServiceUrlDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | The editor version the running Document Server reported. It is filled in only when the version was asked for,  and comes back empty otherwise. When the Document Server does not answer, a fallback version is reported  rather than an error, so a value here is no proof that the server is reachable. |  |
| **doc_service_url_api** | **String** | The absolute URL of the editor api script that a client has to load before it can open a document. It is  derived from the public Document Server address unless the deployment overrides it separately. |  |
| **doc_service_url** | **String** | The public Document Server address a browser loads the editor from. Empty means no document server is  configured for this portal, and documents cannot be opened for editing or viewing. |  |
| **doc_service_preload_url** | **String** | The absolute URL of a page a client may load in advance to warm the editor scripts up. Loading it is optional  and changes nothing on the portal. |  |
| **doc_service_url_internal** | **String** | The address the portal uses for its own server-to-server calls to the Document Server. When no private-network  address is configured, it repeats the public one. |  |
| **doc_service_portal_url** | **String** | The address the Document Server is told to call this portal back on. Empty means nothing overrides it and the  portal's own resolved address is used. |  |
| **doc_service_signature_header** | **String** | The name of the HTTP header that carries the signature on requests between the portal and the Document Server.  The secret itself is not part of the answer, so this only tells a client whether request signing is set up and  under which header. |  |
| **doc_service_ssl_verification** | **Boolean** | Whether the portal validates the TLS certificate of the Document Server. False means any certificate is  accepted, which is expected only in a test deployment. |  |
| **is_default** | **Boolean** | Whether every one of these settings is still the one the deployment ships with. False means at least one of  the addresses, the signature settings or SSL verification has been overridden for this portal. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocServiceUrlDto.new(
  version: 8.0.1,
  doc_service_url_api: https://documentserver.example.com/web-apps/apps/api/documents/api.js,
  doc_service_url: https://documentserver.example.com/,
  doc_service_preload_url: https://documentserver.example.com/web-apps/apps/api/documents/preload.html,
  doc_service_url_internal: http://documentserver-internal.local/,
  doc_service_portal_url: https://portal.example.com/,
  doc_service_signature_header: Authorization,
  doc_service_ssl_verification: true,
  is_default: true
)
```
