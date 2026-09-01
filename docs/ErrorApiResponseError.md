# DocspaceApiSdk::ErrorApiResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The human-readable error message. | [optional] |
| **type** | **String** | The .NET type of the underlying exception. Only sent when stack traces are enabled. | [optional] |
| **stack** | **String** | The stack trace of the underlying exception. Only sent when stack traces are enabled. | [optional] |
| **hresult** | **Integer** | The HRESULT of the underlying exception. Only sent when stack traces are enabled. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ErrorApiResponseError.new(
  message: null,
  type: null,
  stack: null,
  hresult: null
)
```
