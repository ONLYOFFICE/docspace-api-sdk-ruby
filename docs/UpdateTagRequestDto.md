# DocspaceApiSdk::UpdateTagRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **old_name** | **String** | The old tag name. |  |
| **new_name** | **String** | The new tag name. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateTagRequestDto.new(
  old_name: old-tag,
  new_name: new-tag
)
```
