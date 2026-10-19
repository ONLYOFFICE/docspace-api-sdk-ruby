# DocspaceApiSdk::DocsCloudSecurityConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | The security secret. | [optional] |
| **header** | **String** | The security header name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudSecurityConfigDto.new(
  secret: abc123,
  header: Authorization
)
```
