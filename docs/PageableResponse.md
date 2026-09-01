# DocspaceApiSdk::PageableResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | The paginated data. | [optional] |
| **limit** | **Integer** | The maximum number of results returned per page. | [optional] |
| **last_client_id** | **String** | The identifier of the last retrieved client. | [optional] |
| **last_created_on** | **Time** | The creation date of the last retrieved client. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PageableResponse.new(
  data: null,
  limit: null,
  last_client_id: null,
  last_created_on: null
)
```
