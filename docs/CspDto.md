# DocspaceApiSdk::CspDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | **Array&lt;String&gt;** | The list of CSP domains. |  |
| **header** | **String** | The CSP header. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CspDto.new(
  domains: [https://example.com, https://cdn.example.com],
  header: default-src 'self'; script-src 'self' https://example.com
)
```
