# DocspaceApiSdk::ThumbnailsDataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original** | **String** | The thumbnail original photo. | [optional] |
| **retina** | **String** | The thumbnail retina. | [optional] |
| **max** | **String** | The thumbnail maximum size photo. | [optional] |
| **big** | **String** | The thumbnail big size photo. | [optional] |
| **medium** | **String** | The thumbnail medium size photo. | [optional] |
| **small** | **String** | The thumbnail small size photo. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThumbnailsDataDto.new(
  original: default_user_photo_size_1280-1280.png,
  retina: default_user_photo_size_360-360.png,
  max: default_user_photo_size_200-200.png,
  big: default_user_photo_size_82-82.png,
  medium: default_user_photo_size_48-48.png,
  small: default_user_photo_size_32-32.png
)
```
