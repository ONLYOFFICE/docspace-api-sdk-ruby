# DocspaceApiSdk::AiImagePrice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The price of a single prompt token. | [optional] |
| **completion** | **Float** | The cost associated with the completion of a prompt in an AI model. | [optional] |
| **image** | **Float** | The price of a single generated image. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiImagePrice.new(
  prompt: 1.0E-5,
  completion: 1.0E-5,
  image: 0.04
)
```
