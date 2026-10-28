# DocspaceApiSdk::CoversResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The name of the cover, and the value to send as `cover` when a room is created or changed. The names are the  same on every portal and do not change with the language of the request. |  |
| **data** | **String** | The drawing itself, as inline vector markup ready to be rendered as it is. It is the default size of the  cover, and it may change between product versions while the name stays. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CoversResultDto.new(
  id: bookmark,
  data: <svg viewBox="0 0 32 32"><path d="M8 4h16v24l-8-6-8 6z"/></svg>
)
```
