# DocspaceApiSdk::CoversResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The cover unique identifier. |  |
| **data** | **String** | The cover image data. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CoversResultDto.new(
  id: cover-123,
  data: base64EncodedImageData
)
```
