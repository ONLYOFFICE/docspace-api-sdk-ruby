# DocspaceApiSdk::SetMcpToolsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled_tools** | **Array&lt;String&gt;** | List of tool names to disable. Tools not included in this list will remain enabled. Pass an empty list to enable all tools. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetMcpToolsRequestBody.new(
  disabled_tools: ["tool1","tool2"]
)
```
