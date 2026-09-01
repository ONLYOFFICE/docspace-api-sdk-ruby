# DocspaceApiSdk::ConnectionTestResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Specifies whether the connection to the database succeeded. | [optional] |
| **error** | **String** | The reason the connection failed, or null when it succeeded. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConnectionTestResult.new(
  success: null,
  error: null
)
```
