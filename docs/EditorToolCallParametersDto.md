# DocspaceApiSdk::EditorToolCallParametersDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | What the generated fillable form should ask for, in the words the request was made in. |  |
| **topic** | **String** | What the generated presentation is about. | [optional] |
| **slide_count** | **String** | How many slides to generate, as the request spelled it. | [optional] |
| **style** | **String** | The visual style the slides should be generated in. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditorToolCallParametersDto.new(
  description: An employee onboarding form with name, start date and department,
  topic: Sales results for 2026,
  slide_count: 12,
  style: minimal
)
```
