# DocspaceApiSdk::DocsCloudIpFilterConfigRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;DocsCloudIpFilterRuleRequest&gt;**](DocsCloudIpFilterRuleRequest.md) | The IP filter rules. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudIpFilterConfigRequest.new(
  rules: [{address=127.0.0.1, allowed=true}]
)
```
