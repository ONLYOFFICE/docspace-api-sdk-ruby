# DocspaceApiSdk::ClientResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The client name. | [optional] |
| **description** | **String** | The client description. | [optional] |
| **tenant** | **Integer** | The tenant ID associated with the client. | [optional] |
| **scopes** | **Array&lt;String&gt;** | The client scopes. | [optional] |
| **enabled** | **Boolean** | Specifies if the client is currently enabled or not. | [optional] |
| **client_id** | **String** | The client identifier issued to the client during registration. | [optional] |
| **client_secret** | **String** | The client secret issued to the client during registration. | [optional] |
| **website_url** | **String** | The URL to the client's website. | [optional] |
| **terms_url** | **String** | The URL to the client's terms of service. | [optional] |
| **policy_url** | **String** | The URL to the client's privacy policy. | [optional] |
| **logo** | **String** | The URL to the client's logo. | [optional] |
| **authentication_methods** | **Array&lt;String&gt;** | The authentication methods supported by the client. | [optional] |
| **redirect_uris** | **Array&lt;String&gt;** | The list of allowed redirect URIs. | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | The list of allowed CORS origins. | [optional] |
| **logout_redirect_uris** | **Array&lt;String&gt;** | The list of allowed logout redirect URIs. | [optional] |
| **created_on** | **Time** | The date and time when the client was created. | [optional] |
| **created_by** | **String** | The user who created the client. | [optional] |
| **modified_on** | **Time** | The date and time when the client was last modified. | [optional] |
| **modified_by** | **String** | The user who last modified the client. | [optional] |
| **is_public** | **Boolean** | Indicates whether the client is accessible by third-party tenants. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ClientResponse.new(
  name: null,
  description: null,
  tenant: null,
  scopes: null,
  enabled: null,
  client_id: null,
  client_secret: null,
  website_url: null,
  terms_url: null,
  policy_url: null,
  logo: null,
  authentication_methods: null,
  redirect_uris: null,
  allowed_origins: null,
  logout_redirect_uris: null,
  created_on: null,
  created_by: null,
  modified_on: null,
  modified_by: null,
  is_public: null
)
```
