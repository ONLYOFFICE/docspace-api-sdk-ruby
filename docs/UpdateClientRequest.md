# DocspaceApiSdk::UpdateClientRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the client | [optional] |
| **description** | **String** | The description of the client | [optional] |
| **logo** | **String** | The logo of the client in base64 format | [optional] |
| **public** | **Boolean** |  | [optional] |
| **allow_pkce** | **Boolean** | Indicates whether PKCE is allowed for the client | [optional] |
| **is_public** | **Boolean** | Indicates whether client is accessible by third-party tenants | [optional] |
| **allowed_origins** | **Array&lt;String&gt;** | The allowed origins for the client | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateClientRequest.new(
  name: Updated Client,
  description: Updated description of the client,
  logo: data:image/png;base64,...,
  public: null,
  allow_pkce: true,
  is_public: false,
  allowed_origins: [http://allowed.origin]
)
```
