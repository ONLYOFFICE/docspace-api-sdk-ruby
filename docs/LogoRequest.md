# DocspaceApiSdk::LogoRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tmp_file** | **String** | The path to the temporary image file. |  |
| **x** | **Integer** | The X coordinate of the rectangle starting point. | [optional] |
| **y** | **Integer** | The Y coordinate of the rectangle starting point. | [optional] |
| **width** | **Integer** | The rectangle width. | [optional] |
| **height** | **Integer** | The rectangle height. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LogoRequest.new(
  tmp_file: /tmp/logo.png,
  x: 0,
  y: 0,
  width: 100,
  height: 100
)
```
