# DocspaceApiSdk::LogoConfigDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image** | **String** | The image of the logo. | [optional] |
| **image_dark** | **String** | The dark image of the logo. | [optional] |
| **image_light** | **String** | The light image of the logo. | [optional] |
| **image_embedded** | **String** | The embedded image of the logo. | [optional] |
| **url** | **String** | The url link of the logo. | [optional] |
| **visible** | **Boolean** | Specifies if the logo is visible. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LogoConfigDto.new(
  image: http://localhost/logo.png,
  image_dark: http://localhost/logo-dark.png,
  image_light: http://localhost/logo-light.png,
  image_embedded: http://localhost/logo-embedded.png,
  url: http://localhost,
  visible: true
)
```
