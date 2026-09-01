# DocspaceApiSdk::UsageSpaceStatItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The item name. | [optional] |
| **icon** | **String** | The item icon path. | [optional] |
| **disabled** | **Boolean** | Specifies if the item is disabled or not. | [optional] |
| **size** | **String** | The item used space. | [optional] |
| **url** | **String** | The item URL. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UsageSpaceStatItemDto.new(
  name: Item name,
  icon: Item icon path,
  disabled: true,
  size: 0 Byte,
  url: Item url
)
```
