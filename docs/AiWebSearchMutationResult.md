# DocspaceApiSdk::AiWebSearchMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the configuration was persisted. |  |
| **config** | [**AiWebSearchConfig**](AiWebSearchConfig.md) | The persisted web-search configuration. Present on success. | [optional] |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the configuration was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWebSearchMutationResult.new(
  success: null,
  config: null,
  error: null
)
```
