# DocspaceApiSdk::AiProfilesGetById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique profile identifier (UUID). |  |
| **name** | **String** | User-defined profile display name. |  |
| **provider_type** | [**AiProviderType**](AiProviderType.md) | Provider type for this profile. Use `external` to delegate all HTTP transport to `PlatformAdapter.externalFetch` while reusing an existing provider's response parser — see `Profile.basedOn` for the format selector. |  |
| **based_on** | [**AiBuiltinProviderType**](AiBuiltinProviderType.md) | Selects the response-format parser used by the `external` provider. Ignored for any other `providerType`.  Supported values are `openai`, `anthropic`, `mistral` and `openrouter`. Remaining values (`genai`, `stabilityai`, …) are accepted by the type but not yet implemented; passing one raises an error at request time. | [optional] |
| **base_url** | **String** | Base URL of the provider API. |  |
| **model_id** | **String** | Selected model ID within this provider. |  |
| **reasoning** | **Boolean** | Whether extended thinking is enabled for this profile's model. | [optional] |
| **capabilities** | **Float** | Bitmask of capabilities supported by the selected model. | [optional] |
| **can_use_tool** | **Boolean** | Result of the live tool-capability probe performed at create time and on changes to `modelId` / `providerType` / `baseUrl`. `undefined` means the probe has never run for this profile (legacy record). | [optional] |
| **use_responses_api** | **Boolean** | Result of the live Responses-API probe (parallel to `canUseTool`). `true` means the model speaks `/v1/responses` and the OpenAI provider must route through `client.responses.create` — required for gpt-5+ reasoning models that reject `reasoning_effort` together with `tools` on `/v1/chat/completions`. Probed at create time and whenever `modelId` / `providerType` / `baseUrl` change. `undefined` means the probe never ran (legacy record) — readers treat that as `false`. | [optional] |
| **is_cloud_provider** | **Boolean** | Whether this profile uses a cloud-hosted provider (e.g. ONLYOFFICE DocSpace). | [optional] |
| **use_proxy** | **Boolean** | Route every provider request through the host's `fetchProxy` instead of the global `fetch`. Useful when the host runs the widget in a sandbox without direct network access (CORS, custom auth, etc.). Has no effect when the `PlatformAdapter.fetchProxy` is not configured. | [optional] |
| **created_at** | **Float** | Creation timestamp (ms since epoch). Used to sort the AI models list newest-first. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProfilesGetById200Response.new(
  id: null,
  name: null,
  provider_type: null,
  based_on: null,
  base_url: null,
  model_id: null,
  reasoning: null,
  capabilities: null,
  can_use_tool: null,
  use_responses_api: null,
  is_cloud_provider: null,
  use_proxy: null,
  created_at: null
)
```
