# DocspaceApiSdk::WhiteLabelItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WhiteLabelLogoType**](WhiteLabelLogoType.md) | The white label logo type. | [optional] |
| **name** | **String** | The white label file name. | [optional] |
| **size** | [**WhiteLabelItemSizeDto**](WhiteLabelItemSizeDto.md) | The white label file size. | [optional] |
| **path** | [**WhiteLabelItemPathDto**](WhiteLabelItemPathDto.md) | The white label file path. | [optional] |

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
