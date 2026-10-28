# DocspaceApiSdk::GenerateFormToolCallParametersDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | What the generated fillable form should ask for, in the words the request was made in. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GenerateFormToolCallParametersDto.new(
  description: An employee onboarding form with name, start date and department
)
```
