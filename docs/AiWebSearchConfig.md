# DocspaceApiSdk::AiWebSearchConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | Provider identifier (e.g. `exa`). |  |
| **key** | **String** | API key for the provider. Optional for self-hosted or keyless setups. | [optional] |
| **base_url** | **String** | Optional override for the provider's base URL. | [optional] |
| **is_cloud_provider** | **Boolean** | Whether this provider is cloud-hosted (vs. self-hosted). | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Extra HTTP headers sent with each request to the ONLYOFFICE / cloud backend (e.g. `X-Tenant`). Merged after the derived `Authorization` header, so a custom header of the same name wins. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWebSearchConfig.new(
  provider: null,
  key: null,
  base_url: null,
  is_cloud_provider: null,
  headers: null
)
```
