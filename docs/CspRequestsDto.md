# DocspaceApiSdk::CspRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domains** | **Array&lt;String&gt;** | The collection of allowed domains in the Content Security Policy (CSP). | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CspRequestsDto.new(
  domains: [example.com, trusted-site.com]
)
```
