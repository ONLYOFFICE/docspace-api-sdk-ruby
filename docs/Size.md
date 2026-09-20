# DocspaceApiSdk::Size

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | The height of the image in pixels, read from the stored file rather than from any display setting. | [optional] |
| **width** | **Integer** | The width of the image in pixels, read from the stored file rather than from any display setting. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Size.new(
  height: 1080,
  width: 1920
)
```
