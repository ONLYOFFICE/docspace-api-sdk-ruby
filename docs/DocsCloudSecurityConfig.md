# DocspaceApiSdk::DocsCloudSecurityConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | The security secret. | [optional] |
| **header** | **String** | The security header name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudSecurityConfig.new(
  secret: abc123,
  header: Authorization
)
```
