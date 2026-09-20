# DocspaceApiSdk::PageableModificationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** |  | [optional] |
| **limit** | **Integer** | The page size that was applied to this request, between 1 and 50. | [optional] |
| **last_modified_on** | **Time** | The cursor to send back as last_modified_on to ask for the next page. It is null when the page is empty. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PageableModificationResponse.new(
  data: null,
  limit: 50,
  last_modified_on: 2024-04-04T12:00:00Z
)
```
