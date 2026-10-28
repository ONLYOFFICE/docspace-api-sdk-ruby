# DocspaceApiSdk::AiWebSearchConfigure400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the configuration was persisted. |  |
| **config** | [**AiWebSearchConfig**](AiWebSearchConfig.md) | The persisted web-search configuration. Present on success. | [optional] |
| **error** | **String** | The error message, ready to be shown to the caller. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWebSearchConfigure400Response.new(
  success: true,
  config: null,
  error: threadId required
)
```
