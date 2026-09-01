# DocspaceApiSdk::PageableModificationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | The paginated modification data. | [optional] |
| **limit** | **Integer** | The maximum number of results returned per page. | [optional] |
| **last_modified_on** | **Time** | The date when the user consent was last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PageableModificationResponse.new(
  data: null,
  limit: null,
  last_modified_on: null
)
```
