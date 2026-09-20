# DocspaceApiSdk::LogoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tmp_file** | **String** | The picture to cut the logo out of, named by the path that `POST api/2.0/files/logos` returned for it. The  path may be used once and only by the account that uploaded it. |  |
| **x** | **Integer** | The left edge of the rectangle cut out of the uploaded picture, counted in pixels from its left side. The  picture itself was already scaled down to fit 1280 by 1280 pixels when it was uploaded. | [optional] |
| **y** | **Integer** | The top edge of the rectangle cut out of the uploaded picture, counted in pixels from its top. | [optional] |
| **width** | **Integer** | How wide a piece of the uploaded picture to cut out, in pixels. It has to be sent together with the height,  and the portal builds the four logo sizes out of the piece. | [optional] |
| **height** | **Integer** | How tall a piece of the uploaded picture to cut out, in pixels. It has to be sent together with the width. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LogoRequest.new(
  tmp_file: /temp/logo_a1b2c3.png,
  x: 0,
  y: 0,
  width: 300,
  height: 300
)
```
