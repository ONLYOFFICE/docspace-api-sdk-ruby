# DocspaceApiSdk::WhiteLabelItemPathDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **light** | **String** | The path to the light theme logo. | [optional] |
| **dark** | **String** | The path to the dark theme logo. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelItemPathDto.new(
  light: /images/logo-light.png,
  dark: /images/logo-dark.png
)
```
