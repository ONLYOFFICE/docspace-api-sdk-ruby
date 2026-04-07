# DocspaceApiSdk::LogoRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **light** | **String** | The URL or base64-encoded image data for the light theme logo. | [optional] |
| **dark** | **String** | The URL or base64-encoded image data for the dark theme logo. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LogoRequestsDto.new(
  light: data:image/png;base64,iVBORw0KGgoAAAANS...,
  dark: data:image/png;base64,iVBORw0KGgoAAAANS...
)
```
