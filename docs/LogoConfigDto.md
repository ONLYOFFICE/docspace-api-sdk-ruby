# DocspaceApiSdk::LogoConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** | The logo for the current layout and file type, as the portal branding defines it. | [optional] |
| **image_dark** | **String** | The variant for a dark interface theme. | [optional] |
| **image_light** | **String** | The variant for a light interface theme. | [optional] |
| **image_embedded** | **String** | The variant for the framed viewer. It is empty in every layout but the embedded one. | [optional] |
| **url** | **String** | Where clicking the logo takes the user. | [optional] |
| **visible** | **Boolean** | Whether the logo is shown at all; the mobile layout hides it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LogoConfigDto.new(
  image: https://portal.example.com/logo/editor.png,
  image_dark: https://portal.example.com/logo/editor-dark.png,
  image_light: https://portal.example.com/logo/editor-light.png,
  image_embedded: https://portal.example.com/logo/editor-embedded.png,
  url: https://portal.example.com,
  visible: true
)
```
