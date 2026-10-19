# DocspaceApiSdk::DocsCloudIpFilterRuleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The IP address. | [optional] |
| **allowed** | **Boolean** | Whether the IP address is allowed. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudIpFilterRuleRequest.new(
  address: 127.0.0.1,
  allowed: true
)
```
