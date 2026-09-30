# DocspaceApiSdk::WhiteLabelItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**WhiteLabelLogoType**](WhiteLabelLogoType.md) | Which branding slot this entry describes. `Notification` is part of the type but never appears here: that  logo is derived from the login-page one and used only in letters. | [optional] |
| **name** | **String** | The stable name of the same slot, which is what `GET api/2.0/settings/whitelabel/logos/isdefault` keys its  entries by. It is a name to match on, not a file name. | [optional] |
| **size** | [**WhiteLabelItemSizeDto**](WhiteLabelItemSizeDto.md) | The pixel box the slot is drawn in. Only `width` and `height` carry information here; the resize flags and  offsets alongside them are left at their defaults and say nothing about how an uploaded image is treated. | [optional] |
| **path** | [**WhiteLabelItemPathDto**](WhiteLabelItemPathDto.md) | The absolute URLs to render the slot from, one per theme. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelItemDto.new(
  type: null,
  name: LightSmall,
  size: null,
  path: null
)
```
