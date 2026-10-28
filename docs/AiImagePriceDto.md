# DocspaceApiSdk::AiImagePriceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The cost of one million tokens sent to the image model, which is the prompt describing the picture. | [optional] |
| **completion** | **Float** | The cost of one million tokens the image model writes back alongside the picture. | [optional] |
| **image** | **Float** | The cost of one produced image, charged on top of the token amounts above. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiImagePriceDto.new(
  prompt: 8.0,
  completion: 15.0,
  image: 30.0
)
```
