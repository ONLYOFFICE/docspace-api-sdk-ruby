# DocspaceApiSdk::ConnectionTestResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Specifies whether the connection to the database succeeded. | [optional] |
| **error** | **String** | The reason the connection failed, or null when it succeeded. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConnectionTestResultDto.new(
  success: true,
  error: Unable to connect to any of the specified MySQL hosts.
)
```
