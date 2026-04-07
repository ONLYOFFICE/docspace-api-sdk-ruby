# DocspaceApiSdk::VectorizationStartRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | **Array&lt;Integer&gt;** | The set of file identifiers to submit for vectorization. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::VectorizationStartRequestBody.new(
  files: [101,102,103]
)
```
