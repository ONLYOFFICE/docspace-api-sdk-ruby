# DocspaceApiSdk::ThumbnailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tmp_file** | **String** | The temporary image to crop, as returned in the `data` of an upload made with `autosave` off. Only the file  name part of the value is used. Omit it to re-crop the photo the profile already has. | [optional] |
| **x** | **Integer** | The distance in pixels from the left edge of the original image to the left edge of the crop rectangle. | [optional] |
| **y** | **Integer** | The distance in pixels from the top edge of the original image to the top edge of the crop rectangle. | [optional] |
| **width** | **Integer** | The width of the crop rectangle in pixels. Passing 0 together with `height` and `tmpFile` keeps the whole  uploaded image instead of cropping it. | [optional] |
| **height** | **Integer** | The height of the crop rectangle in pixels. Passing 0 together with `width` and `tmpFile` keeps the whole  uploaded image instead of cropping it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThumbnailsRequest.new(
  tmp_file: photo_temp_123.jpg,
  x: 100,
  y: 50,
  width: 200,
  height: 200
)
```
