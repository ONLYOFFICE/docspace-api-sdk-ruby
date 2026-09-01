# DocspaceApiSdk::IsDefaultWhiteLabelLogosDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The white label logo name. |  |
| **default** | **Boolean** | Specifies if the white label logo is default or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IsDefaultWhiteLabelLogosDto.new(
  name: logo_light,
  default: true
)
```
