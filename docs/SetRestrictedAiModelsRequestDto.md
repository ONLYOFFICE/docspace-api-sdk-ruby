# DocspaceApiSdk::SetRestrictedAiModelsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **models** | **Array&lt;String&gt;** | The set of restricted AI model IDs. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetRestrictedAiModelsRequestDto.new(
  models: ["model1","model2"]
)
```
