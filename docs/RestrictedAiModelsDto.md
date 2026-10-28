# DocspaceApiSdk::RestrictedAiModelsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **models** | **Array&lt;String&gt;** | The identifiers of the models the portal is not allowed to use. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RestrictedAiModelsDto.new(
  models: [gpt-4o, claude-3-opus]
)
```
