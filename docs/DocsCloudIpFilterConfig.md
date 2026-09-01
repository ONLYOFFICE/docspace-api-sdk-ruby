# DocspaceApiSdk::DocsCloudIpFilterConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;DocsCloudIpFilterRule&gt;**](DocsCloudIpFilterRule.md) | The IP filter rules. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudIpFilterConfig.new(
  rules: [{address=127.0.0.1, allowed=true}]
)
```
