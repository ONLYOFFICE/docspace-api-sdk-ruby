# DocspaceApiSdk::PageableResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** |  | [optional] |
| **limit** | **Integer** | The page size that was applied to this request, between 1 and 50. | [optional] |
| **last_client_id** | **String** | The cursor to send back as last_client_id to ask for the next page, together with last_created_on. It is null when the page is empty. | [optional] |
| **last_created_on** | **Time** | The cursor to send back as last_created_on to ask for the next page, together with last_client_id. It is null when the page is empty. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PageableResponse.new(
  data: null,
  limit: 50,
  last_client_id: 6c7cf17b-1bd3-47d5-94c6-be2d3570e168,
  last_created_on: 2024-04-04T12:00:00Z
)
```
