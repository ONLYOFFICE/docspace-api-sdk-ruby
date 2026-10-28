# DocspaceApiSdk::GeneratePresentationToolCallParametersDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topic** | **String** | What the generated presentation is about. | [optional] |
| **slide_count** | **String** | How many slides to generate, as the request spelled it. | [optional] |
| **style** | **String** | The visual style the slides should be generated in. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GeneratePresentationToolCallParametersDto.new(
  topic: Sales results for 2026,
  slide_count: 12,
  style: minimal
)
```
