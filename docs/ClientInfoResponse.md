# DocspaceApiSdk::ClientInfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The client name. | [optional] |
| **description** | **String** | The client description. | [optional] |
| **scopes** | **Array&lt;String&gt;** | The client scopes. | [optional] |
| **public** | **Boolean** |  | [optional] |
| **client_id** | **String** | The client ID. | [optional] |
| **website_url** | **String** | The URL to the client's website | [optional] |
| **terms_url** | **String** | The URL to the client's terms of service. | [optional] |
| **policy_url** | **String** | The URL to the client's privacy policy. | [optional] |
| **logo** | **String** | The client logo in base64 format. | [optional] |
| **authentication_methods** | **Array&lt;String&gt;** | The authentication methods supported by the client. | [optional] |
| **is_public** | **Boolean** | Indicates whether the client is accessible by third-party tenants. | [optional] |
| **created_on** | **Time** | The date and time when the client was created. | [optional] |
| **created_by** | **String** | The user who created the client. | [optional] |
| **modified_on** | **Time** | The date and time when the client was last modified. | [optional] |
| **modified_by** | **String** | The user who last modified the client. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ClientInfoResponse.new(
  name: null,
  description: null,
  scopes: null,
  public: null,
  client_id: null,
  website_url: null,
  terms_url: null,
  policy_url: null,
  logo: null,
  authentication_methods: null,
  is_public: null,
  created_on: null,
  created_by: null,
  modified_on: null,
  modified_by: null
)
```
