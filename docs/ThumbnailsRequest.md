# DocspaceApiSdk::ThumbnailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tmp_file** | **String** | The path to the temporary thumbnail file. | [optional] |
| **x** | **Integer** | The thumbnail horizontal coordinate. | [optional] |
| **y** | **Integer** | The thumbnail vertical coordinate. | [optional] |
| **width** | **Integer** | The thumbnail width. | [optional] |
| **height** | **Integer** | The thumbnail height. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThumbnailsRequest.new(
  tmp_file: /tmp/photo_temp_123.jpg,
  x: 100,
  y: 50,
  width: 200,
  height: 200
)
```
