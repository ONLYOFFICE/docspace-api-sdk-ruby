# DocspaceApiSdk::CreateClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The client name. | [optional] |
| **description** | **String** | The description of the client | [optional] |
| **logo** | **String** | The logo of the client in base64 format | [optional] |
| **scopes** | **Array&lt;String&gt;** | The scopes for the client | [optional] |
| **public** | **Boolean** |  | [optional] |
| **allow_pkce** | **Boolean** | Indicates whether PKCE is allowed for the client | [optional] |
| **is_public** | **Boolean** | Indicates if the client is public | [optional] |
| **website_url** | **String** | The website URL of the client | [optional] |
| **terms_url** | **String** | The terms URL of the client | [optional] |
| **policy_url** | **String** | The policy URL of the client | [optional] |
| **redirect_uris** | **Array&lt;String&gt;** | The redirect URIs for the client |  |
| **allowed_origins** | **Array&lt;String&gt;** | The allowed origins for the client |  |
| **logout_redirect_uri** | **String** | The logout redirect URI for the client | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateClientRequest.new(
  name: Example Client,
  description: Description of the client,
  logo: data:image/png;base64,...,
  scopes: ["read","write"],
  public: null,
  allow_pkce: true,
  is_public: false,
  website_url: http://example.com,
  terms_url: http://example.com/terms,
  policy_url: http://example.com/policy,
  redirect_uris: ["http://example.com/redirect"],
  allowed_origins: ["http://example.com"],
  logout_redirect_uri: http://example.com/logout
)
```
