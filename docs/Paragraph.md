# DocspaceApiSdk::Paragraph

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **align** | **Integer** | The paragraph align. | [optional] |
| **runs** | [**Array&lt;Run&gt;**](Run.md) | The list of text runs from the paragraph. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Paragraph.new(
  align: 2,
  runs: [{"fill":[124,124,124],"text":"CONFIDENTIAL","fontSize":26}]
)
```
