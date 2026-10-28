# DocspaceApiSdk::DocsCloudIpFilterConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rules** | [**Array&lt;DocsCloudIpFilterRuleDto&gt;**](DocsCloudIpFilterRuleDto.md) | The IP filter rules. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudIpFilterConfigDto.new(
  rules: [{address=127.0.0.1, allowed=true}]
)
```
