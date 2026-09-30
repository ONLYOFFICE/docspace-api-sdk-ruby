# DocspaceApiSdk::ReviewConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_display** | **String** | How the editors render tracked changes at first: with the markup, in a simplified markup, as the final text,  or as the original text. A session that may not write opens on the final text. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ReviewConfig.new(
  review_display: original
)
```
