# DocspaceApiSdk::BatchTagsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | **Array&lt;String&gt;** | The list of tag names. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BatchTagsRequestDto.new(
  names: ["tag1","tag2","tag3"]
)
```
