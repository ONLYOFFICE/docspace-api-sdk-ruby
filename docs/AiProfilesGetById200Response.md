# DocspaceApiSdk::AiProfilesGetById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique profile identifier (UUID). |  |
| **name** | **String** | User-defined profile display name. |  |
| **provider_type** | [**AiProviderType**](AiProviderType.md) | The provider type of the profile. `external` sends every request through a transport the embedding application supplies while parsing the answers with the provider named in `basedOn`. |  |
| **based_on** | [**AiBuiltinProviderType**](AiBuiltinProviderType.md) | Selects the response-format parser used by the `external` provider. Ignored for any other `providerType`.  Supported values are `openai`, `anthropic`, `mistral` and `openrouter`. Remaining values (`genai`, `stabilityai`, …) are accepted by the type but not yet implemented; passing one raises an error at request time. | [optional] |
| **base_url** | **String** | Base URL of the provider API. |  |
| **model_id** | **String** | Selected model ID within this provider. |  |
| **reasoning** | **Boolean** | Whether extended thinking is enabled for this profile's model. | [optional] |
| **reasoning_support** | [**AiReasoningSupport**](AiReasoningSupport.md) | What the model can do with extended thinking, as the provider's catalogue reported it when the profile was saved; the effort choices in the chat follow it. When absent, the abilities are taken from the model ID. | [optional] |
| **capabilities** | **Float** | Bitmask of capabilities supported by the selected model. | [optional] |
| **can_use_tool** | **Boolean** | Result of the live tool-capability probe performed at create time and on changes to `modelId` / `providerType` / `baseUrl`. `undefined` means the probe has never run for this profile (legacy record). | [optional] |
| **use_responses_api** | **Boolean** | Result of the live Responses-API probe (parallel to `canUseTool`). `true` means the model speaks `/v1/responses` and the OpenAI provider must route through `client.responses.create` — required for gpt-5+ reasoning models that reject `reasoning_effort` together with `tools` on `/v1/chat/completions`. Probed at create time and whenever `modelId` / `providerType` / `baseUrl` change. `undefined` means the probe never ran (legacy record) — readers treat that as `false`. | [optional] |
| **is_cloud_provider** | **Boolean** | Whether this profile uses a cloud-hosted provider (e.g. ONLYOFFICE DocSpace). | [optional] |
| **use_proxy** | **Boolean** | Whether the chat client sends this profile's provider requests through the portal's proxy instead of directly. Has no effect when no proxy is configured. | [optional] |
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
  reasoning_support: null,
  capabilities: null,
  can_use_tool: null,
  use_responses_api: null,
  is_cloud_provider: null,
  use_proxy: null,
  created_at: null
)
```
