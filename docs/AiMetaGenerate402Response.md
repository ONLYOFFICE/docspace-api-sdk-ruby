# DocspaceApiSdk::AiMetaGenerate402Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** | Short reason, ready to be shown to the caller. |  |
| **code** | **String** | Stable classification of the failure: `rate_limit`, `insufficient_funds`, `auth`, `model_not_found`, `timeout`, `network`, `bad_request`, `server`, `unknown`, or a provider-specific code relayed as it came. |  |
| **provider_message** | **String** | The provider's own error message, cut to 500 characters. Absent when the failure never reached the provider, or was a timeout. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMetaGenerate402Response.new(
  error: The model provider refused the request for lack of credit,
  code: insufficient_funds,
  provider_message: 402 Insufficient Balance
)
```
