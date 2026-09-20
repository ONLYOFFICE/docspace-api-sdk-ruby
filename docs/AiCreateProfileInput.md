# DocspaceApiSdk::AiCreateProfileInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User-defined profile display name. |  |
| **provider_type** | [**AiProviderType**](AiProviderType.md) | Provider type for this profile. Use `external` to delegate all HTTP transport to `PlatformAdapter.externalFetch` while reusing an existing provider's response parser — see `Profile.basedOn` for the format selector. |  |
| **based_on** | [**AiBuiltinProviderType**](AiBuiltinProviderType.md) | Selects the response-format parser used by the `external` provider. Ignored for any other `providerType`.  Supported values are `openai`, `anthropic`, `mistral` and `openrouter`. Remaining values (`genai`, `stabilityai`, …) are accepted by the type but not yet implemented; passing one raises an error at request time. | [optional] |
| **base_url** | **String** | Base URL of the provider API. |  |
| **key** | **String** | API key or token. Optional for local providers. | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Extra HTTP headers sent with every request to this provider. Merged into the SDK client's default headers; an explicit `Authorization` here wins over the one derived from `key`. Honoured by the OpenAI-family providers. | [optional] |
| **model_id** | **String** | Selected model ID within this provider. |  |
| **reasoning** | **Boolean** | Whether extended thinking is enabled for this profile's model. | [optional] |
| **reasoning_support** | [**AiReasoningSupport**](AiReasoningSupport.md) | Extended-thinking capabilities of the selected model as reported by the provider's catalogue at save time (see `Model.reasoningSupport`). When present the composer's Effort row follows it exactly; when absent the provider's id-based table answers. Hosts persist it with the rest of the profile. | [optional] |
| **capabilities** | **Float** | Bitmask of capabilities supported by the selected model. | [optional] |
| **can_use_tool** | **Boolean** | Result of the live tool-capability probe performed at create time and on changes to `modelId` / `providerType` / `baseUrl`. `undefined` means the probe has never run for this profile (legacy record). | [optional] |
| **use_responses_api** | **Boolean** | Result of the live Responses-API probe (parallel to `canUseTool`). `true` means the model speaks `/v1/responses` and the OpenAI provider must route through `client.responses.create` — required for gpt-5+ reasoning models that reject `reasoning_effort` together with `tools` on `/v1/chat/completions`. Probed at create time and whenever `modelId` / `providerType` / `baseUrl` change. `undefined` means the probe never ran (legacy record) — readers treat that as `false`. | [optional] |
| **is_cloud_provider** | **Boolean** | Whether this profile uses a cloud-hosted provider (e.g. ONLYOFFICE DocSpace). | [optional] |
| **use_proxy** | **Boolean** | Route every provider request through the host's `fetchProxy` instead of the global `fetch`. Useful when the host runs the widget in a sandbox without direct network access (CORS, custom auth, etc.). Has no effect when the `PlatformAdapter.fetchProxy` is not configured. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiCreateProfileInput.new(
  name: OpenAI GPT-4o,
  provider_type: openai,
  based_on: openai,
  base_url: https://api.openai.com/v1,
  key: sk-your-provider-api-key,
  headers: {X-Organization=acme},
  model_id: gpt-4o,
  reasoning: false,
  reasoning_support: null,
  capabilities: 7,
  can_use_tool: true,
  use_responses_api: false,
  is_cloud_provider: true,
  use_proxy: false
)
```
