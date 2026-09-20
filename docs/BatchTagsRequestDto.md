# DocspaceApiSdk::BatchTagsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **names** | **Array&lt;String&gt;** | The tags, by name: a tag has no identifier of its own, and the name is what links a room to it.  `GET api/2.0/files/tags` lists the names already in the portal catalogue. An empty list is accepted and does  nothing, while a blank or overlong entry makes the whole request invalid. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BatchTagsRequestDto.new(
  names: [Finance, 2026]
)
```
