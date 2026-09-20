# DocspaceApiSdk::TokenDiagnosticsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the authenticated identity. | [optional] |
| **claims** | **Array&lt;String&gt;** | The claims of the identity, each formatted as type:value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TokenDiagnosticsDto.new(
  name: user@example.com,
  claims: [http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name:user@example.com]
)
```
