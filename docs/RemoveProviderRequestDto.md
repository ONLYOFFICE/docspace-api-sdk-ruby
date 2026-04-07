# DocspaceApiSdk::RemoveProviderRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;Integer&gt;** | The set of AI provider identifiers to delete. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RemoveProviderRequestDto.new(
  ids: [1,2,3]
)
```
