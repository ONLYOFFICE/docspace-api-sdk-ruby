# DocspaceApiSdk::UpdateClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The display name shown to the user on the consent screen. It has to be between 3 and 256 characters long. |  |
| **description** | **String** | The free-text description shown next to the name on the consent screen, at most 255 characters. | [optional] |
| **logo** | **String** | The client logo as a data URI carrying base64 image data, shown on the consent screen. Only png, jpeg, jpg and svg+xml are accepted. |  |
| **scopes** | **Array&lt;String&gt;** | The permissions the client may ask for, named as they appear in the tenant scope catalogue - for example files:read, rooms:write or openid. A client cannot request a scope that is not listed here. |  |
| **allow_pkce** | **Boolean** | Whether the client may use PKCE. Turning it on lets the client authenticate with the none method and prove itself with a code verifier instead of sending a secret, which is what a client that cannot keep a secret needs. | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | The web origins allowed to call the portal on behalf of this client, used for the CORS check. The set holds between 1 and 12 addresses. |  |
| **redirect_uris** | **Array&lt;String&gt;** | The URIs an authorization code may be delivered to. An authorization request naming any other URI is refused, and the set holds between 1 and 12 addresses. |  |
| **is_public** | **Boolean** | Whether the client is offered to third-party tenants rather than only to the tenant that registers it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateClientRequest.new(
  name: Updated Client,
  description: Updated description of the client,
  logo: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg==,
  scopes: null,
  allow_pkce: true,
  allowed_origins: null,
  redirect_uris: null,
  is_public: false
)
```
