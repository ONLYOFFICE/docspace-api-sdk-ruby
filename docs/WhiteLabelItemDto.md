# DocspaceApiSdk::WhiteLabelItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WhiteLabelLogoType**](WhiteLabelLogoType.md) |  | [optional] |
| **name** | **String** | The white label file name. | [optional] |
| **size** | [**IMagickGeometry**](IMagickGeometry.md) |  | [optional] |
| **path** | [**WhiteLabelItemPathDto**](WhiteLabelItemPathDto.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelItemDto.new(
  type: null,
  name: Example Name,
  size: null,
  path: null
)
```
