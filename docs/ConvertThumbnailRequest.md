# DocspaceApiSdk::ConvertThumbnailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aspect** | **Integer** | The mode to fit the image to the height and width specified:  0 - stretch file to fit height and width;  1 - keep the aspect for the image;  2 - convert the metric size of the page into pixels at 96 dpi. | [optional] |
| **first** | **Boolean** | Whether a thumbnail is made of the first page only; false makes one of every page. | [optional] |
| **height** | **Integer** | The thumbnail height in pixels; not used with aspect 2. | [optional] |
| **width** | **Integer** | The thumbnail width in pixels; not used with aspect 2. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertThumbnailRequest.new(
  aspect: 1,
  first: true,
  height: 100,
  width: 100
)
```
