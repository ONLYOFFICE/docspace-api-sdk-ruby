# DocspaceApiSdk::ActionConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **String** | The anchor value produced by the editor, opaque to the portal: it names the comment, the mention or the  place the document is scrolled to. | [optional] |
| **type** | **String** | What the anchor points at, as the editor names it - a comment thread, for instance. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ActionConfig.new(
  data: section-42,
  type: comment
)
```
