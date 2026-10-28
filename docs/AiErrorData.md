# DocspaceApiSdk::AiErrorData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The rejected field. |  |
| **message** | **String** | The human-readable reason the field was rejected. |  |
| **code** | [**AiErrorCode**](AiErrorCode.md) | Optional: producers that know the reason set it (the prompts engine does). | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiErrorData.new(
  field: null,
  message: null,
  code: null
)
```
